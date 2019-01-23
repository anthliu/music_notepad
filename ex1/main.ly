\version "2.18.2"

melody = \relative c' {
    \repeat volta 2 {
        c8 c16 d16 bes8 bes16 c16 a4. a16 c16 |
        f8. a16 c8. f,16 f4 e4 |
        g8 g16 a16 fis8 fis16 a16 g4. g16 bes16 |
        d8. bes16 g8. e16 g4 f4 |
    }
}

development = \relative c' {
    c'4. c,16 c16 bes'4. c,16 c16 |
    a'8. g16 f16 e16 f16 g16 f8 e8 d8 cis8 |
    d'4. d,16 d16 (c'4. a8) |
    d4. d,16 d16 (c'4. a8) |
}

voice = \new Staff {
    \relative c' {
        \clef treble
        \key f \major
        \time 4/4

        {\melody \development}
    }
}

scratch = \relative c' {
    \partial 8 a16 bes16 |
    c4 c,8 c16 c16 bes4. f8
}

\score {
    \voice
    \layout { }
    \midi { }
}

