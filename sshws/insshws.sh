#!/bin/bash
#installer Websocker tunneling

cd

#Install Script Websocket-SSH Python
wget -O /usr/local/bin/ws-dropbear https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/ws-dropbear
wget -O /usr/local/bin/ws-stunnel https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/ws-stunnel
wget -O /usr/local/bin/ws-stunnel https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/ws-ovpn.py
#izin permision
chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-stunnel
chmod +x /usr/local/bin/ws-ovpn.py
#System Dropbear Websocket-SSH Python
wget -O /etc/systemd/system/ws-dropbear.service https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/service-wsdropbear && chmod +x /etc/systemd/system/ws-dropbear.service

#System SSL/TLS Websocket-SSH Python
wget -O /etc/systemd/system/ws-stunnel.service https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/ws-stunnel.service && chmod +x /etc/systemd/system/ws-stunnel.service

#System SSL/TLS Websocket-ovpn Python
wget -O /etc/systemd/system/ws-stunnel.service https://raw.githubusercontent.com/Tarap-Kuhing/tarap/main/sshws/ws-ovpn.service && chmod +x /etc/systemd/system/ws-ovpn.service

#restart service
systemctl daemon-reload

#Enable & Start & Restart ws-dropbear service
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service

#Enable & Start & Restart ws-openssh service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service

#Enable & Start & Restart ws-ovpn.service
systemctl enable ws-ovpn.service
systemctl start ws-ovpn.service
systemctl restart ws-ovpn.service
