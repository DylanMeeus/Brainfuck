[fibonacci sequence in brainfuck]

store the initial 1 and 1 value
+           c0
>
+           c1

> ++++ do three iterations       c2
[

    first we copy c1 into c3 and add it to c0
    <
    [
        < +
        >>> +
        << -
    ]

    Then we turn c0 to ascii and output the sum it contains
    ++++ ++++
    [
        < +++ +++
        > -
    ]
    < .

    and we go back to a number representation afterwards
    >
    ++++ ++++
    [
        < --- ---
        > -
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


    < -
]

