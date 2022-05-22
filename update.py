######################################################################
# 
#           Made by Lorenyx, Updated 5/22/22
#   If you are reading this and don't know what this file is, it is
#   supposed to download the Lorehouse minecraft modpack and update 
#   the local files without requiring a new Forge profile to be made
#   each time. At the time, this was the best solution. If any issues
#   Occur with this file, or you are just curious, message "lorenyx#0451"
#   on Discord for more information. Have fun!
#
#   $ pyinstaller --onefile update.py
#
######################################################################
import os
import requests
import shutil
import sys
import logging as log

from subprocess import run

REPO_URL = 'https://github.com/Lorenyx/Lorehouse-SMP'
GIT_EXE = '.portablegit/bin/git.exe'
LOG_FILE = 'logs/lgit.log'

DOWNLOAD_URL = 'https://github.com/git-for-windows/git/releases/download/v2.36.1.windows.1/PortableGit-2.36.1-64-bit.7z.exe'
INSTALL_FILE = 'pgit.exe'
TMP_LOC = 'tmp'

# Setup logging and log file
if not os.path.isdir('logs'):
    os.mkdir('logs')
log.basicConfig(
    level=log.DEBUG, #TODO update to log.INFO when releasing
    format="[%(asctime)s] [update/%(levelname)s] %(message)s",
    handlers=[
        log.FileHandler(LOG_FILE),
        log.StreamHandler(sys.stdout)
    ],
)

LOG_STREAM = open(LOG_FILE, 'a+')

def _git(cmd):
    "Does git command"
    if isinstance(cmd, list):
        run([GIT_EXE]+cmd, stderr=LOG_STREAM, stdout=LOG_STREAM)
    elif isinstance(cmd, str):
        run([GIT_EXE, cmd], stderr=LOG_STREAM, stdout=LOG_STREAM)
    else:
        log.warning(f'Unknown command - CMD - {cmd!r}')


def update():
    # Check if repo already exists
    if not os.path.isdir('.git'):
        log.info(f'Cloning "client" from {REPO_URL}')
        _git(['clone', '-b', 'client', '--single-branch', REPO_URL, TMP_LOC])
        # Move and delete old folder
        shutil.move(os.path.join(TMP_LOC, '.git'), '.git')
        shutil.rmtree(os.path.join(TMP_LOC))
        _git(['restore', '.'])
        _git(['clean', '-f', '-d', '.'])
    # Download files to merge
    log.info('Pulling latest files')
    _git('pull')
    _git(['restore', '.'])
    _git(['clean', '-f', '-d', '.'])
    

def setup():
    # Check that folder exists
    if not os.path.isdir('.portablegit'):
        # Check if install file is already present
        if not os.path.isfile(INSTALL_FILE):
            try:
                # Make http request for remote file data
                log.info(f'Downloading PortableGit from {DOWNLOAD_URL}')
                data = requests.get(DOWNLOAD_URL)
                # Save file data to local copy
                with open(INSTALL_FILE, 'wb') as file:
                    log.info(f'Saving installer as {INSTALL_FILE}')
                    file.write(data.content)
            except Exception as E:
                log.error(f'Unable to download PortableGit - REASON - {E}')
                exit(-1)
        # Run the installer file
        try:
            log.info('Running PortableGit installer')
            run(INSTALL_FILE) # User will need to select 'OK'
            os.rename('PortableGit', '.portablegit') # Rename to hidden folder
            log.info(f'Cleaning up file: {INSTALL_FILE}')
            os.remove(INSTALL_FILE)
            log.info('PortableGit sucessfully installed')
        except Exception as E:
            log.error(f'Unable to install PortableGit - REASON - {E}')
            exit(-2)


if __name__ == '__main__':
    log.info('Running update.exe - v0.0.2')
    setup()
    update()
    LOG_STREAM.close()