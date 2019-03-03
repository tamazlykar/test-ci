#!/bin/bash

set -e

echo "CI type ${CI_TYPE}"

echo "check allowed types \n"

if [[ "$CI_TYPE" =~ ^(MASTER|PR|ON_DEMAND|RELEASE)$ ]]; then
  echo "OK\n"
else
  echo "not Ok\n"
  exit 1;
fi

echo "First check"

if [[ "$CI_TYPE" == "MASTER" ]]; then
  echo "Master"
fi

if [[ "$CI_TYPE" == "RELEASE" ]]; then
  echo "RELEASE"
fi

if [[ "$CI_TYPE" == "PR" ]]; then
  echo "PR"
fi

if [[ "$CI_TYPE" == "ON_DEMAND" ]]; then
  echo "ON_DEMAND"
fi

echo "\n"

echo "Multiple condidionals"

if [[ "$CI_TYPE" == "MASTER" ]] && [[ "$CI_TYPE" == "PR" ]]; then
  echo "MAster or PR"
fi

if [[ "$CI_TYPE" == "MASTER" ]] && [[ "$CI_TYPE" == "PR" ]] &&  [[ "$CI_TYPE" == "ON_DEMAND" ]]; then
  echo "Master or PR or On Demand"
fi
