trainfile=$1
C_param=$2
M_param=$3

cd $WGP_EXPERIMENT_DIR

echo
echo "###################"
echo $HOSTNAME
pwd
echo "###################"
echo

java -cp weka.jar weka.classifiers.trees.J48 -C $C_param -M $M_param -t $trainfile
