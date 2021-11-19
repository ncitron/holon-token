#!/usr/bin/env bash

OWNER=0xd24BD0D0bF4E30e91cE904f4DCD400b8dA06a1bf

#HOLON=$(dapp create HolonToken $OWNER)
! dapp verify-contract src/HolonToken.sol:HolonToken 0x3c2e12f800D893B5A417cc3a1C5E412F0f38F80f $OWNER