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

    source ~/.bash_profile

From there it's just a matter of running these commands from terminal.

**step four**

Simple run tts5000.sh followed by your desired value

    Jamess-MacBook-Air:~ james$ tts 450
    (
            (
            1835364215,
            202,
            450
        ),
            (
            1886745202,
            184844483,
            450
        ),
            (
            1835364215,
            201,
            450
        )
    )
    Congratulations! Your Text-To-Speech speed has been successfully changed to 450!
    Jamess-MacBook-Air:~ james$ 
    
    
Shoulders of Giants:

https://groups.google.com/forum/#!msg/macvisionaries/HOR7NWxsDQA/15E4M_6zqLUJ

https://superuser.com/questions/1051883/speed-up-rate-of-text-to-speech-via-terminal

https://apple.stackexchange.com/a/333291
