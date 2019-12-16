#!/bin/bash
 
# echo "Total Param= $#,  PROG: $0, param1 = $1, param2 = $2";

# ## 파라미터가 없으면 종료 
# if [ "$#" -lt 1 ]; then
#     echo "$# is Illegal number of parameters."
#     echo "Usage: $0 [options]"
#     exit 1
# fi
# args=("$@")
 
# ## for loop 를 파라미터 갯수만큼 돌리기 위해 three-parameter loop control 사용
# for (( c=0; c<$#; c++ ))
# do
#     echo "$c th parameter = ${args[$c]}";
# done

function  usage {
   echo "USAGE: $0 param..";
   exit 0;
}

PARAM="p:n:ouh";

while getopts $PARAM opt; do
  case $opt in
    p)
        echo "-p option was supplied. OPTARG: $OPTARG" >&2
        OPT_P=$OPTARG;
        ;;
    n)
        echo "-n option was supplied. OPTARG: $OPTARG" >&2
        OPT_N=$OPTARG;
        ;;
    o)
        echo "-o option was supplied." >&2
        ;;
    u)
        echo "-u option was supplied." >&2
        ;;
    h)
        usage;
         ;;
    *)
         ## default
         usage;
         exit 1;
         
  esac
done

## 저장된 optarg
echo "$OPT_P,$OPT_N";