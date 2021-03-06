declare -i total=0
declare -i incorrect=0

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

for i in bounce_no_bounce/*_ac.java; do
    [ -f "$i" ] || break
    let "total=total+1"
    echo "========$i========"
    java miniJava.Compiler $i
    ec=$?
    if [ "$ec" -ne 0 ]; then
        echo "${red} $i not passed: $ec ${reset}"
        let "incorrect=incorrect+1"
    fi
    # echo "================="
done

for i in bounce_no_bounce/*_wa.java; do
    [ -f "$i" ] || break
    let "total=total+1"
    echo "=======$i========"
    java miniJava.Compiler $i
    ec=$?
    if [ "$ec" -ne 4 ]; then
        echo "${red} $i not passed: $ec ${reset}"
        let "incorrect=incorrect+1"
    fi
    # echo "================="
done

echo "Failed Tests: $incorrect, Total $total"