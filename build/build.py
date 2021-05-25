import os
import shutil
import requests
import json

packVersion = "Indev-5"
basePath = ".."
copyDirs = ["/scripts", "/resources", "/config", "/mods", "/resourcepacks"]

with open(basePath + "/manifest.json") as file:
    manifest = json.load(file)

try:
    os.makedirs(basePath + "/buildOut/overrides")
    os.makedirs(basePath + "/mods")
    print("make directories")
except Exception as e:
    print("Directory exists, skipping")

for dir in copyDirs:
    try:
        shutil.copytree(basePath + dir, basePath + "/buildOut/overrides" + dir)
    except Exception as e:
        print("Directory exists, skipping")
print("directories copied to buildOut")

shutil.copy(basePath + "/options.txt", basePath + "/buildOut/overrides/options.txt")
shutil.copy(basePath + "/manifest.json", basePath + "/buildOut/manifest.json")
shutil.make_archive("COMFI-" + packVersion, "zip", basePath + "/buildOut")
print("zip made")
print("done")