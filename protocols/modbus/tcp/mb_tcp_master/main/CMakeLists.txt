set(PROJECT_NAME "modbus_tcp_master")

idf_component_register(SRCS "tcp_master.c"
                        INCLUDE_DIRS ".")
