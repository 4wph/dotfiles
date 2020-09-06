#!/bin/bash

while IFS=/ read junk name
do
    cp ~/$name ./$name
done < <(find -type f -not -path "./.git/*")
