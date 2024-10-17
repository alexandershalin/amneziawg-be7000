#!/bin/sh

# Remove AmneziaWG zone from firewall
uci delete firewall.awg

# Remove forwarding rules for AmneziaWG
for rule in $(uci show firewall | grep "@forwarding" | grep -E "src='awg'|dest='awg'" | cut -d'.' -f2 | cut -d'=' -f1); do
    uci delete firewall.$rule
done

# Commit changes
uci commit firewall

# Reload firewall to apply changes
/etc/init.d/firewall reload
