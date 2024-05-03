\version "2.24.3"

% TODO: \language english

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

tuba = \new Voice \relative c, {
  \clef bass
    \time 3/4 a4 c b
  | \time 4/4 a c b a
  | g' d e e
  | \time 3/4 f d c\<
  | \time 4/4 c\> g2 g4\p
  | \time 3/2 b a\> g2 ais\pp\fermata
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
    << \global \tuba >>
  >>

  \layout { }
  \midi { }
}

solo_one = \new Voice \relative c' {
    \time 3/4 \partial 4 e4
  | e4 fis g
  | \time 2/4 b a
  | \time 3/4 d c b
  | a2 a4
  |
  | \time 3/4 e2.^\markup{\italic to \italic refrain}
}

\score {
  \header {
    piece = "Verse 1, Solo"
  }
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Trumpet 1" }
    << \global \solo_one >>
  >>
}

solo_two = \new Voice \relative c'' {
    \time 4/4 \partial 4 a8 cis
  | e4. cis8 cis4 b
  | \time 3/4 a2 a4
  | b a fis
  | g2 fis4
  | \time 4/4 e a a b
  | g e fis g
  | a fis fis8 (e) d4
  | \time 3/4 e2.^\markup{\italic to \italic refrain}
}

\score {
  \header {
    piece = "Verse 2, Solo"
  }
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Trombone" }
    << \global \solo_two >>
  >>
}

\header {
  title  = "Lully My Liking"
  subtitle = "Words from Sloane MS. 15th cent."
  composer = "Gustav Holst"
  arranger = "arr. Ryan Gerry"
}
