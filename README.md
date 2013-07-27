## Bolt.cm Development Template

Since Bolt installs into the same folder structure as your sites content it gets
a little messy trying to keep your individual site files under control while also
having an up to date working Bolt install..

There are also a few steps that need to be done every time a new site is started..

This is my simplistic solution that gets the latest Bolt files, and sets up a new
site complete with a clean Git repo (ie no Bolt history) that is tracking just the
files that you need to care about..

This also means that the files under Git can be packaged with git archive and then
extracted on top of a Softaculous install of Bolt!  This makes deploying new sites
to shared hosting *much* easier.

The only thing you will have to deal with manually is the /files/ folder, since
these will be primarily binary files, and of indeterminate size I will leave it to
your discretion how best to move these around.

NB.. this readme will be overwritten by Bolt's when you run the setup file..
