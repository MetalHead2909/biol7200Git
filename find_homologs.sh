query_file=$1
subject_file=$2
output_file=$3

tblastn -query $query_file -subject $subject_file -task tblastn -outfmt '6 std sseq' -gapopen 6 -gapextend 2 -qcov_hsp_perc 90 -out $output_file

wc -l $output_file | awk '{print $1}'
