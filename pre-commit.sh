#!/usr/bin/env bash
python3 tests.py
if [ $? != 0 ]; then
echo "Test has failed. Don't commit broken code"
echo "Fix it please"
exit 1
fi