import os
import sys
import subprocess

def pip_install(package):
    subprocess.check_call(["pip", "install", package])

pip_install('numpy')
pip_install('ultralytics')
pip_install('opencv-python')
pip_install('torch')
pip_install('torchvision')
pip_install('torchaudio')
pip_install('GitPython')

try:
    os.mkdir('yolo_date')
except:
    exit()
    a = 0

from git import Repo
now_path = os.getcwd().replace('\\','/') + '/yolo_date'
clone = 'https://github.com/riha1432/DataSet.git'

print('종료하지 마시요')
repo = Repo.clone_from(clone, now_path)
print('다운로드 완료')