\version "2.20.0"

\header {
  tagline = ""
  title = "Колокольчик"
  subtitle = "из оперы «Волшебная флейта»"
  composer = "В.А.Моцарт"

}


 \paper {
    system-system-spacing.basic-distance = #20
    indent = 5\mm
    top-margin = 15\mm
    bottom-margin = 15\mm   
    left-margin = 15\mm      
    left-right = 15\mm      
 }
 

musicOne = \relative c'' {
  \time 4/4 
  \key g \major 
  \partial 4 
  d8(\upbow\p c_"leggiero")|
  b4-- g'-. b-. d,8( \upbow b) |
  c4-- a'-.-1 c-.  c,8( \upbow b) |
  a4-- fis'-. a-. fis-. |
  g8( b) g-. b-. g4-. d8( \upbow c) |
  b4-- d8-. g-. b4-- d,8-. b-. |
  c4-- e8-.-0 a-.-1 c4---3 e,8-.-0 c-.-2 |
  b-- d-. g4-. a,8-- c-. fis4-. |  
  g-. b-. g-. d8( \upbow\mf c_"sonore") |
  b4-- b-. r b- \upbow |
  c-- c-. r c8( \upbow b) |
  a4-- a-. r a \upbow |
  b2 r4 d8( \upbow c) |
  b2 b4 b |
  c4.( d8) e4 c |
  b2 a4.-0( a8--) |
  g2-3 r4 c8(\upbow\mp b) |
  a4-- a-. r a( \downbow |
  b--) b-. r b \upbow |
  c2 c4.( d8) |
  b2 r4 b8( \upbow c) |
  d2 d4 d |
  e4.( fis8) g4 c, |
  b2 a4.( a8--) |
  g2-3 r4 c8(\upbow\mp b) |
  
  a4-- fis'8-. 
    \override TextSpanner.style = #'line
    \override TextSpanner.bound-details.left.text =
      \markup { \draw-line #'(0 . -1 ) }
    \override TextSpanner.bound-details.right.text =
      \markup { \draw-line #'(0 . -1 ) }  
    d-.  \startTextSpan a'4-. \stopTextSpan a,8-. c-. |
  b4-- g'8-. d-. b'4-. b,8-. d-. |
  c4-- a'8-. fis-.-1 c'4---4 fis,8-.-1 a-. |
  g( b) g-. b-. d,4 b8( \upbow c) |
  d2 d4-1 d4 |
  e4.( fis8) g4 c, \mark "allarg." |
  <d, b'>2 <d a'>4.( <d a'>8--) |
  <g, g'>2~<g g'>4 \partial 4
  \bar "|." 
}

musicTwo = \relative c'' {
  \time 4/4 
  \key g \major
  \partial 4 b8_3(\upbow\p a_"leggiero") |
  g4-- b-. d-.-4\flageolet b8( \upbow g) |
  a4---2 d-.-4\flageolet a-. a8_2( \upbow g) |
  d4---0 a'-._0 c-.-2 a-. |
  b8( d) b-. d-. b4-. b8( \upbow a) |
  g4-- b8-. d-. g4-- b,8-. g-. |
  e4-- a8-. c-. e4-- c8-. a-. |
  g-- b-. d4-. d,8-- a'-. c4-. |
  b4-. d-. b-. b8(\upbow\mf a_"sonore") |
  g4-- g-. r g \upbow |
  a-- a-. r a8( \upbow g) |
  fis4-- fis-. r4 fis \upbow |
  g2 r4 b8_\finger "(3)" ( \upbow a) |
  g2 g4 g |
  a4._0( b8) c4 a |
  g2 fis4.( fis8--) |
  g2 r4 a8(\upbow\mp g) |
  fis4-- fis-. r fis( \downbow |
  g--) g-. r g \upbow |
  a2 a4.( b8) |
  g2 r4 g8_1( \upbow a) |
  b2 b4-1 b |
  c4.( d8) e4 e, |
  d2 fis4.( fis8--) | 
  g2 r4 a8(\upbow\mp g) |
  fis4-- d'8-. a-. fis'4-. r |
  g,-- d'8-. b-. g'4-. r |
  a,-- fis'8-. c-. a'4 a,8-. c-. |
  b8( d) b-. d-. b4 g8_1( \upbow a) |
  b2 b4 b4 |
  c4.( d8) e4 e, |
  d2 c4.( c8--) |
  b2~b4
  
  
 
}


pianoRight = \relative {
  \time 4/4 
  \key g \major
  \partial 4 r4 |
 
     
  
}

pianoLeft = \relative  {
  \clef bass
  \time 4/4 
  \key g \major
  \partial 4 r4 |
  
 

}

\score {
  <<
  
    \new ChoirStaff <<
      \new Staff \with {midiInstrument = "violin"} {
        \tempo "Allegretto"
        \set Staff.instrumentName="I"
        \set Staff.shortInstrumentName="I"
        \musicOne
      }
      \new Staff \with {midiInstrument = "violin"} {
        \set Staff.instrumentName="II"      
        \set Staff.shortInstrumentName="II"
        \musicTwo
      }
    >>
 %    \new PianoStaff <<
%           
%          \new Staff = "rh" \with {
%            \consists "Merge_rests_engraver"
%            midiInstrument = "acoustic grand"
%          }{
%            
%                
%            \pianoRight
%          }
%          \new Staff \with {midiInstrument = "acoustic grand"} {
%            \pianoLeft
%          }
%          
%     >>    
  
  
  
  >>
  %\midi {}

}


