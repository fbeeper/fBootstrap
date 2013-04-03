#!/bin/bash

# +----------------------------------------------------------------------+
# |                                                                      |
# |  Mount the root file system / with the option noatime                |
# |                                                                      |
# |  By Philipp Klaus <http://blog.philippklaus.de>                      |
# |  Tip found on <http://blogs.nullvision.com/?p=275>                   |
# |                                                                      |
# +----------------------------------------------------------------------+

cat << EOF | sudo tee /Library/LaunchDaemons/com.nullvision.noatime.plist > /dev/null
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" 
        "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <dict>
        <key>Label</key>
        <string>com.nullvision.noatime</string>
        <key>ProgramArguments</key>
        <array>
            <string>mount</string>
            <string>-vuwo</string>
            <string>noatime</string>
            <string>/</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
    </dict>
</plist>
EOF
