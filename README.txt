~/.bash_login for Mac OS X
by Quinn Weaver <quinn@fairpath.com>

     The problem:

Mac OS X doesn't run ~/.bash_profile or ~/.bash_login until you actually run
Terminal to start a shell.  This differs from the behavior of GNU/Linux,
where your ~/.bash_login is run as soon as you log in successfully.

The GNU/Linux way is better, because it e.g. allows you to run a daemon when you
log in (say, a non-privileged monotone server, or a Ruby on Rails Webrick
app you're using).

     The solution:

AppleScript has a "do shell script" command.  So you can compile an
AppleScript that will run your ~/.bash_login, then Control-click it in the
Finder and choose "Open at Login."  Next time you log in, your ~/.bash_login
will be run automatically.

     Manifest:



So I created this file,
 then scripted an AppleScript script using Script Editor (script script).
 That script reads simply:

   do shell script "/Users/quinn/bin/.mac_os_login"

 I used File > Save As to save the AppleScript as a compiled Cocoa app,
 making sure Stay Open was not checked.
 (I saved it as ~/bin/mac_os_x_login--applescript_wrapper.app.)
 Then I went to System Preferences > Accounts > Login Items, hit the + button,
 and added my little app (checking Hide).  I rebooted and, voila, it works.

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
