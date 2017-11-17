#!/bin/bash
hostname `cat /tmp/hostname`
cat /tmp/hostname > /etc/hostname
service network restart