# AmneziaWG for Xiaomi Router BE7000

This script forwards all traffic from the guest network to the AmneziaWG server.\
Tested with firmware Version: 1.1.16

1. Install [AmneziaWG](https://amnezia.org/ru/self-hosted) onto your VPS.
2. Connect to your brand new AmneziaWG server using the Amnezia client.
3. In the client create a new connection for your router, and save the config in _AmneziaWG native format_. It is supposed that the name of the file will be `amnezia_for_awg.conf`.
4. [Enable SSH](https://github.com/openwrt-xiaomi/xmir-patcher) on your router.
5. SSH to your router and create a `/data/usr/app/awg` directory.
6. Put `amnezia_for_awg.conf` into this directory (copy it to your router via Samba e.g.).
7. On the router execute the following command: `curl -L -o awg_setup.sh https://github.com/alexandershalin/amneziawg-be7000/raw/refs/heads/main/awg_setup
.sh`
8. Make the downloaded script executable: `chmod +x awg_setup.sh`
9. Run the script: `./awg_setup.sh`
10. Now, the guest network should be connected to your AmneziaWG server before the router reboots.

Binaried built from official sources: https://github.com/amnezia-vpn/

Useful links:
https://github.com/itdoginfo/domain-routing-openwrt


