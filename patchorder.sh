#!/usr/bin/env sh

echo This is the order you should apply the patches:
echo This is only a suggestion i dont know if this actially helps but it does make the patc conflicts consistent

wc -l ./patches/* | sort -n
