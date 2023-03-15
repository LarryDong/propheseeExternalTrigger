num=5
# for num in {1..8}  
# do
#     # decodee
    filename=/home/larrydong/codeGit/propheseeExternalTrigger/output/$num.raw
    echo "decoding $filename"
    cd /home/larrydong/codeGit/propheseeExternalTrigger/metavision_evt3_raw_file_decoder/build/
    ./metavision_evt3_raw_file_decoder filename event_$num.csv trigger_$num.csv
    mv event_$num.csv trigger_$num.csv /home/larrydong/codeGit/propheseeExternalTrigger/output
    echo "done"
# done


# record