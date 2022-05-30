#codesign
##Automatic MacOS codesigner
###This Software will help you to use unsigned / untrusted Software / Plugins within your DAW of choice.

#What it does
My Codesigner goes through your user-folder and everything in it in order to sign your .component, .app, .vst, .vst3, .au & .bundle files.

This might help you to run unsigned plugins / VSTs within your Digital Audio Workstation(s).

#How to run it
Download the .sh file and open up your Terminal. Type "sh " in your terminal and then drag the downloaded file onto the terminal window and press enter.

#What if this does not help / work?
These are the additional steps I recommend if this program does not solve your issue:

###Step 1:

1. Open terminal
2. Type: xattr
3. Press spacebar and drag your to-be-signed file into the terminal window
4. Your command should look like this: xattr path/to/file/filename.file
5. Press enter
6. Type: chmod -R 755
7. Press spacebar and drag your to-be-signed file into the terminal window
8. Your command should look like this: chmod -R 755 path/to/file/filename.file
9. Press enter

Step 2:

Sometimes, when your DAW / System tries to open a new plugin and/or new software, MacOS might try to block it.

In this case, please follow these steps:

1. Open up a terminal
2. Enter the following code: sudo spctl --master-disable
3. Press enter
4. Authenticate and hit return
5. Press the Apple Icon on the topf left
6. Click on: System Preferences
7. Go to: Security and Privacy
8. Go to: General
9. Tap the lock at the bottom left
10. Enter your password
11. Choose: Anywhere under Allow apps dowloaded from unknown ressources
12. Click the lock icon again
13. Try to load / start your plugin again

After completing all these steps the plugins should run fine.

If you followed every step and still encounter issues, your installation might be broken or there might be a bug.

Thank you for using my little snippet :)
