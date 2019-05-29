#!/usr/bin/env bash
VALUE=${1?Error: no value given}
plutil -convert json ~/Library/Preferences/com.apple.speech.voice.prefs.plist -o - | python -c 'import json, sys;d=json.load(sys.stdin);[x.__setitem__(-1, '$VALUE') for x in d["VoiceRateDataArray"]];json.dump(d, sys.stdout)' | plutil -convert binary1 -o ~/Library/Preferences/com.apple.speech.voice.prefs.plist - 

defaults read com.apple.speech.voice.prefs VoiceRateDataArray

killall com.apple.speech.speechsynthesisd && killall SpeechSynthesisServer

echo "Congratulations! Your Text-To-Speech speed has been successfully changed to $VALUE!"
