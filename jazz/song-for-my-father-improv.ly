\version "2.24.3"

\language english

global= {
  \key c \major
}

solo = \relative c'' {
  % A1 Phrase
  % Gm7
  g4 bf8. d16 r4 r8 f8
  | r1
  % F7
  | f4 ef8 (c8 a8 c4.)
  | r1
  % Ef7
  | e8 r8 e8. e16 e8 r8 r4
  | r1
  % Gm7
  | g8 r8 g8. g16 g8 r8 r4
  | r1

  % A2 Phrase
  % Gm7
  | g,4 (f8 d8 f4 d8 bf8
  | d4 bf8 g8 bf2)
  | r1
  | r1
  % Ef7
  | g'8 f8 ef8 df8 f2
  % D7
  | a4. (b8 b2)
  | r1
  | r1

  % B Phrase
  % F7
  | a4 a8 a bf2
  | bf4. bf8 c2
  | r1
  % Gm7
  | e,16 e e e g8 e d e r4
  % F7 Ef7
  | ef8. ef16 f4 f8. f16 g4
  % D7
  | r4 fs8. fs16 a4\bendAfter #-4 r4
  | r1
  % Gm7
  | a4\bendAfter #-4 r4 r2
  \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff
    << \tempo 4 = 160 \global \solo >>
  >>

  \layout { }
  \midi { }
}

\header {
  title  = "Song for My Father"
  subtitle = "B Flat Instrument Solo"
}
