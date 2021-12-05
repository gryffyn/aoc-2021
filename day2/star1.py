dirX=0
dirY=0

infile = open("input", "r")
for line in infile:
    sline = line.split()
    amount = int(sline[1])
    if sline[0] == "forward":
        dirX += amount
    elif sline[0] == "down":
        dirY += amount
    elif sline[0] == "up":
        dirY -= amount

infile.close()

final = dirX * dirY
print(final)
