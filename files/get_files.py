import os
import hashlib
import json

def calculate_hash(filepath):
    """ Calculate the SHA-1 hash of a file. """
    sha1 = hashlib.sha1()
    with open(filepath, 'rb') as f:
        while True:
            data = f.read(65536)  # Read in 64kb chunks
            if not data:
                break
            sha1.update(data)
    return sha1.hexdigest()

def scan_directory(directory):
    """ Scan the directory and return file details. """
    files = []
    for root, _, filenames in os.walk(directory):
        for filename in filenames:
            filepath = os.path.join(root, filename)
            file_info = {
                "name": filepath,
                "size": os.path.getsize(filepath),
                "hash": calculate_hash(filepath)
            }
            files.append(file_info)
    return files

def main():
    directory = input("Enter the directory path: ")
    files = scan_directory(directory)

    # Write to files.json
    with open('files1.json', 'w') as json_file:
        json.dump(files, json_file, indent=4)

if __name__ == "__main__":
    main()