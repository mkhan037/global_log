APPNO=$1
MEM='4G'

for FRAC in 0.2 0.4 0.6 0.8
do
	for RATIO in 2 5 8 11
	do
		bash thoth-run.sh $APPNO $MEM $FRAC $RATIO
		((APPNO++))
	done
done
