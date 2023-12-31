/* Flash encryption Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "soc/efuse_reg.h"
#include "esp_efuse.h"
#include "esp_system.h"
#include "esp_spi_flash.h"
#include "esp_partition.h"
#include "esp_flash_encrypt.h"
#include "esp_efuse_table.h"
#include "nvs_flash.h"

static void example_print_chip_info(void);
static void example_print_flash_encryption_status(void);
static void example_read_write_flash(void);

static const char* TAG = "example";

#if CONFIG_IDF_TARGET_ESP32
#define TARGET_CRYPT_CNT_EFUSE  ESP_EFUSE_FLASH_CRYPT_CNT
#define TARGET_CRYPT_CNT_WIDTH  7
#else
#define TARGET_CRYPT_CNT_EFUSE ESP_EFUSE_SPI_BOOT_CRYPT_CNT
#define TARGET_CRYPT_CNT_WIDTH  3
#endif

void app_main(void)
{
    printf("\nExample to check Flash Encryption status\n");

    example_print_chip_info();
    example_print_flash_encryption_status();
    example_read_write_flash();
    /* Initialize the default NVS partition */
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK(ret);
}


static void example_print_chip_info(void)
{
    /* Print chip information */
    esp_chip_info_t chip_info;
    esp_chip_info(&chip_info);
    printf("This is %s chip with %d CPU core(s), WiFi%s%s, ",
            CONFIG_IDF_TARGET,
            chip_info.cores,
            (chip_info.features & CHIP_FEATURE_BT) ? "/BT" : "",
            (chip_info.features & CHIP_FEATURE_BLE) ? "/BLE" : "");

    unsigned major_rev = chip_info.full_revision / 100;
    unsigned minor_rev = chip_info.full_revision % 100;
    printf("silicon revision v%d.%d, ", major_rev, minor_rev);

    printf("%dMB %s flash\n", spi_flash_get_chip_size() / (1024 * 1024),
            (chip_info.features & CHIP_FEATURE_EMB_FLASH) ? "embedded" : "external");
}


static void example_print_flash_encryption_status(void)
{
    uint32_t flash_crypt_cnt = 0;
    esp_efuse_read_field_blob(TARGET_CRYPT_CNT_EFUSE, &flash_crypt_cnt, TARGET_CRYPT_CNT_WIDTH);
    printf("FLASH_CRYPT_CNT eFuse value is %d\n", flash_crypt_cnt);

    esp_flash_enc_mode_t mode = esp_get_flash_encryption_mode();
    if (mode == ESP_FLASH_ENC_MODE_DISABLED) {
        printf("Flash encryption feature is disabled\n");
    } else {
        printf("Flash encryption feature is enabled in %s mode\n",
            mode == ESP_FLASH_ENC_MODE_DEVELOPMENT ? "DEVELOPMENT" : "RELEASE");
    }
}


static void example_read_write_flash(void)
{
    const esp_partition_t* partition = esp_partition_find_first(
        ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_ANY, "storage");
    assert(partition);

    printf("Erasing partition \"%s\" (0x%x bytes)\n", partition->label, partition->size);

    ESP_ERROR_CHECK(esp_partition_erase_range(partition, 0, partition->size));

    /* Generate the data which will be written */
    const size_t data_size = 32;
    uint8_t plaintext_data[data_size];
    for (uint8_t i = 0; i < data_size; ++i) {
        plaintext_data[i] = i;
    }

    printf("Writing data with esp_partition_write:\n");
    ESP_LOG_BUFFER_HEXDUMP(TAG, plaintext_data, data_size, ESP_LOG_INFO);
    ESP_ERROR_CHECK(esp_partition_write(partition, 0, plaintext_data, data_size));

    uint8_t read_data[data_size];
    printf("Reading with esp_partition_read:\n");
    ESP_ERROR_CHECK(esp_partition_read(partition, 0, read_data, data_size));
    ESP_LOG_BUFFER_HEXDUMP(TAG, read_data, data_size, ESP_LOG_INFO);

    printf("Reading with spi_flash_read:\n");
    ESP_ERROR_CHECK(spi_flash_read(partition->address, read_data, data_size));
    ESP_LOG_BUFFER_HEXDUMP(TAG, read_data, data_size, ESP_LOG_INFO);
}
