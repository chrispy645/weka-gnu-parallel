trainfile=$1
C_param=$2
M_param=$3

echo $WGP_SCRIPT

echo
echo "###################"
echo $HOSTNAME
pwd
echo "###################"
echo

cd $(dirname ${WGP_SCRIPT})

java -cp weka.jar weka.classifiers.trees.J48 -C $C_param -M $M_param -t $trainfile
