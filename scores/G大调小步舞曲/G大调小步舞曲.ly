\version "2.24.2"

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

melody_part_one = \relative c' {
  d'( g,8 a b c |
  d4 g,_.) g_. |
  e'( c8 d e fis |
  g4 g,_.) g_. |
}

upper = {
  \global
  \clef treble
  \melody_part_one
  \relative {
    c''( d8 c b a |
    b4) c8( b a g |
    fis4_. g8 a b g |
    b4) a2 
  }
  \melody_part_one
  \relative {
    c''4( d8 c b a |
    b4 c8 b a g |
    a4 b8 a g fis |
    g2.)
  }
}

lower = \relative c' {
  \global
  \clef bass
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

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}