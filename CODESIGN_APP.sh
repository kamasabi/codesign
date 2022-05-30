echo "$STR" 
printf 'Hi! Thank you for using my program. Do you want to start? (y/n)? '
old_stty_cfg=$(stty -g)
stty raw -echo ; answer=$(head -c 1) ; stty $old_stty_cfg # Careful playing with stty
if echo "$answer" | grep -iq "^y" ;then

    echo Yes
    echo "$STR"
    cd ../
    cd ../
    cd ../
    cd $HOME
    echo Mounted home folder. 
    echo "$STR" 
    sleep 1
    sudo find . -name "*.bundle" -execdir sudo codesign -f -s - {} \;  
    echo .bundle - files got successfully signed.
    echo "$STR" 
    sleep 1
    sudo find . -name "*.component" -execdir sudo codesign -f -s - {} \; 
    echo .component - files got successfully signed.
    echo "$STR" 
    sleep 1 
    sudo find . -name "*.app" -execdir sudo codesign -f -s - {} \;
    echo .app - files got successfully signed. 
    echo "$STR" 
    sleep 1 
    sudo find . -name "*.vst" -execdir sudo codesign -f -s - {} \;   
    echo .vst - files got successfully signed.
    echo "$STR" 
    sleep 1
    sudo find . -name "*.vst3" -execdir sudo codesign -f -s - {} \;    
    echo .vst3 - files got successfully signed.
    echo "$STR" 
    sleep 1
    sudo find . -name "*.au" -execdir sudo codesign -f -s - {} \;    
    echo .au - files got successfully signed.
    echo "$STR" 
    sleep 1

    echo All done, thank you for your patience.
    echo Check if your apps / plugins are working now after restarting your DAW.
    echo If your app is not working properly try restarting your PC.
    echo If the problem persists, it is not an signing issue.
    echo "$STR" 
    sleep 5
    echo You can also try to follow these additional steps:
    echo "$STR" 
    sleep 1
    echo 01. Open terminal                                                   #made
    echo 02. Type: xattr                                                     #by
    echo 03. Press spacebar and drag your file into the terminal window      #kamasabi :)
    echo 04. Your command should look like this: xattr path/to/file/filename.file
    echo 05. Press enter
    echo 06. Type: chmod -R 755
    echo 07. Press spacebar and drag your file into the terminal window
    echo 08. Your command should look like this: chmod -R 755 path/to/file/filename.file
    echo 09. Press enter
    echo "$STR" 
    sleep 5
    echo Sometimes, when your DAW tries to open a new plugin, MacOS might try to block it.
    echo "$STR" 
    sleep 1
    echo In this case, please follow these steps:
    echo "$STR" 
    sleep 1
    echo 01. Open up a terminal
    echo 02. Enter the following code: sudo spctl --master-disable
    echo 03. Press enter
    echo 04. Authenticate and hit return

    echo 05. Press the Apple Icon on the topf left
    echo 06. Click on: System Preferences
    echo 07. Go to: Security and Privacy
    echo 08. Go to: General
    echo 09. Tap the lock at the bottom left
    echo 10. Enter your password
    echo 11. Choose: Anywhere under Allow apps dowloaded from unknown ressources
    echo 12. Click the lock icon again
    echo "$STR" 
    sleep 5
    echo After completing all these steps the plugins should run fine.
    echo "$STR" 
    sleep 1
    echo Feel free to donate me a coffee @ kamasabi.de
    echo "$STR" 
    sleep 5

else
    echo No
fi