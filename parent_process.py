import subprocess

if __name__ == "__main__":
    while 1:
        print("starting child process")
        child_file_name = "child_process.py"
        dtv_child = subprocess.Popen(
            ['python', child_file_name])
        dtv_child.wait()



