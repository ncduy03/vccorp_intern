# Linux Command Reference

## Directory Navigation
- `pwd` → Print working directory
- `cd <directory>` → Change directory
- `cd ..` → Move to the parent directory
- `cd ~` → Go to the home directory

## Listing Files and Directories
- `ls` → List files and directories
- `ls -l` → Long format listing
- `ls -lt` → Sort by modification time
- `ls -ltr` → Sort by modification time in reverse order
- `ls -a` → Show hidden files

## File and Directory Operations
- `touch text.txt` → Create a new file
- `mv <file1> <file2> <destination>` → Move/rename files
- `rm <file>` → Remove a file
- `rm -r <directory>` → Remove a directory and its contents
- `cp <file> <destination>` → Copy a file
- `cp -p <file> <destination>` → Copy a file and preserve metadata
- `cp -r <dir1> <dir2>` → Copy all files from `dir1` to `dir2`

## Viewing File Contents
- `head <file>` → Show the first 10 lines of a file
- `tail <file>` → Show the last 10 lines of a file
- `cat <file>` → Display the entire file

## Searching for Patterns in a File
- `grep "pattern" <file>` → Search for a pattern in a file