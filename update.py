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
#   $ pyinstaller update.py --onefile -p install\Lib\site-packages
#
######################################################################
import os
import logging as log

from subprocess import run

REPO_URL = 'https://github.com/Lorenyx/Lorehouse-SMP'
GIT_EXE = '.portablegit/bin/git.exe'
remote_url = 'https://github.com/git-for-windows/git/releases/download/v2.36.1.windows.1/PortableGit-2.36.1-64-bit.7z.exe'
local_file = 'pgit.exe'

log.basicConfig(filename='update.log', filemode='w', encoding='utf-8', level=log.DEBUG)

def git(cmd):
    "Does git command"
    run([GIT_EXE, cmd])

def git_pull():
    "Pulls latest commit"
    run([GIT_EXE, 'pull'])

def git_restore():
    "Restores to latest commit"
    run([GIT_EXE, 'restore', '.'])

def download_pgit():
    try:
        import requests
        
        # Make http request for remote file data
        data = requests.get(remote_url)
        # Save file data to local copy
        with open(local_file, 'wb') as file:
            file.write(data.content)
    except Exception as E:
        log.error(f'Could not download pgit.exe - REASON - {E}')
        exit(-1)


if __name__ == '__main__':
    # First time setup
    if not os.path.isfile('.pgit'):
        # Download PortableGit file
        if not os.path.isfile('pgit.exe'):
            log.info('Downloading PortableGit to {local_file} @ {remote_url}')
            download_pgit()
        # Run pgit installer
        if not os.path.isdir('.portablegit'):
            log.info(f'Installing PortableGit')
            run('pgit.exe')
            log.info('Done')
            # Rename to hidden folder
            os.rename('PortableGit', '.portablegit')
        # Create .pgit to show its instaleld
        with open('.pgit', 'w+') as fp:
            fp.write("true")
    # Check for updates
    log.info('Pulling latest commit')
    git_pull()
    log.info('')
    git_restore()