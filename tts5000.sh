#!/usr/bin/env bash
VALUE=${1?Error: no value given}
plutil -convert json ~/Library/Preferences/com.apple.speech.voice.prefs.plist -o - | python -c 'import json, sys;d=json.load(sys.stdin);[x.__setitem__(-1, '$VALUE') for x in d["VoiceRateDataArray"]];json$
echo "Text-To-Speech speed has been adjusted to $VALUE. Run 'rstts' to restart TTS and apply changes."