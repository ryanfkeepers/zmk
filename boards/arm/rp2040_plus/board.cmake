# Copyright (c) 2025 David Schneider
# SPDX-License-Identifier: Apache-2.0

board_runner_args(uf2 "--board-id=RPI-RP2")

include(${ZEPHYR_BASE}/boards/common/uf2.board.cmake)

# Add repo-local devicetree include root so that:
# #include <raspberrypi/rpi_pico/rp2040.dtsi>
# works
get_filename_component(REPO_ROOT ${CMAKE_CURRENT_LIST_DIR}/../../.. ABSOLUTE)
list(APPEND DTC_INCLUDE_DIRS ${REPO_ROOT}/dts/arm)
