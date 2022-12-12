cat test.json >> testCache/cache.json

changes=$(git diff test.json)
#if there are changes to log_list.json or if prioritizeLogList.py is newer than enhanced_log_list - ie. there are changes to prioritizeLogList.py that aren't in enhanced_log_list
if [[ -n "$changes" ]] || [[ /scripts/prioritizeLogList.py -nt src/main/resources/enhanced_log_list.json ]]; then
	echo "*** CHANGES FOUND ***"

	exit 0
else
	exit 1
fi