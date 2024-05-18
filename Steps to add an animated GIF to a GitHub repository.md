# Steps to add an animated GIF to a GitHub repository

## Add the tags to the repository

On GitHub add the tags to tell the potential visitors what the repository is all about.

## Record the app or web app in the repos

### Modify the screen resolution to a 16 x 9 format

For example, in Cinnamon, go to System Settings, go to Display. Change the resolution to 1920 x 1080 (16:9)

### For Desktop or Terminal applications record with SimpleSCreenRecoder

Convert the file to a file in MP4 format. You can use OBS Studio software. Go to File, Remux Recordings.

### For web pages, use the Google Chrome extension Awesome Screen Recorder & Screenshot

Save the file using MP4 format.

## Speed up the video

To double the speed of a video with the setpts filter of ffmpeg, you can use:

```shell
ffmpeg -i input.mkv -filter:v "setpts=0.5*PTS" output.mkv
```
To 4x the speed, of the video:

```shell
ffmpeg -i file1.mp4 -r 30 -filter:v "setpts=0.25*PTS" output.mp4
```

Options:

-r 30: The -r option is used to set the output video's frame rate. In this case, it's set to 30 frames per second (fps). Increasing the frame rate results in a smoother and faster playback.

-filter:v "setpts=0.25*PTS": This is a video filter applied to the input video. The setpts filter is used to modify the presentation time of each frame. In this case, it speeds up the video by a factor of 0.25, which means the video will be played at four times the original speed.

To know the video file FPS rate, open the file in SMPlayer, go to Options, Statusbar, and toggle on Video info.

```shell
sudo apt-get update
sudo apt-get install smplayer
```

The video will keep its size in time, so it requires a cut.

## Play the video

Play the at this point to know where to cut it.

## Make a cut of the video using a duration

To keep the first 7 seconds of the video (the 7 seconds speeded up.

```shell
ffmpeg -i input.mp4 -t 00:00:07 -c:v copy -c:a copy output2.mp4
```

Options:
-ss specifies the starting position.

-t specifies the duration from the start position.

## Convert video to GIF

Covert the video here:

<https://www.img2go.com/convert-video-to-gif>

Download the converted file.

To review the GIF file animation quality, RIGHT CLICK on it, and then select Image Viewer or Gwenview.

## Add the file to the repository

Rename the file as a gif image for the repo. You could use something like the-name-of-the-repo.gif

Add the file to the directory screeenshots/

## Add the file to the README file

To know the dimensions of the gif file:

RIGHT CLICK on the gif file, select Properties, go to Image.

You will find the width and height in pixels.

Use the correct file name and sizes in the README file.

Example of README.md file.

```markdown
# Old School Front End Web Exercises

Old school front end web exercises

<img alt="Front End" src="./screenshots/old-school-front-end-web-exercises.gif?raw=true" width="690" height="388" />
```

## Push changes using git

```shell
git status
git add .
git commit -m "Add new file FILE.gif"
```

## Verify changes

Go to the repository and verifiy changes or pull request from your custom branch to the main one.

