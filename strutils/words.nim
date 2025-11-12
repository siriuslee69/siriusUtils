import strutils

proc toWords(str: string): seq[string] =
    return str.splitWhitespace()
    
