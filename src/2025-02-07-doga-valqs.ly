\version "2.20.0"

\header {
  tagline = ""
  title = "Вальс"
  subtitle = "из к/ф «Мой ласковый и нежный зверь»"
  composer = "Е.Д. Дога"

}


\paper {
  system-system-spacing.basic-distance = #20
  indent = 5\mm
  top-margin = 15\mm
  bottom-margin = 15\mm   
  left-margin = 15\mm      
  left-right = 15\mm      
}

bassnotes = #(define-music-function
              (note1 note2 note3)
              (ly:pitch? ly:pitch?  ly:pitch?)       
              #{
                $note1 8( $note2 \change Staff="rh" $note3)  \change Staff="lh" 
              #})


musicOne = \relative c'' {
  \time 12/8 
  \key a \minor 
  R1. |
  g4.\<\mp b e\! g4(\> fis8)\! |
  b,1. |
  g4. b e fis8( a8. g16)\! |
  c,1. |
  a4. c4. e4. a8( b8. a16) |
  c4.(~ c4 b8) f4. r4. |
  b,8( a'8. g16) g4. 
  e,8(- \markup { \halign #-0.5 \italic "s t r e n g e n d o"} 
  c'8. b16) b4. |
  gis8(  f'8. e16) f8( e f) f4. e |
  c-> c-> c-> c8( d e) |
  f4. a, gis r4. |
  b-> b-> b-> b8( d c) |
  c4. c4( e8) e,4. r4. |
  a-> a-> a8( b c) d( e f) |
  a4. b4(\> c8)\! f,4. r4. |
  f8( e d) d( e f) a4. f8( c'8. b16) |
  b2.~b4 r8 e,( fis gis) |
  a4. r4. r4. r4. |
  R1. | r8\fermata  \bar "|."
  
  
  

}

musicTwo = \relative c''' {
  \time 12/8 
  \key a \minor
  R1.*2 |
  \repeat unfold 4 { g4( fis8) } |
  b,1. |
  \repeat unfold 4 { a'4( g8) } |
  c,2.~c4. r |
  R1. |
  b8( a'8. gis16) gis4. e,8( c'8. b16) b4. |
  gis,8(  f'8. e16) f8( e f) f4. e | 
  a-> a-> a-> a8( b c) |
  d4. f, e r4. | 
  gis-> gis-> gis-> gis8( b a) |
  a4. a4( c8) e,4. r4. |
  f f f8( g a) b( c d) |
  f4. r4. f,8( a b) c( d e) |
  d( c b) b( c d) f4. d8( a'8. gis16) |
  gis2.~gis4 r8 r4. |
  r4. e,8(\p fis gis) a4. r4.|
  R1. | r8\fermata \bar "|."
}

musicCommon = \relative c'' {
  \time 12/8 
  \key a \minor
  \override Hairpin.minimum-length = 3
  s1.*2 |
  s2.\< s4.\! s4\> s8\! |
  s1. |
  s2.\< s4.\! s4\> s8\! |
  s1.*3 |
  s2.\< s4.\! s4. |
  s1.\f |
  s4. s4.\> s4.\mf s4. |
  s1.\f |
  s4. s4.\> s4.\mf s4. |
  s2.\f s2.\< |
  \after 4 \! s4. s4. s2.\mf |
  s2.\< s4.\! s8 s8\f s8 |
  s2. s4. s4.\mp
}

pianoRight = \relative {
  \clef bass
  \time 12/8 
  \key a \minor
  s1.*2 |
  s1.-\tweak X-offset #-1.5 \p |
  s1.-\tweak X-offset #-3.2 \mp |
  \clef violin

  s1.-\tweak X-offset #-1 \p |
  s1. |
  s2. s4. d'4. |
  \clef bass
  r8 \after 8 \< \repeat unfold 2 <dis, a' b>
  r8 e16( gis b d)
  r8 \after 16 \! \repeat unfold 2 <e, gis d'>
  r8 gis16( b d e) |
  r8 \repeat unfold 2 <f, b d>  
  r8 \repeat unfold 2 <f a d> 
  r8 \repeat unfold 2 <dis a' b> 
  s4. |
  <>\f \repeat unfold 3 { r8 <e a c> <e a c> } r8 <e a b> <e a c> |
  \clef violin 
  \repeat unfold 2 { r8 <f a d> <f a d> } 
  r <e gis d'> <e gis d'> s4.  |
  \repeat unfold 4 {r8 <e gis d'> <e gis d'> } |
  \repeat unfold 3 { r8 <e a c> <e a c> } s4. |
  \clef bass
  \repeat unfold 2 { r8 <c f> <c f> }
  \repeat unfold 2 { r8 <c f a> <c f a> } |
  \repeat unfold 2 { r8 <f a c> <f a c> } 
  r8 <f a> <f a> r8 f16( a d f) |
  \repeat unfold 2 { r8 <f, a d> <f a d> }
  \repeat unfold 2 { r8 <f a c> <f a c> } |
  <>\> \after 2. \pp \repeat unfold 3 { r8 <fis b dis> <fis b dis> } r4. |
  R1. |
  \clef violin
  \once \override NoteHead.extra-spacing-width = #'(-2 . 5)
  <d' e gis>2.\pp\arpeggio^Andante 
  <a' a'>8\>^"Allarg." <c c'> <e e'> <a a'>4.~\!
  <a a'>8\fermata  \bar "|."
}

pianoLeft = \relative c,  {
  \clef bass
  \time 4/4 
  \time 12/8 
  \key a \minor
  %   a8 b \change Staff = "rh" c  \change Staff= "lh"
  \repeat unfold 4 { \bassnotes e b' e \bassnotes b, b' g' } |
  \repeat unfold 2 { \bassnotes e, b' e \bassnotes b, b' g' } |
  \repeat unfold 2 { \bassnotes e, b' e \bassnotes b, b' g' } |



  \repeat unfold 4 {
    
    <<
      { \bassnotes a, e' a \bassnotes e, e' c' } \\ { a,4. e4. }
    >>
  }
  
  <<
    { 
    
      \stemUp
      \slurUp
      d'8( \change Staff = "rh" f a) \change Staff = "lh"
      \stemNeutral
      \slurNeutral
      a,8( \change Staff = "rh"  f' d') \change Staff = "lh" }
    \new Voice {
      \voiceTwo
      d,4. a4.
    }
    
  >>
  \bassnotes d, a' a'
  r8
  a,16( d f a) |
  d,,4 r8 e4 r8 gis4 r8 b4 r8 |
  d,4 r8 <b a'>4 r8 <b b'>4. 
  <e  e'>8 
  \change Staff = "rh" <gis' b> \change Staff = "lh" 
  <e, e'> |
  \repeat unfold 2 {<a, a'>4-. r8 <e e'>4-. r8} |
  <b' d'>4-. r8 <f f'>4-. r8 <e e'>4-. r8 
  <b' b'>8 \change Staff = "rh" <e' d'> \change Staff = "lh" <e,, e'> |
  <e' e'>4-. r8 <b b'>4-. r8 <e e'>4-. r8 <e, e'>8 <fis fis'> <gis gis'> |
  <a a'>4-. r8 <e e'>4-. r8 <a a'>4-. r8 <c c'> 
  \change Staff = "rh" <e' a c> \change Staff = "lh" 
  e, |
  \repeat unfold 2 { <f, f'>4-. r8  c'4-. r8 } |
  <f, f'>4 r8 <c' c'>4 r8 <d d'>4 r8 <a a'>4. |  
  <d d'>4 r8 <a a'>4 r8 <f f'>4 r8 <c' c'>4 r8 |
  <b b'>4. <fis fis'> <b b'> r4. |
  R1. |
  <e b' e gis>2.\arpeggio\sustainOn 
  \acciaccatura a'8\sustainOff\sustainOn a
  \acciaccatura c8 c
  \acciaccatura e8 e
  \acciaccatura a8  a4.~
  \after 16 \sustainOff a8\fermata   \bar "|."
   
  

}

\bookpart {

  \score {
      \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }

    <<
  
      \new ChoirStaff <<
        \new Staff  \with {midiInstrument = "violin"} {
          \magnifyStaff #5/7
          \tempo 4=80
          \set Staff.instrumentName="I"
          \set Staff.shortInstrumentName="I"
          <<
            { \musicOne }
            { \musicCommon }
          >>	
        }
        \new Staff \with {midiInstrument = "violin"} {
          \magnifyStaff #5/7
          \set Staff.instrumentName="II"      
          \set Staff.shortInstrumentName="II"
          \musicTwo
        }
      >>
      \new PianoStaff <<
        \set PianoStaff.connectArpeggios = ##t
        \new Staff = "rh" \with {
          \consists "Merge_rests_engraver"
          midiInstrument = "acoustic grand"
        }{
        
        
          \pianoRight
        }
        \new Staff = "lh" \with {midiInstrument = "acoustic grand"} {
          \pianoLeft
        }
      
      >>    
  
    >>
  
    %\midi {}

  }
}
\bookpart {
  \header {
    instrument = "Скрипка I"
  }
  \score {

    \new Staff \with {midiInstrument = "violin"} {
      <<
        { \musicOne }
        { \musicCommon }
      >>	
    }
  
  }
}

\bookpart {
  \header {
    instrument = "Скрипка II"
  }
  \score {

    \new Staff \with {midiInstrument = "violin"} {
      <<
        { \musicTwo }
        { \musicCommon }
      >>	
    }
  
  }
}


\bookpart {
  \header {
    instrument = "Скрипки I, II"
  }

  \score {

    <<
  
      \new ChoirStaff <<
        \new Staff  \with {midiInstrument = "violin"} {
          \tempo 4=80
          \set Staff.instrumentName="I"
          \set Staff.shortInstrumentName="I"
          <<
            { \musicOne }
            { \musicCommon }
          >>	
        }
        \new Staff \with {midiInstrument = "violin"} {
          \set Staff.instrumentName="II"      
          \set Staff.shortInstrumentName="II"
          \musicTwo
        }
      >>
    >>
  
    %\midi {}

  }
}