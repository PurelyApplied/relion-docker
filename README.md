This is a convenient wrapper for the Relion tool so that my dear brother Colin could use it in a mac,
while tool itself seems very Linux-bound.
At least its tutorials and explanations all referred to libraries that don't have 1-to-1 analogs in Mac-Land.
I have no idea about that thing, but I can make a docker image, so sure.

For this to be useful, you need Docker.
Presumably, you specifically need [Docker for Mac](https://hub.docker.com/editions/community/docker-ce-desktop-mac).
Go get it.

This image is based off the X11vnc-desktop repository and associate image, found [here](https://github.com/x11vnc/x11vnc-desktop).
 
Copied from that repository for convenience is the `x11vnc_desktop.py` python script.
(It appears to want python2.)

With Docker installed (and the Docker app running, so that the container-whale is up in your hotbar up top right),
you should be able to do the thing you want, specifying our custom image and your work directory.

Use `-i` to specify our image, `-v` for your workspace, and probably throw on a `-p` to make sure your image is up-to-date.

```
python x11vnc_desktop.py -p -i purelyapplied/relion:x11vnc -v /path/to/your/project/directory
```


This will make some pretty pretty text scroll by and eventually your internet browser will pop up with your things.

~~From that shell, run `relion` (aliased, if you're interested, in `/relion/build/bin/relion`)~~
Apparently I'm not aliasing to the user that loads correctly.  Run the direct command `/relion/build/bin/relion`

From there, I have no idea.  This is your wheelhouse, not mine.

Good luck, have fun.
