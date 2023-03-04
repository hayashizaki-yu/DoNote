import os
import json
from glob import glob


def main():
    SNIPPETS_FILE = '/home/DoNote/.vscode/DoNote.code-snippets'
    try:
        os.remove(SNIPPETS_FILE)
    except FileNotFoundError:
        pass
    output = {}
    for file in glob('/home/DoNote/template/*'):
        if os.path.isfile(file):

            # name and prefix
            prefix = os.path.splitext(os.path.basename(file))[0]
            output[prefix] = {}
            output[prefix]['prefix'] = prefix

            # body
            with open(file, "r") as f:
                lines = f.readlines()
            body_list = [line.rstrip("\n") for line in lines]
            output[prefix]['body'] = body_list

    # dump
    with open(SNIPPETS_FILE, 'w') as f:
        json.dump(output, f, indent=4)


if __name__ == '__main__':
    main()
