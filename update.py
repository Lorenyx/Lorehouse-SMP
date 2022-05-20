######################################################################
# 
#           Made by Lorenyx, Updated 5/20/22
#   If you are reading this and don't know what this file is, it is
#   supposed to download the Lorehouse minecraft modpack and update 
#   the local files without requiring a new Forge profile to be made
#   each time. At the time, this was the best solution. If any issues
#   Occur with this file, or you are just curious, message "lorenyx#0451"
#   on Discord for more information. Have fun!
#
######################################################################
import os

from subprocess import run

def has_dependencies():
    # First check if .portable exists
    if not os.path.exists('.portablegit/bin/git.exe'):
        

if __name__ == '__main__':
    # Check for first time setup
    if not os.path.isfile('.issetup'):
        # Download PortableGit file
        if not os.path.isfile(''):
            import requests
            remote_url = 'https://github.com/git-for-windows/git/releases/download/v2.36.1.windows.1/PortableGit-2.36.1-64-bit.7z.exe'
            local_file = 'pgit-2.36.1-64bit.exe'
            # Make http request for remote file data
            data = requests.get(remote_url)
            # Save file data to local copy
            with open(local_file, 'wb') as file:
                file.write(data.content)