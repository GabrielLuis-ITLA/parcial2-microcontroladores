
# Added by cfg_resolve west command
mcux_add_include(
	BASE_PATH ${CMAKE_CURRENT_LIST_DIR}
	INCLUDES board
)

# Added by cfg_resolve west command
mcux_add_source(
	BASE_PATH ${CMAKE_CURRENT_LIST_DIR}
	SOURCES board/peripherals.c
			board/peripherals.h
)
