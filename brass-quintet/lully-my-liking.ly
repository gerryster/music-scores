\version "2.24.3"

% hornMusic = \transpose c' f
%  \relative c { d'1 fis }

\relative {
  \time 3/4 c'' a b | \time 4/4 c a b c | d b a g | \time 3/4 a b c | \time 4/4 e d2 b4 | \time 3/2 g4 a b2 a \bar "|."
}

global= {
  \key c \major
}

trumpets = \new Voice { \transpose bes c'
    \relative c'' {
    \time 3/4 c4 a b | \time 4/4 c a b c | d b a g | \time 3/4 a b c | \time 4/4 e d2 b4 | \time 3/2 g4 a b2 a
    \bar "|."
  }
}

horn = \new Voice { \transpose f c
    \relative c' {
    \time 3/4 e4 e g | \time 4/4 e e g e | g f e e | \time 3/4 c d e | \time 4/4 g g2 g4 | \time 3/2 d4 e g (fis) e2
    \bar "|."
  }
}

viola = \new Voice \relative c' {
  \clef alto
  e2 d
  c1
  \bar "|."
}

cello = \new Voice \relative c' {
  \clef bass
  c2 b
  a1
  \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Trumpets" }
    % << \key bes \major \trumpets >>
    << \global \trumpets >>
    \new Staff \with { instrumentName = "Horn" }
    << \global \horn >>
    \new Staff \with { instrumentName = "Trombone" }
    << \global \viola >>
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
