#!/bin/sh -eux

if [ "$AUTOLOGIN" != "true" ] && [ "$AUTOLOGIN" != "1" ] ; then
  exit
fi

# Generate /etc/kcpassword. It contains an encrypted password and allows to run
# the next command without a password prompt.
python /private/tmp/set_kcpassword.py "user"

# Enable the autologin for the 'user' user
/usr/bin/defaults write /Library/Preferences/com.apple.loginwindow autoLoginUser "user"
