#!/usr/bin/env sh

set -eoux pipefail

telnet-enable2.py "${ROUTER_IP}" "${ROUTER_MAC_ADDRESS}" "${ADMIN_USER}" "${ADMIN_PASSWORD}"

if [ "${REBOOT}" = "true" ]; then
    reboot-router.exp
fi