~/.bash_login for Mac OS X
by Quinn Weaver <quinn@fairpath.com>

    The problem:

Mac OS X doesn't run ~/.bash_profile or ~/.bash_login until you actually run
Terminal to start a shell.  This differs from the behavior of GNU/Linux,
where your these files are run as soon as you log in, even if you do so
via X11.

But what if you want to run a daemon when you log in (say, ssh-agent or
gpg-agent, or a non-privileged monotone server, or a Ruby on Rails Webrick
for a private version of an app?)

    The solution:

AppleScript has a "do shell script" command.  So you can compile an app
that will run your ~/.bash_login, then Control-click it in the
Finder and choose "Open at Login."

    Installing:

1) In the Finder, drag run_bash_login.app to your Dock.  This will make a Dock
icon for it, while also keeping the original file.

2) Right-click the Dock icon and select "Open at Login" from the options menu.

3) You may then, if you wish, drag the icon off of the Dock and onto the
desktop (where it will disappear in a puff of smoke).  Just remember where
the original file was, because you'll need to copy it back to the Dock
if you ever want to uninstall it.

    Uninstalling

A) Drag the app to the Dock, if it's not already there.  See the instructions
under 1), above.

B) Right-click the Dock icon and look for "Open at Login" under options.
It should have a checkbox.  If so, select it with your mouse, and the checkbox
will go away.

C) Drag the icon off of the Dock and onto the Desktop; this will make it
disappear.

D) If you wish, remove this directory.

    Manifest:

run_bash_login.scpt   the AppleScript source code.
run_bash_login.app    the application bundle.
README                this file
Examples/             examples of commands you might want to put in your
                      ~/.bash_login.

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
