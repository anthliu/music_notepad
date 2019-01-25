\version "2.18.2"

melody = \relative c' {
    \repeat volta 2 {
        c8 c16 d16 bes8 bes16 c16 a4. a16 c16 |
        f8. a16 c8. f,16 f4 e4 |
        g8 g16 a16 fis8 fis16 a16 g4. g16 bes16 |
        d8. bes16 g8. e16 g4 f4 |
    }
}

melodylow = \relative c {
    \repeat volta 2 {
        c4 e4 f4 r4 |
        d4 g4 b4. d8 |
        b4 a4 g4 r4 |
        f4 a4 bes2
    }
}

development = \relative c' {
    c'4. c,16 c16 bes'4. c,16 c16 |
    a'8. g16 f16 e16 f16 g16 f8 e8 d8 cis8 |
    d'4. d,16 d16 (c'4. a8) |
    d4. d,16 d16 (c'4. a8) |
}

devlow = \relative c {
}

voice = \new Staff {
    \relative c' {
        \clef treble
        \key f \major
        \time 4/4

        {\melody \development}
    }
}

lower = \new Staff {
    \relative c {
        \clef bass
        \key f \major
        \time 4/4

        {\melodylow \devlow}
    }
}

scratch = \relative c' {
    \partial 8 a16 bes16 |
    c4 c,8 c16 c16 bes4. f8
}

\score {
    << \voice \lower >>
    \layout { }
    \midi { }
}

