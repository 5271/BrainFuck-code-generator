proc bfLetter(a: int, b: int): string =
    var opt: string;

    opt.add("\n\n> ++++++++\n[\n   < ");
    for i in 1 .. a:
        opt.add("+");
    opt.add("\n    > -\n]\n< ")
    for i in 1 .. b:
        opt.add("+");
    opt.add(".");

    opt.add("\n> ++++++++\n[\n   < ");
    for i in 1 .. a:
        opt.add("-");
    opt.add("\n    > -\n]\n< ")
    for i in 1 .. b:
        opt.add("-");
    
    return opt;

proc toBf(str: string) =
    var 
        a,b,c: int
        bfLtr: string;

    for ch in str:
        a = int (byte ch);
        b = a div 8;
        c = a mod 8;
        bfLtr.add(bfLetter(b, c));

    writeFile("output.bf", bfLtr);
    echo "File successfully created - output.bf";

var inp: string = readLine(stdin);

toBf(inp);