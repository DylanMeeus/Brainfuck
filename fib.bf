[fibonacci sequence in brainfuck]

store the initial 1 and 1 value
+           c0
>
+           c1

> ++++++ do three iterations       c2
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


    # print what is in c5
     >>>>
    [>>+>+<<<-]>>>[<<<+>>>-]<<+>[<->[>++++++++++<[->-[>+>>]>[+[-<+>]>+>>]<<<<<]>[-]
      ++++++++[<++++++>-]>[<<+>>-]>[<<+>>-]<<]>]<[->>++++++++[<++++++>-]]<[.[-]<]<

    # clear c5 for future iteration
    [ - ]

    # copy value from c4 back into c1
    <
    [
        <<< +
        >>> -
    ]


    << -
]

