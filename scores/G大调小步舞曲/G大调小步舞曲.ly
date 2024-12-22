\version "2.24.2"

\header {
  title = "G大调小步舞曲"
}

global = {
  \key g \major
  \time 3/4
  \tempo 4 = 100
}

upper_part_one = \relative c' {
  d'( g,8 a b c |
  d4 g,_.) g_. |
  e'( c8 d e fis |
  g4 g,_.) g_. |
}

upper_first_section = {
  \upper_part_one
  \relative {
    c''( d8 c b a |
    b4) c8( b a g |
    fis4_. g8 a b g |
    b4) a2
  }
  \upper_part_one
  \relative {
    c''4( d8 c b a |
    b4 c8 b a g |
    a4 b8 a g fis |
    g2.)
  }
}

lower_first_section = \relative c' {
  <g b d>2 a4 |
  b2. |
  c |
  b |
  a |
  g |
  d'4 b^. g^. |
  d' d,8 c' b a |
  b2 a4 |
  g b^. g^. |
  c2. |
  b4 c8 b a g |
  a2 fis4 |
  g2 b4 |
  c d^. d,^. |
  g2 g,4
}


upper = {
  \global
  \clef treble
  \upper_first_section
  \upper_first_section
}

lower = {
  \global
  \clef bass
  \lower_first_section
  \lower_first_section
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}\version "2.24.2"

\paper {
  ragged-right = ##t
}

\header {
  title = "G大调小步舞曲"
}

global = {
  \key g \major
  \time 3/4
  \tempo 4 = 100
}

upper_part_one = \relative c' {
  d'( g,8 a b c |
  d4 g,_.) g_. |
  e'( c8 d e fis |
  g4 g,_.) g_. |
}

upper_first_section = {
  \upper_part_one
  \relative {
    c''( d8 c b a |
    b4) c8( b a g |
    fis4_. g8 a b g |
    b4) a2
  }
  \upper_part_one
  \relative {
    c''4( d8 c b a |
    b4 c8 b a g |
    a4 b8 a g fis |
    g2.)
  }
}

lower_first_section = \relative c' {
  <g b d>2 a4 |
  b2. |
  c |
  b |
  a |
  g |
  d'4 b^. g^. |
  d' d,8 c' b a |
  b2 a4 |
  g b^. g^. |
  c2. |
  b4 c8 b a g |
  a2 fis4 |
  g2 b4 |
  c d^. d,^. |
  g2 g,4
}

upper_second_section = \relative c''' {
  b( g8 a b g |
  a4) d,8( e fis d |
  g4 e8 fis g d |
  cis4 b8 cis a4) |
  a8( b cis d e fis |
  g4 fis e |
  fis) a, cis |
  d2. |
  d4( g,8 fis g4) |
  e'( g,8 fis g4) |
  d'4 c b |
  a8( g fis g a4) |
  d,8( e fis g a b |
  c4) b a |
  b8( d g,4) fis |
  <b, d g>2. |
}

lower_second_section = \relative c' {
  g2. |
  fis |
  e4 g^. e^. |
  a2 a,4 |
  a'2. |
  b4 d cis |
  d fis, a |
  d d, c' |
  <<
    {b2 b4}
    \\
    {s4 d2}
  >> |
  <<
    {c2 c4}
    \\
    {s4 e2}
  >> |
  b4 a g |
  d2 r4 |
  <<
    {d2. }
    {s4 r4 fis4}
  >> |
  e4 g fis |
  g b, d |
  g d g, |
}

upper = {
  \global
  \clef treble
  \bar ".|:"
  \upper_first_section
  \bar ":|.|:"
  \upper_second_section
  \bar ":|."
}

lower = {
  \global
  \clef bass
  \bar ".|:"
  \lower_first_section
  \bar ":|.|:"
  \lower_second_section
  \bar ":|."
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}