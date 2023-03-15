
cd /home/larrydong/codeGit/propheseeExternalTrigger/hal_viewer/build
./metavision_hal_viewer -o xxx.raw

STOP: ctrl+C 


2(optional) check the data.
metavision_raw_info -i <path/to/xxx.raw>

3. decode

cd /home/larrydong/codeGit/propheseeExternalTrigger/metavision_evt3_raw_file_decoder/build
./metavision_evt3_raw_file_decoder /home/larrydong/codeGit/propheseeExternalTrigger/hal_viewer/build/xxx.raw events.csv triggers.csv

./home/larrydong/codeGit/propheseeExternalTrigger/hal_viewer/build/metavision_hal_viewer -o xx

