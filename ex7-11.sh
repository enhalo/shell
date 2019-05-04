#!/bin/bash

#  Tips:
#  if you're unsure how a centain condition might evaluate,
#+ test it in an if-test

echo

echo "Testing \"0\""
if [ 0 ]      # zero
then 
  echo "0 is true."
else	      # Or else ...
  echo "0 is false"
fi	      # 0 is true

echo

echo "Testing \"1\""
if [ 1 ]      # one
then
  echo "1 is true"
else
  echo "1 is false."
fi	      # 1 is true

echo

echo "Testing \"-1\""
if [ -1 ]     # minus one
then 
  echo "-1 is true."
else
  echo "-1 is false"
fi           # -1 is true

echo

echo "Testing \"NULL\""
if [ ]        # NULL (empty condition)
then
  echo "NULL is true"
else
  echo "NULL is false."
fi            # NULL is false

echo

echo "Testing \"xyz\""
if [ xyz ]
then
  echo "Random string is true"
else
  echo "Random string is false."
fi           # Random string is true.

echo

echo "Testing \"$xyz"\""



