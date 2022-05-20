from subprocess import run

GIT_EXE = '.portablegit/bin/git.exe'

run([GIT_EXE, 'restore', '.'])