#!/bin/bash

# Midabada
GREEN='\033[0;32m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m' # Reset color

clear
echo -e "${CYAN}"
echo "=============================================="
echo "        Osama Wi-Fi Attack Toolkit"
echo "        Scripted & Developed by Osama biladi"
echo "=============================================="
echo -e "${NC}"
echo "✅ Tool-kaan waxa uu kuu sahlayaa inaad si fudud"
echo "   ugu isticmaasho Airgeddon, Wifite2 & Fluxion"
echo ""

# Auto-clone tools
echo -e "${GREEN}[*] Hubinaya tools-ka...${NC}"

if [ ! -d "airgeddon" ]; then
  echo "[+] Soo dejinaya Airgeddon..."
  git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
fi

if [ ! -d "wifite" ]; then
  echo "[+] Soo dejinaya Wifite2..."
  git clone https://github.com/derv82/wifite2.git wifite
fi

if [ ! -d "fluxion" ]; then
  echo "[+] Soo dejinaya Fluxion..."
  git clone https://github.com/FluxionNetwork/fluxion.git
fi

# Menu
echo -e "${CYAN}"
echo "Dooro tool-ka aad rabto:"
echo "1. Airgeddon"
echo "2. Wifite2"
echo "3. Fluxion"
echo "4. Exit"
echo -e "${NC}"
read -p "Doorashadaada (1-4): " choice

case $choice in
  1)
    echo -e "${GREEN}[*] Furaya Airgeddon...${NC}"
    sudo bash ./airgeddon/airgeddon.sh
    ;;
  2)
    echo -e "${GREEN}[*] Furaya Wifite2...${NC}"
    sudo python3 ./wifite/wifite.py
    ;;
  3)
    echo -e "${GREEN}[*] Furaya Fluxion...${NC}"
    cd ./fluxion && sudo bash fluxion.sh
    ;;
  4)
    echo -e "${CYAN}Mahadsanid. Ilaali sharciyada iyo anshaxa!${NC}"
    echo -e "${GREEN}Tool-kaan waxaa sameeyay Osama."
    echo -e "Instagram: https://instagram.com/@bil_ladi"
    echo -e "Facebook: https://facebook.com/Osama Biladi"
    echo -e "GitHub: https://github.com/osama-security"
    echo -e "${NC}"
    exit 0
    ;;
  *)
    echo -e "${RED}[!] Xulasho khaldan.${NC}"
    ;;
esac
