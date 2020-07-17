#!/bin/bash

# Scilla Installation Script
# Script written by Pavon Dunbar
# July 17, 2020

# Install Git
sudo apt install git -y

# Clone Scilla Source Code
git clone --jobs 4 --recurse-submodules https://github.com/Zilliqa/scilla/

# Build Prerequisites
sudo add-apt-repository ppa:tah83/secp256k1 -y
sudo add-apt-repository -y ppa:avsm/ppa
sudo apt-get update -y
sudo apt-get install -y curl build-essential m4 ocaml opam pkg-config zlib1g-dev libgmp-dev libffi-dev libssl-dev libboost-system-dev libsecp256k1-dev libpcre3-dev cmake

# Initialize Opam After Installation Above
opam init --compiler=4.07.1 --yes

# Setup Shell To Work With Opam
eval $(opam env)

# Check System Level Dependencies
opam pin add . --no-action --yes
opam depext
opam pin remove scilla

# Pin Scilla
opam pin add scilla git+https://github.com/Zilliqa/scilla#master --yes

# Install Scilla From Repo
cd scilla
git checkout master
opam install ./scilla.opam

# Build Project From Root
make
make install

# Run Binary By Evaluating Closed Expression
eval-runner -gaslimit 10000 -libdir src/stdlib tests/eval/good/let.scilexp

# Type Check Sample Scilla Auction Contract
scilla-checker -gaslimit 10000 -libdir src/stdlib tests/contracts/auction.scilla

# Test Sample Crowdfunding Scilla Contract (Should Have JSON Output)
./easyrun.sh crowdfunding 1

echo "Installation complete. Enjoy Scilla!"
