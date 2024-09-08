# Mp4FitMessenger
## General info
Facebook Messenger limits MP4 file size to a maximum of 25 MB when used in browser. This can be inconvenient for users who want to share their videos quickly, without manually editing to reduce quality or cut content.

This simple bash script solves exactly that problem. It uses `ffmpeg` to compress the `input.mp4` to just below 25 MB while maintaining the highest quality possible.

## Installation
1. Install `ffmpeg`:
   - On Ubuntu: `sudo apt-get install ffmpeg`
   - On macOS: `brew install ffmpeg`
   - On Windows: Download and install from [ffmpeg.org](https://ffmpeg.org/download.html)

2. Clone this repository:
   ```bash
   git clone https://github.com/mcjmk/Mp4FitMessenger.git
   ```

## Usage
1. Navigate to the project directory:
  ```bash
  cd Mp4FitMessenger
  ```
2. Add `input.mp4` file to the project directory
3. Run the script:
  ```bash
  sh ./script.sh
  ```
