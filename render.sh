#!/bin/bash -i
if [ -z "$STEP" ]
then
    STEP=1
fi

xvfb-run -s "-screen 0 1920x1080x16" \
    terminalizer render -s $STEP recording -o tmp.gif \
    && gifsicle --colors 256 --use-col=web -O3 < tmp.gif > rendered.gif
