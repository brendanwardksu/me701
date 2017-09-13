#!/bin/bash

a=$(ls -l | grep ^- | wc -l)
b=$(ls -l | grep ^d | wc -l)

echo There are $a files and $b subdirectories in the current working directory.
