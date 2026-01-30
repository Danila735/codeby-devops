#!/bin/bash
set -e
wget https://dl.grafana.com/grafana-enterprise/release/12.3.1+security-01/grafana-enterprise_12.3.1+security-01_21389965441_linux_amd64.deb
dpkg -i grafana-enterprise_12.3.1+security-01_21389965441_linux_amd64.deb
