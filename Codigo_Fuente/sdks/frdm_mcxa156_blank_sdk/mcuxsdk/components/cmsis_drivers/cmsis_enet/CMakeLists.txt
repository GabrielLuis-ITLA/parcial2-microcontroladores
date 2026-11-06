if(CONFIG_MCUX_COMPONENT_driver.cmsis_enet)
    mcux_component_version(2.4.0)

    mcux_add_source(
        SOURCES
        fsl_enet_cmsis.h
        fsl_enet_cmsis.c
    )

    mcux_add_include(INCLUDES .)

endif()
