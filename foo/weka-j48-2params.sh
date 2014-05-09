trainfile=$1
C_param=$2
M_param=$3

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
