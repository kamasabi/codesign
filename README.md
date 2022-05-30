# codesign
Automatic MacOS codesigner

# What it does
My Codesigner goes through your user-folder and everything in it in order to sign your .component, .app, .vst, .vst3, .au & .bundle files.

This might help you to run unsigned plugins / VSTs within your Digital Audio Workstation(s).

# How to run it
Download the .sh file and open up your Terminal. Type "sh " in your terminal and then drag the downloaded file onto the terminal window and press enter.

# What if this does not help?
These are the additional steps I recommend if this program does not solve your issue:

01. Open terminal
02. Type: xattr
03. Press spacebar and drag your to-be-signed file into the terminal window
04. Your command should look like this: xattr path/to/file/filename.file
05. Press enter
06. Type: chmod -R 755
07. Press spacebar and drag your to-be-signed file into the terminal window
08. Your command should look like this: chmod -R 755 path/to/file/filename.file
09. Press enter

Sometimes, when your DAW tries to open a new plugin, MacOS might try to block it.

In this case, please follow these steps:

01. Open up a terminal
02. Enter the following code: sudo spctl --master-disable
03. Press enter
04. Authenticate and hit return
05. Press the Apple Icon on the topf left
06. Click on: System Preferences
07. Go to: Security and Privacy
08. Go to: General
09. Tap the lock at the bottom left
10. Enter your password
11. Choose: Anywhere under Allow apps dowloaded from unknown ressources
12. Click the lock icon again
13. Try to load / start your plugin again

After completing all these steps the plugins should run fine.

If you followed every step and still encounter issues, your installation might be broken or there might be a bug.

Thank you for using my little snippet :)
