# TTSpeed
Increase macOS text-to-speech beyond what the slider under 'System Preferences -> Accessibility' allows

**step one

grant tts5000.sh permission to run the copy it into /usr/local/bin
    
    chmod u+x tts5000.sh    #will grant only the owner of that file execution permissions 
    cp tts5000.sh /usr/local/bin

**step two

edit ~/.bash_profile and add the following lines:

    alias tts='tts5000.sh'
    alias ttspeed='defaults read com.apple.speech.voice.prefs VoiceRateDataArray'
    alias rstts='killall com.apple.speech.speechsynthesisd && killall SpeechSynthesisServer'

**step three

execute the following command-line to for change to take

    $ source ~/.bash_profile

From there it's just a matter of running these commands from terminal.

**examples**

    $ tts 500    #run tts5000 with variable 250
    $ ttspeed    #check to confirm value
    $ rstts      #restart the speech sythesiser 

or

    $ tts 500 && ttspeed && rstts

Shoulders of Giants:
https://apple.stackexchange.com/a/333291
https://groups.google.com/forum/#!msg/macvisionaries/HOR7NWxsDQA/15E4M_6zqLUJ
https://superuser.com/questions/1051883/speed-up-rate-of-text-to-speech-via-terminal


