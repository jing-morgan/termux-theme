#!/bin/bash
# ================================
# TEAM JING MORGAN
# BRUTAL HACKER THEME (RED & BLACK)
# ================================

clear
echo "Installing TEAM JING MORGAN Brutal Hacker Theme..."

# Update & install tools
pkg update -y
pkg install figlet toilet nano -y

# Backup bashrc
if [ -f ~/.bashrc ]; then
    cp ~/.bashrc ~/.bashrc.backup
fi

# Create brutal banner
cat > ~/.jing_brutal <<'EOF'
#!/bin/bash
clear
echo -e "\e[1;31m"
toilet -f big "TEAM JING"
toilet -f big "MORGAN"
echo -e "\e[0;31m===================================="
echo -e "        TEAM JING MORGAN"
echo -e "      BRUTAL HACKER MODE"
echo -e "===================================="
echo -e "User : $(whoami)"
echo -e "Date : $(date)"
echo -e "====================================\e[0m"
echo
EOF

chmod +x ~/.jing_brutal

# Apply theme to bashrc
cat > ~/.bashrc <<'EOF'
# ================================
# TEAM JING MORGAN - BRUTAL THEME
# ================================

# Colors
RED='\033[1;31m'
BLACK='\033[0;30m'
WHITE='\033[1;37m'
RESET='\033[0m'

# Run banner
~/.jing_brutal

# Brutal hacker prompt
PS1="${RED}☠ jing@termux ☠${RESET}:${WHITE}\w${RESET}$ "

EOF

echo "===================================="
echo " TEAM JING MORGAN THEME INSTALLED"
echo " Close & reopen Termux"
echo "===================================="
