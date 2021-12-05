dirX=0
dirY=0
aim=0

infile = open("input", "r")
for line in infile:
    sline = line.split()
    amount = int(sline[1])
    if sline[0] == "forward":
        dirX += amount
        dirY += amount * aim
    elif sline[0] == "down":
        aim += amount
    elif sline[0] == "up":
        aim -= amount

infile.close()

final = dirX * dirY
print(final)
