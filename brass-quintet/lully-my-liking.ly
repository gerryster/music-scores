\version "2.24.3"

\language english

global= {
  \key c \major
}

% TODO: lyrics
trumpets = \new Voice { \transpose bf c'
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
    | \time 3/2 d4 e\> g (fs) e2\pp\fermata
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
  | \time 3/2 d4 c\> d2 cs\pp\fermata
  \bar "|."
}

tuba = \new Voice \relative c, {
  \clef bass
    \time 3/4 a4 c b
  | \time 4/4 a c b a
  | g' d e e
  | \time 3/4 f d c\<
  | \time 4/4 c\> g2 g4\p
  | \time 3/2 b a\> g2 as\pp\fermata
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
  | e4 fs g
  | \time 2/4 b a
  | \time 3/4 d c b
  | a2 a4
  | a b c
  | \time 4/4 b a d a
  | \time 3/2 b a g e2. .^\markup{\italic to \italic refrain}
  \bar "|."
}

\score {
  \header {
    piece = "Verse 1, Solo"
  }
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Trumpet 1" }
    << \key d \major \transpose bf c' \solo_one >>
  >>
}

solo_two = \new Voice \relative c'' {
    \time 4/4 \partial 4 a8 cs
  | e4. cs8 cs4 b
  | \time 3/4 a2 a4
  | b a fs
  | g2 fs4
  | \time 4/4 e a a b
  | g e fs g
  | a fs fs8 (e) d4
  | \time 3/4 e2.^\markup{\italic to \italic refrain}
  \bar "|."
}

\score {
  \header {
    piece = "Verse 2, Solo"
  }
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Tuba" }
    << \global \clef bass \transpose c'' c { \solo_two } >>
  >>
}

solo_three = \new Voice \relative c' {
    \time 3/2 \partial 4 e8 e
  | a4 e a8 e8 e4 e e
  | a b cs2 e,4 e
  | \time 3/4 a a b
  | cs8 cs cs4 a
  | \time 4/4 e'8 d cs b a2^\markup{\italic to \italic refrain}
  \bar "|."
}

\score {
  \header {
    piece = "Verse 3, Solo"
  }
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Trombone" }
    << \global \clef bass \transpose c'' c' \solo_three >>
  >>
}

verse_four_trumpets = \new Voice { \transpose bf c
  \relative c''' {
    | \time 4/4 e4. d8 cs4 a
    | b b a a
    | b cs a fs
    | \time 3/4 g2.
    | g4 g g
    | c2 g4
    | \time 2/4 c d
    | \time 3/4 <e c>2 <e c>4
    | \time 2/4 <e c>4 <e c>4
    | \time 3/4 <f c>2 <e c>4
    | d2.^\markup{\italic to \italic refrain}
    \bar "|."
  }
}

\score {
  \header {
    piece = "Verse 4, Full"
  }
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Trumpets" }
    << \key d \major \verse_four_trumpets >>
    % \new Staff \with { instrumentName = "Horn" }
    % << \key g \major \horn >>
    % \new Staff \with { instrumentName = "Trombone" }
    % << \global \trombone >>
    % \new Staff \with { instrumentName = "Tuba" }
    % << \global \tuba >>
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
