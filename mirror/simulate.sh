#!/bin/bash

cat > simulate.py << 'EOF'
import os

class SimpleShell:
    def __init__(self):
        self.filesystem = {}
        self.current_path = "/"

    def run(self):
        while True:
            command = input(f"sim@localhost{self.current_path}$ ").strip().split(" ")
            cmd = command[0]
            args = command[1:]

            if cmd == "mkdir":
                self.mkdir(*args)
            elif cmd == "nano":
                self.nano(*args)
            elif cmd == "cat":
                self.cat(*args)
            elif cmd == "ls":
                self.ls()
            elif cmd == "cd":
                self.cd(*args)
            elif cmd == "clear":
                os.system('clear' if os.name == 'posix' else 'cls')
            elif cmd == "exit":
                break
            else:
                print(f"Unknown command: {cmd}")

    def mkdir(self, name):
        path = os.path.join(self.current_path, name)
        self.filesystem[path] = {"type": "directory", "children": {}}

    def nano(self, name):
        print("Simple text editor. Exit with a double Enter.")
        content = []
        while True:
            line = input()
            if line == "":
                break
            content.append(line)
        path = os.path.join(self.current_path, name)
        self.filesystem[path] = {"type": "file", "content": "\n".join(content)}

    def cat(self, name):
        path = os.path.join(self.current_path, name)
        if path in self.filesystem and self.filesystem[path]["type"] == "file":
            print(self.filesystem[path]["content"])
        else:
            print("File not found.")

    def ls(self):
        for path, info in self.filesystem.items():
            if os.path.dirname(path) == self.current_path:
                print(os.path.basename(path))

    def cd(self, path):
        if path == "/":
            self.current_path = path
        else:
            new_path = os.path.normpath(os.path.join(self.current_path, path))
            if new_path in self.filesystem and self.filesystem[new_path]["type"] == "directory":
                self.current_path = new_path
            else:
                print("Directory not found.")

if __name__ == "__main__":
    shell = SimpleShell()
    shell.run()
EOF

echo "simulate.py has been created."