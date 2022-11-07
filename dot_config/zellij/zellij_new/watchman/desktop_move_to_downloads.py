import sys 
import shutil
from pathlib import Path

# Get home directory - Cross Platform
home = str(Path.home())

# Itterate through file name list. Skip first argument because it's the name of the script
for file_name in sys.argv[1:]:
    
    print(f"Moving '{home}/Dekstop/{file_name}' to '{home}/Downloads/{file_name}'")
    
    shutil.move(f"{home}/Desktop/{file_name}", f"{home}/Downloads/{file_name}")
    