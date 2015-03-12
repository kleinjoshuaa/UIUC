#!/bin/bash
echo \[id\]
id
echo \[pwd\]
pwd
echo \[ls -l /proc/\$\$/fd\]
ls -l /proc/$$/fd
echo \[echo \$\*\]
echo $*
echo \[echo \`cat\`\]
args=
while read arg ; do
	args="${args:+$args }$arg"
done
echo "$args"
# Note: D-Bus will truncate this string at the first zero byte.
echo \[cat /proc/\$\$/cmdline\]
cat /proc/$$/cmdline
echo ""
