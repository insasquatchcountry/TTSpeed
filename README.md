# TTSpeed
Increase macOS text-to-speech beyond what the slider under 'System Preferences -> Accessibility' allows

**To be honest I just barely know enough to have cobbled this together, but it works!**

**step one**

First, grant tts5000.sh permission to run, and then copy it into /usr/local/bin.
    
    chmod u+x tts5000.sh  
    cp tts5000.sh /usr/local/bin

**step two**

Edit ~/.bash_profile and add the following lines:

    alias tts='tts5000.sh'
    alias ttspeed='defaults read com.apple.speech.voice.prefs VoiceRateDataArray'
    alias rstts='killall com.apple.speech.speechsynthesisd && killall SpeechSynthesisServer'

**step three**

execute the following command-line to for changes to take

    $ source ~/.bash_profile

From there it's just a matter of running these commands from terminal.

**step four**

Run these commands in this order

    $ ttspeed    #checks current value of speed variable
    $ tts 500    #runs tts5000.sh with a variable of 500
    $ ttspeed    #checks to confirm value has been set
    $ rstts      #restarts the speech sythesiser 

or

    $ tts 500 && ttspeed && rstts    #I don't know why but if you don't confirm ttspeed it sometimes doesn't take

Shoulders of Giants:
https://apple.stackexchange.com/a/333291
https://groups.google.com/forum/#!msg/macvisionaries/HOR7NWxsDQA/15E4M_6zqLUJ
https://superuser.com/questions/1051883/speed-up-rate-of-text-to-speech-via-terminal


