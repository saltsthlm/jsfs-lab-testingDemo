#!/usr/bin/env zsh

# cd to the location of the script
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

cd $SCRIPTPATH/mocha-test-setup
  echo "Verifying mocha-test-setup"

  installresult=$(npm i --silent)
  if [[ "$installresult" == *"high"* ]]
  then
    echo "Installation verified - NOT OK"
    echo $installresult
    exit 1
  fi

  testresult=$(npm t)
  if [[ "$testresult" != *"2 failing"* ]]
  then
    echo "Tests verified - NOT OK"
    echo $testresult
    exit 1
  fi

cd $SCRIPTPATH/jest-test-setup
  echo "Verifying jest test-setup"

  installresult=$(npm i --silent)
  if [[ "$installresult" == *"high"* ]]
  then
    echo "Installation verified - NOT OK"
    echo $installresult
    exit 1
  fi

  testresult=$(npm t -- --json)
  if [[ "$testresult" != *"failed"* ]]
  then
    echo "Tests verified - NOT OK"
    echo $testresult
    exit 1
  fi

# cd back to where we came from
cd $SCRIPTPATH

echo "Installation, linting and testing verified - OK"

exit 0