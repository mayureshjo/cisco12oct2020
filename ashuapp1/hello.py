import  time
import  subprocess

while True:
    print("current time is ",time.ctime())
    time.sleep(2)
    print("my current docker is running on linux version ",subprocess.getoutput('uname  -r'))
    time.sleep(1)
    print("_____________________________________________")
