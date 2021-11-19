#!/usr/bin/env bash

OWNER=0xd24BD0D0bF4E30e91cE904f4DCD400b8dA06a1bf

HOLON=$(dapp create HolonToken $OWNER)
! dapp verify-contract src/HolonToken.sol:HolonToken $HOLON $OWNER
