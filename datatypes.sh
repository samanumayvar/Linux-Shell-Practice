#!/bin/bash
NUM1=10
NUM2=20
SUM=$((NUM1 + NUM2))
echo "The sum of $NUM1 and $NUM2 is: $SUM"
DIFF=$((NUM1 - NUM2))
echo "The difference between $NUM1 and $NUM2 is: $DIFF"
MOVIES ="Inception, The Matrix, Interstellar"
echo "My favorite movies are: $MOVIES"
echo "First movie is: ${MOVIES[0]}"
echo "Second movie is: ${MOVIES[1]}"
echo "Third movie is: ${MOVIES[2]}"
echo "Number of movies are: ${#MOVIES[@]}" 