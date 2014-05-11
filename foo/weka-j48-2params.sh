arr=($1)

trainfile=${arr[0]}
C_param=${arr[1]}
M_param=${arr[2]}

cd $(dirname ${WGP_SCRIPT})

echo
echo "###################"
echo $HOSTNAME
pwd
echo $trainfile
echo $C_param
echo $M_param
echo "###################"
echo


java -cp weka.jar weka.classifiers.trees.J48 -C $C_param -M $M_param -t $trainfile
