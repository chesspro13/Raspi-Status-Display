#!/bin/bash

systemctl stop display.service
rm /etc/systemd/system/display.service
systemctl daemon-reload
