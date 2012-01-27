Running ~/.bash_profile at login time
on Mac OS X
by Quinn Weaver <quinn@fairpath.com>

    The problem

Mac OS X doesn't run ~/.bash_profile, ~/.profile, or ~/.bash_login until you
actually run Terminal to start a shell. This behavior differs from that of
most Unix operating systems.

That's a problem if you want to run a daemon when you log in (say, ssh-agent
or gpg-agent).

    The solution

I wrote an AppleScript wrapper that looks for ~/.bash_profile, ~/.bash_login,
and ~/.profile and runs the first one that exists and is readable, in the
same order as bash itself does for login shells.

You can set this AppleScript to run when you first log in.

    Installing

1) In the Finder, drag run_bash_login.app to your Dock. This will make a Dock
icon for it, while also keeping the original file.

2) Right-click the Dock icon and select "Open at Login" from the options menu.

3) You may then, if you wish, remove the icon from the Dock to save space.
Just drag the icon off of the Dock and onto the Desktop (where it will
disappear in a puff of smoke). Just remember where the original file was,
because you'll need to copy it back to the Dock if you ever want to uninstall
it.

    Uninstalling

A) Drag the app to the Dock, if it's not already there. See the instructions
under 1), above.

B) Right-click the Dock icon and look for "Open at Login" under options.
If it has a checkbox, uncheck it.

C) Drag the icon off of the Dock and onto the Desktop, where it will
disappear in a gratuitous animation.

D) If you wish, remove this directory.

    Manifest

run_bash_login.applescript   the AppleScript source code.
run_bash_login.app           the application bundle.
README                       this file
Examples/                    examples of commands you might want to put in your
                             ~/.bash_login
    Debugging

If the Applescript doesn't seem to work, try the following:

- Make sure your ~/.bash_profile (or ~/.bash_login, or ~/.profile)
is readable by you: run Terminal and do chmod u+r ~/.bash_profile.

- Add this line to the top of your ~/.bash_profile (or whatever):

touch ~/Desktop/bash_file_ran

Then double-click the app again.  If that file appears, then your bash file is
running, after all. Of course, the commands in your file could be
failing…

- Open the source file, run_bash_login.applescript in the AppleScript Editor
application, and press the Run button. This should give you an informative
message as to what's going wrong.

- If it looks like a bug, please send me a bug report.

Copyright (c) 2009, Quinn Weaver
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

- Redistributions of source code must retain the above copyright notice,
  this list of conditions and the following disclaimer.

- Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
