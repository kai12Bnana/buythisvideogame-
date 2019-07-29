def readSQLFile(path):
        f = open(path, "r", encoding="UTF-8")
        lines = f.readlines()
 
        sQLList = []
        thisSQLFile = ""
        tmpNote = False
        for line in lines:
            string = str(line).strip()
            if string == "":
                continue
 
# has multi-line comment
            if tmpNote:
                if string.startswith("*/"):
                    tmpNote = False
                continue
            if string.startswith("/*"):
                tmpNote = True
                continue
            if string.startswith("#") or string.startswith("--"):
                continue
 
            strNote1 = False
            strNote2 = False
            for i in range(len(string)):
                syb = string[i]
              
                if "'" == syb:
                    if not strIn1:
                        strNote1 = True
                    else:
                        strNote1 = False
                    continue
 
                if '"' == syb:
                    if not strNote2:
                        strNote2 = True
                    else:
                        strNote2 = False
                    continue
 
                if strNote1 is True and strNote2:
                    continue
 
# terminate SQL file
                if ";" == syb:
                    string = string[0:(i + 1)]
                    break
 
# if comment at the behind of file 
                if "#" == syb:
                    string = string[0:i]
                    break
                if "-" == syb and i <= len(string) - 2 \
                        and "-" == string[i + 1]:
                    string = string[0:i]
                    break
 #terminate SQL file
            if string.endswith(";"):
                sQLList.append(copy.deepcopy(thisSQLFile))
                thisSQLFile = ""
 
        return sQLList

