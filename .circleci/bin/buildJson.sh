#!/usr/bin/env bash


NO_PROMOTE=$(cat is-no-promote)
echo '{ "is-no-promote": '$NO_PROMOTE' }' >> test.json
