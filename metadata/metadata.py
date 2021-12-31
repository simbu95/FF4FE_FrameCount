import argparse

parser = argparse.ArgumentParser()

parser.add_argument('filename')

args = parser.parse_args()

fin=open(args.filename,'rb')
fin.seek(0x1FF000)
file_size = int.from_bytes(fin.read(4), byteorder='little')

fout=open("out.txt","w")
fout.write(fin.read(file_size).decode('ascii'))
fout.close()
fin.close()
