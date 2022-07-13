whiptail --title "Install:" \
    --yes-button "Y" \
    --no-button "N" \
    --yesno "Continue..." 13 60 || {
    clear
    exit 1
}


