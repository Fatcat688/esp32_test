if(IDF_TARGET STREQUAL "esp32s2")
    idf_component_register(SRCS "touch_matrix_example_main.c"
                            INCLUDE_DIRS ".")
else()
    message(FATAL_ERROR "Touch matrix example only available on esp32s2 now")
endif()
