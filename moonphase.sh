#!/bin/bash

# Fetch moon phase info and display the corresponding emoji and name
PHASE=$(curl -s wttr.in?format="%m")

case $PHASE in
    🌑) ICON="🌑 New Moon" ;;
    🌓) ICON="🌓 First Quarter" ;;
    🌕) ICON="🌕 Full Moon" ;;
    🌗) ICON="🌗 Last Quarter" ;;
    🌒) ICON="🌒 Waxing Crescent" ;;
    🌔) ICON="🌔 Waxing Gibbous" ;;
    🌘) ICON="🌘 Waning Crescent" ;;
    🌖) ICON="🌖 Waning Gibbous" ;;
    *) ICON="❓ Unknown Phase" ;;
esac

# Display the emoji and its description
echo "$ICON"
