```
 _  _    __        ___    ____  _   _ ___ _   _  ____     _  _ 
| || |   \ \      / / \  |  _ \| \ | |_ _| \ | |/ ___|   | || |
| || |    \ \ /\ / / _ \ | |_) |  \| || ||  \| | |  _    | || |
|_||_|     \ V  V / ___ \|  _ <| |\  || || |\  | |_| |   |_||_|
(_)(_)      \_/\_/_/   \_\_| \_\_| \_|___|_| \_|\____|   (_)(_)
```

!! The update to Montere has made this workaround totally unnecceary. !!

!! This repo now exists for purely eductaional purposes and my own bragging rights !!

<del>!! The update to Catalina and subsequent move to zsh has broken my script !!</del>

# TTSpeed
Increase macOS text-to-speech beyond what the slider under 'System Preferences -> Accessibility' allows

**To be honest I just barely know enough to have cobbled this together, but it works!**

# step one

First, you'll have to download the repository. Then, you'll need to double click the archive to unzip it. Now, open the Terminal app located in Applications -> Utilities -> Terminal or simply press `Command + space` to launch Spotlight and type "Terminal" `Enter`

# step two

Change directory (`cd`) to where the shell script is stored with `cd Downloads/TTSpeed-master`,

grant tts5000.sh permission to run with `chmod u+x tts5000.sh`,

and copy it into /usr/local/bin with `cp tts5000.sh /usr/local/bin`.

# step three

Edit ~/.bash_profile in TextEdit with `open -a TextEdit  ~/.bash_profile`

copy and paste the following lines, save, and quit TextEdit.

    alias tts='tts5000.sh'
    alias ttspeed='defaults read com.apple.speech.voice.prefs VoiceRateDataArray'
    alias rstts='killall com.apple.speech.speechsynthesisd && killall SpeechSynthesisServer'

# step four

execute the following command for the changes to ~/.bash_profile to take effect.

    source ~/.bash_profile
    
# alternate steps 1-4 
**this does everything above from the command line (just copy & paste it into terminal)**

    cd ~/Downloads
    curl -JLO https://github.com/insasquatchcountry/TTSpeed/archive/master.zip
    unzip TTSpeed-master.zip
    cd TTSpeed-master
    chmod u+x tts5000.sh
    cp tts5000.sh /usr/local/bin
    echo "alias tts='tts5000.sh'" >> ~/.bash_profile
    echo "alias ttspeed='defaults read com.apple.speech.voice.prefs VoiceRateDataArray'" >> ~/.bash_profile
    echo "alias rstts='killall com.apple.speech.speechsynthesisd && killall SpeechSynthesisServer'" >> ~/.bash_profile
    source ~/.bash_profile
    cd ~/Downloads
    rm -rf TTSpeed-master.zip
    rm -rf TTSpeed-master
    say Your installation of TTS 5000 is Complete
    cd
    #enjoy :D


![example](https://github.com/user-attachments/assets/0459ad5a-0ec6-47ec-bbbb-84362de545c5)



# usage

Now simply run tts5000.sh followed by your desired value

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
