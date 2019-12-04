#!/bin/bash -x

function oper1 ()
{
	z=$(( $1	 + $2 * $3 ))
	echo "Result of first operation: $z"
}

function oper2 ()
{
	z=$(( $1 % $2 + $3 ))
	echo "Result of second operation: $z"
}

function oper3 ()
{
	z=$(( $3 + $1 / $2 ))
	echo "Result if third operastion: $z"
}

function oper4 ()
{
	Z=$(( $1 * $2 + $3 ))
	echo "Result of forth operation: $z"
}

read -p "Enter first Number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c

oper1 a b c
oper2 a b c
oper3 a b c
oper4 a b c




