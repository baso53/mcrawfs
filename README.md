# FSKit .mcraw (from Motioncam) File System for MacOS 26 (`mcrawfs`)

An implementation of a file system driver for mounting .mcraw files using **FSKit** and MacOS 26’s brand new `FSPathURLResource` API.  

This project lets you mount `.mcraw` files [from Motioncam](https://www.motioncamapp.com/) as file systems on MacOS 26 and explore their contents natively.

It exposes the individual .dng frames as frames.

---

## Features

- Built on top of Apple’s latest file system API: `FSPathURLResource`.
- Seamless mounting and browsing of `.mcraw` files.

---

## Requirements

- **MacOS 26** (older versions are not supported; uses new system APIs)
- Command-line access
- A `.mcraw` file to mount

---

## Installation

1. **Clone the repository:**
    ```sh
    git clone https://github.com/baso53/mcrawfs.git
    cd mcrawfs
    ```

2. **Build the project:**  
    Import in XCode and build.

3. **Register the file system:**  
    Go to "Debug" -> "Copy Build Folder Path", and go into that folder + "/Products/Release
    and execute `pluginkit -a McrawMounterExtension.appex`

---

## Usage

To mount a `.mcraw` file:

```sh
mount -F -t mcrawfs /Users/007-VIDEO_24mm-240328_141729.0.mcraw /tmp/TestVol
```