import std/unittest, macros

type Op[T, Q : SomeNumber] = tuple #T is the input type and Q the return type of each proc/op
    n: string #name
    w: int    #weight
    p: proc(x, y: T): Q 

const 
    ops: seq[Op[int, int]] = @[
        ( "add", 1, proc(x,y: int): int = x + y ),
        ( "sub", 1, proc(x,y:int): int = x - y ),
        ( "mul", 1, proc(x,y:int): int = x * y),
        ( "div", 1, proc(x,y:int): int = 
            if y == 0: return x
            else: return (x / y).toInt()        
        ),
        ( "and", 1, proc(x,y: int): int = x and y),
        ( "xor", 1, proc(x,y: int): int = x xor y),
        ( "or", 1, proc(x,y: int): int = x or y),
        ( "not", 1, proc(x,y: int): int = not x)
        ]

#Compile and run the tests with "nim c -d:test -r genetic.nim" or run all tests via "nimble test"
when defined(test):
    suite "GeneticOps":
        test "op template":
            var 
                res: int
            for op in ops:
                res = op.p(1,3)
                echo $res
