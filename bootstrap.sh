#!/usr/bin/env bash

sudo apt-get update -y
sudo apt install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt update -y
sudo apt install ansible htop -y
