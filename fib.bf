[fibonacci sequence in brainfuck]


store the initial 1 and 1 value
+           c0
>
+           c1

print starting value using c2

> ++++ ++++
[
    < +++ +++
    > -
]
< .

> ++++ ++++
[
    < --- ---
    > -
]

++++++ do this amount of iterations       c2
[

    first we copy c1 into c3 and add it to c0
    <
    [
        < +
        >>> +
        << -
    ]

    We need to swap c0 and c1 for the next loop

    First I put c0 into c1
    <
    [
        > +
        < -
    ]

    now c3 into c0
    >>>
    [
        <<< +
        >>> -
    ]


    # backup c1 in c4 and prepare for printing in c5
    <<  c1
    [
        >>> +   c4
        > +     c5
        <<<< -  c1
    ]


    # print a space using c6 and c7
    >>>>>
    ++++
    [
        > ++++ ++++
        < -
    ]
    > .
    [-] < [-]


    # print what is in c5
    <
    [>>+>+<<<-]>>>[<<<+>>>-]<<+>[<->[>++++++++++<[->-[>+>>]>[+[-<+>]>+>>]<<<<<]>[-]
      ++++++++[<++++++>-]>[<<+>>-]>[<<+>>-]<<]>]<[->>++++++++[<++++++>-]]<[.[-]<]<

    # clear c5 for future iteration
    [ - ]

    # print a space using c5 and c6 (using 4 * 8 == 32 which is the ascii value of space)


    # copy value from c4 back into c1
    <
    [
        <<< +
        >>> -
    ]


    << -
]

