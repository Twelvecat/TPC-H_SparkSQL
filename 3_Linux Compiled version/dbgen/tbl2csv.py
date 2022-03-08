def converttbldatatocsvformat(filename):
    try:
        tbl = open("".join([filename, ".tbl"]), "r")
        csv = open("".join([filename, ".csv"]), "w+")
        lines = tbl.readlines()
        for line in lines:
            length = len(line)
            line = line[:length - 2] + line[length - 1:]
            line = line.replace(",", ";")
            line = line.replace("|", ",")
            csv.write(line)
        csv.close()
        print(name + " has finished to convert.")
    except OSError as reason:
        print(str(reason))
        pass


if __name__ == '__main__':
    print("This is a tool converting TBL to CSV.")
    filename = ["customer","lineitem","nation","orders","part","partsupp","region","supplier"]
    for name in filename:
        print(name + "is currently being converted")
        converttbldatatocsvformat(name)


