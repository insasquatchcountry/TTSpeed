# TTSpeed
Increase macOS text-to-speech beyond what the slider under 'System Preferences -> Accessibility' allows

**To be honest I just barely know enough to have cobbled this together, but it works!**

# step one

First, you'll have to download the repository. Then, you'll need to double click the archive to unzip it. Now, open the Terminal app located in Applications -> Utilities -> Terminal or simply press `Command + space` to launch Spotlight and type "Terminal" `Enter`

# step two

![Screen Shot 2019-05-29 at 12 22 22 AM](https://user-images.githubusercontent.com/8946291/58537927-dc2df900-81a8-11e9-966a-fc39e04b9705.png)

change directory (`cd`) to where our script is stored with `cd Downloads/TTSpeed-master`

grant tts5000.sh permission to run with `chmod u+x tts5000.sh` 

and copy it into /usr/local/bin with `cp tts5000.sh /usr/local/bin` 

# step three

Edit ~/.bash_profile and add the following lines:

    alias tts='tts5000.sh'
    alias ttspeed='defaults read com.apple.speech.voice.prefs VoiceRateDataArray'
    alias rstts='killall com.apple.speech.speechsynthesisd && killall SpeechSynthesisServer'

# step four

execute the following command-line to for changes to take

    source ~/.bash_profile

From there it's just a matter of running these commands from terminal.

# step five

Simply run tts5000.sh followed by your desired value

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
    
    
# Shoulders of Giants:

https://groups.google.com/forum/#!msg/macvisionaries/HOR7NWxsDQA/15E4M_6zqLUJ

https://superuser.com/questions/1051883/speed-up-rate-of-text-to-speech-via-terminal

https://apple.stackexchange.com/a/333291

http://omgenomics.com/writing-bash-script/
