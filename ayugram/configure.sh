#!/bin/zsh

# AyuGram Advanced Configuration Script
# This script configures advanced settings for AyuGram after installation

echo "Configuring AyuGram advanced settings..."

# Check if AyuGram is installed
if [ ! -d "/Applications/AyuGram.app" ]; then
  echo "AyuGram is not installed. Please install it first."
  exit 1
fi

# AyuGram settings directory
SETTINGS_DIR="$HOME/Library/Application Support/AyuGram Desktop/tdata"

# Create directory if it doesn't exist yet
mkdir -p "$SETTINGS_DIR"

# Backup existing settings if they exist
if [ -f "$SETTINGS_DIR/ayu_settings.json" ]; then
  echo "Backing up existing AyuGram settings..."
  cp "$SETTINGS_DIR/ayu_settings.json" "$SETTINGS_DIR/ayu_settings.json.bak"
fi

# Apply custom settings
echo "Applying custom AyuGram settings..."

cat > "$SETTINGS_DIR/ayu_settings.json" << 'EOF'
{
    "appIcon": "chibi2",
    "channelBottomButton": 2,
    "collapseSimilarChannels": true,
    "deletedMark": "🧹",
    "disableAds": true,
    "disableCustomBackgrounds": true,
    "disableNotificationsDelay": true,
    "disableStories": true,
    "editedMark": "edited",
    "gifConfirmation": false,
    "hideAllChatsFolder": false,
    "hideFromBlocked": false,
    "hideNotificationBadge": false,
    "hideNotificationCounters": true,
    "hideSimilarChannels": false,
    "increaseWebviewHeight": false,
    "increaseWebviewWidth": false,
    "localPremium": true,
    "markReadAfterAction": true,
    "monoFont": "",
    "recentStickersCount": 150,
    "replaceBottomInfoWithIcons": true,
    "saveDeletedMessages": true,
    "saveForBots": false,
    "saveMessagesHistory": true,
    "sendOfflinePacketAfterOnline": true,
    "sendOnlinePackets": false,
    "sendReadMessages": true,
    "sendReadStories": true,
    "sendUploadProgress": false,
    "sendWithoutSound": false,
    "showAttachButtonInMessageField": true,
    "showAttachPopup": true,
    "showAutoDeleteButtonInMessageField": true,
    "showCommandsButtonInMessageField": true,
    "showEmojiButtonInMessageField": true,
    "showEmojiPopup": true,
    "showGhostToggleInDrawer": true,
    "showGhostToggleInTray": true,
    "showHideMessageInContextMenu": 0,
    "showLReadToggleInDrawer": false,
    "showMessageDetailsInContextMenu": 2,
    "showMessageSeconds": false,
    "showMessageShot": true,
    "showMicrophoneButtonInMessageField": true,
    "showPeerId": 2,
    "showReactionsPanelInContextMenu": 1,
    "showSReadToggleInDrawer": true,
    "showStreamerToggleInDrawer": false,
    "showStreamerToggleInTray": false,
    "showUserMessagesInContextMenu": 2,
    "showViewsPanelInContextMenu": 1,
    "simpleQuotesAndReplies": true,
    "spoofWebviewAsAndroid": false,
    "stickerConfirmation": false,
    "useScheduledMessages": false,
    "voiceConfirmation": false,
    "wideMultiplier": 1.0
}
EOF

echo "AyuGram advanced settings configured successfully!"

# Restart AyuGram if it's running
if pgrep -x "AyuGram" > /dev/null; then
  echo "Restarting AyuGram to apply settings..."
  killall AyuGram
  sleep 1
  open -a AyuGram
fi
