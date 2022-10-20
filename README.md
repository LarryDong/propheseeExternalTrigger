
# Prophesee Trigger Record & Extraction

EVK1, Gen4 HD.  
A collection of codes. All of them are modified from prophesee-ai.

## Compile

1. Compile modified `metavision_hal_viewer` with `trigger_in` enabled:

EVK1 Gen4 HD's trigger_in is disabled by default. Enable it by:  
In line 182, `i_trigger_in->enable(1)` is added and trigger out are removed.  
`metavision_hal_viewer.cpp` is part of prophesee's released code. metavisio_SDK should be installed before.


2. Compile `metavisioN_evt3_raw_file_decorder` to extract CD events and triggers from the raw file:

## Usage
1. Record a raw file with trigger in enabled:
```bash
./metavision_hal_viewer [-o <output_filename.raw>]
```
When receiving the trigger, the CMD would output 'Trigger <timestamp> id p', where `p` is the rising/falling edge.

2. View raw file:
run `metavision_raw_info` to view the details of a raw file:
```bash
metavision_raw_info -i <path/to/xxx.raw>
```
The output would include the details CD events & External triggers.

3. Extract triggers
```bash
./metavision_evt3_raw_file_decoder <path/to/xxx.raw> output.csv [triggers.csv]
```
This would extract CD events & triggers from a raw file.


