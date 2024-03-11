import sys
import argparse
import re

def argparser(args):
    parser = argparse.ArgumentParser(description='Iterate through each line then each character and inform user which character is non-ascii encoding')
    parser.add_argument('file', help='file path for checking')

    return parser.parse_args(args)


def main(arguments):

    try:
        filehandler = open(arguments.file ,encoding='utf8')
        filelist = filehandler.readlines()
    except Exception as ex:
        print(ex)

    # Match none ASCII only
    regex = re.compile("[^\x00-\x7F]")
    whichline = 1

    for line in filelist:
        if regex.match(line):
            
            whichchar = 1
            
            for char in line:
                if regex.match(char):
                    print(whichline,':',whichchar,':',char,'is none ASCII character')
                whichchar += 1
        whichline += 1
    
    print('EOF')

if __name__ == '__main__':
    argv = argparser(sys.argv[1:])
    main(argv)