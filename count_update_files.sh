:

function file_exists() {
	if [ ! -f $source_dir/$1 ] ; then
		echo '***' file $1 is missing!!! ABORT!
		exit -1
	fi
}

default_dir=/opt/lampp/htdocs/execute-update/send-this
source_dir=${1-$default_dir}

for F in $( ls -1 $source_dir/20[0-9][0-9]-[0,1][0-9]-[0-3][0-9]-[0-2][0-9]-[0-6][0-9]-[0-6][0-9]*\.* | xargs -n1 basename | cut -d. -f1 | sort -u)
do
	echo '***' processing update set $F
	file_exists $F.rar
	file_exists $F.id
	file_exists $F.mvg
done

sync=/DMDS/sync-it.sh
[ -f $sync ] && $sync

