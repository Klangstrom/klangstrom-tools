# Updating Klangstrom for Arduino

## `update-klangstrom-for-arduino-tools.sh`

copy tools from `klangstrom-tools` and `klangstrom-stm32-standalone/tools` to `klangstrom-arduino/tools`

### from `klangstrom-stm32-standalone/tools`

- append-board-variant-definition.sh
- klangstrom-libraries.txt
- klst-update-libraries.sh
- klst-update-variants.sh
- link_libraries.sh
- link_variant_files.sh
- stm32duino.config

### from `klangstrom-tools`

- klst-serialmonitor
- klst-sketch

## `update-klangstrom-for-arduino-repositories.sh`

update `klangstrom-arduino/libraries` from repository

## `update-klangstrom-for-arduino-variants.sh`

copy `klangstrom-stm32-standalone/variants` to `klangstrom-arduino/variants`
