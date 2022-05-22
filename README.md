# Summary

This is the python file made to update user's local Lorehouse modpack.

## Environment Setup

```powershell
python3 -m venv virtualenv
# Then to activate the virtual environment
.\virtualenv\Scripts\activate
pip3 install -r requirements.txt
```

## Compiling to .exe

```powershell
# File will be saved as "dist/update.exe"
pyinstaller --onefile update.py
```
