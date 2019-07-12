# TermGifMaker
The Docker image based on Terminalizer

## Usage
```
touch <output_gif> && \
docker run -it --rm \
    -v <recording>:/terminalizer/recording.yml:ro \
    -v <output_gif>:/terminalizer/rendered.gif \
    terminalizer
```
Note that terminalizer's step parameter can be set through the environment variable `STEP`
