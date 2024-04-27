\version "2.24.3"

global= {
  \key c \major
}

% TODO: lyrics
trumpets = \new Voice { \transpose bes c'
    \relative c'' {
      \time 3/4 c4 a b
    | \time 4/4 c a b c
    | d b a g
    | \time 3/4 a b c\<
    | \time 4/4 e\> d2 b4\p
    | \time 3/2 g4 a\> b2 a\pp\fermata^\markup{\italic Fine}
    \bar "|."
  }
}

horn = \new Voice { \transpose f c
    \relative c' {
      \time 3/4 e4 e g
    | \time 4/4 e e g e
    | g f e e
    | \time 3/4 c d e\<
    | \time 4/4 g\> g2 g4\p
    | \time 3/2 d4 e\> g (fis) e2\pp\fermata
    \bar "|."
  }
}

trombone = \new Voice \relative c {
  \clef bass

    \time 3/4 e4 c d
  | \time 4/4 e c d e
  | b d b b
  | \time 3/4 a f g\<
  | \time 4/4 g\> b2 d4\p
  | \time 3/2 d4 c\> d2 cis\pp\fermata
  \bar "|."
}

cello = \new Voice \relative c' {
  \clef bass
  c2 b
  a1
  \bar "|."
}

\score {
  \header {
    piece = "Refrain"
  }
  % TODO: tempo mark
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Trumpets" }
    << \key d \major \trumpets >>
    \new Staff \with { instrumentName = "Horn" }
    << \key g \major \horn >>
    \new Staff \with { instrumentName = "Trombone" }
    << \global \trombone >>
    \new Staff \with { instrumentName = "Tuba" }
    << \global \cello >>
  >>
  \layout { }
  \midi { }
}

\header {
  title  = "Lully My Liking"
  subtitle = "Words from Sloane MS. 15th cent."
  composer = "Gustav Holst"
  arranger = "arr. Ryan Gerry"
}
