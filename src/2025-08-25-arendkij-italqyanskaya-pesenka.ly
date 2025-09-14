\version "2.20.0"

\header {
  tagline = ""
  title = "Итальянская песенка"
  composer = "А.С. Аренский"
}


\paper {

  indent = 5\mm
  top-margin = 15\mm
  bottom-margin = 15\mm   
  left-margin = 15\mm      
  left-right = 15\mm      
}

musicOne = \relative c' {
  \time 6/8 
  \key g \major
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \repeat volta 2 {
    g8^"pizz. (или arco)"\mf r r d' r r |
    b r r g r r |
    g r r e' r r |
    g, b d\< g b d |
    g->\! r r r4. |
    a8\f fis d a\> fis d |
    \mark \default d\! r r r4. |
    d8 fis a d\< fis a | 
    d->\! r r r4. |
    d8\> b g d b g |
    \mark \default d4\p d8 d4 d8 |
    << { fis4^"div." fis8  fis4 fis8} \\ {d4 d8  d4 d8} >> |
    << { g4 g8 g4 g8 } \\ { d4 d8 a'4 a8 } >> |
    << {g4 g8 g4 g8 }  \\ { b4 b8 b4 b8 } >> |
    \mark \default << {g4 g8 e4 e8 }  \\ { c'4 c8 c4  c8 } >> |
    << { e,4 e8 e4 e8 }  \\ { c'4 c8 c4 c8 } >>
    << {g4 g8 fis4 fis8 }  \\ { <d b'>4 <b d>8 <c d>4 <c d>8 } >>
    << { g'4 }  \\ { <b, d>4 } >> r8 r4 g''8\f^"arco" |
    \mark \default g4( g8--) g4( g8--) |
    <> \< \after 4 \! g4. b4( a8) |
    g4( fis8) e4( d8\>) |
    \after 8 \! c4 r8 r4 fis8 |
    \mark \default fis4( fis8--) fis4( fis8--) |
    <> \< \after 4 \! fis4. a4( g8) |
    fis4( e8) d4\>( c8) |
    b4.\! r4 b8\p |
    \mark \default a4( a8--) b4( b8--) |
    c4 r8 r4 c8\mp |
    b4( b8--) c4\<( c8--) |
    d4.\! r4 d8\mf |
    \mark \default  e4\<( e8--) fis4( fis8--) |
    g4. a4( a8--) |
    
    \alternative {
      \volta 1 {
        b4->\f( g8) a4->( fis8) |
        g4. r4 r8 | 
      }
      \volta 2 {
        b4->\f( g8) a4->( fis8) |
        g4 r8
        <g,, d' b' g'>8\ff^"pizz" r8 r8 \bar "|."
        
      }
    }
    
  }
  
  
  
}

musicTwo = \relative c'' {
  \time 6/8 
  \key g \major
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \repeat volta 2 {
    r2. |
    r4. r4 g8\mf^"(arco)" |
    g4( g8--) g4( g8--) |
    g4.\< b8( r a) |
    g4\!( fis8--) e4\>( d8--) |
    c4\! r8 r4 fis8 |
    \mark \default fis4( fis8--) fis4\<( fis8--) |
    fis4.\! a4( g8--) |
    fis4( e8--) d4\>( c8--) |
    b4\! r8 r4 b8\mp |
    \mark \default a4( a8--) b4( b8--) |
    c4 r8 r4 c8 |
    b4( b8--) c4( c8--) |
    d4 r8 r4 d8 |
    \mark \default e4( e8--) fis4( fis8--) |
    g4. a8( r a) |
    b4->( g8) a4->( fis8) |
    g4.~\> g8 r8\! b\f |
    \mark \default  b4( b8--) b4( b8--) |
    <> \< \after 4 \! b4. g'4( fis8) |
    e4( d8) c4( b8\>) |
    \after 8 \! a4 r8 r4 d8 |
    \mark \default d4( d8--) d4( d8--) |
    <> \< \after 4 \! d4. fis4( e8) |
    d4( c8) b4\>( a8) |
    g4.\! r4 g8\p |
    \mark \default  
    << {fis4^"div."( fis8--) fis4( fis8--) } \\ { d4( d8--) d4( d8--)} >> |
    << { fis4 } \\ {d4} >> r8 r4 << { fis8\mp } \\ {d8} >> |
    << {g4( g8--)  a4\<( a8--) } \\ { d,4( d8--) g4( g8--)} >> |
    << { b4\! } \\ {g4} >> r8 r4 << { b8\mf } \\ {g8} >> | 
    \mark \default 
    << {c4^"div."( c8--) e4( e8--) } \\ { g,4\<( g8--) c4( c8--)} >> |
    << { e4. e4( e8--) } \\ { c4. c4( c8--) } >> |
    \alternative {
      \volta 1 {
        << {g'4( d8) fis4( c8) } \\ { d4\f( b8) c4( a8)} >> |
        << {b4.} \\ {g4.} >> r4 r8
      }
      \volta 2 {
        << {g'4( d8) fis4( c8) } \\ { d4\f( b8) c4( a8)} >> |
        << {b4} \\ {g4} >> r8 <g, d' b' g'>8\ff^"pizz" r8 r8 \bar "|."
      }
    }
  }
  
  
   
  
  
  
  
  
}

musicCommon = \relative c'' {
  \time 6/8 
  \key g \major
  \override Hairpin.minimum-length = 3
  s2.*17 s4. s4 <>^"unis." 
 
}

pianoRight = \relative c' {
  \clef violin
  \time 6/8 
  \key g \major
  \repeat volta 2 {
    <>\mf \repeat unfold 2 { r8  <d g b>8-. <d g b>-. } |
    \after 8 \> \repeat unfold 2 { r8  <d g b>8-. <d g b>-. } |
    r8\p  <d g b>8-. <d g b>-. r8  <e g b>8-. <e g b>-. |
    \ottava #1  d''16( cis d cis d c b8) \ottava #0  r r |
    g,,4 b8-. d-.\< g-. b-.\! |
    <d fis a>4\f r8 r4. |
    \mark \default r8 <d, fis>-. <d fis>-. r8 <d fis>-. <d fis>-. |
    \ottava #1  d''16( cis d cis d cis d8) \ottava #0  r r |
    <a,, fis'>4 fis'8-. a-.\< d-. fis-. |
    <b, d g>4\f r8 r4. |
    \mark \default <d, fis a>4 <d fis a>8 <d fis b>4 <d fis b>8 |
    <d fis c'>4 r8 r4. |
    <d g b>4 <d g b>8 <d g c>4 <d g c>8  |
    <d g d'>4 r8 r4. |
    <g c e>4 <g c e>8 <c e fis>4 <c e fis>8 |
    <c e g>4.( <c e a>8) r r |
    <d g b>4-> <b d g>8 <d fis a>4-> <a d fis>8 |
    \repeat unfold 6 { <b d g>8-> } |
    \mark \default r8\f <d, g b>-. <d g b>-. r8 <e g b>-. <e g b>-. |
    r <d g b>-. d-. g16\<( b d g b d\! |
    \ottava #1 \after 4 \< \after 2. \! g2.\startTrillSpan) |
    a16( \stopTrillSpan fis d fis d a d\> a fis a fis d\!) |
    \mark \default \ottava #0 <>\p \repeat unfold 2 { r8 <d, fis>-. <d fis>-. } |
    r <d fis>-.\< fis16( a d fis a d \ottava #1 fis a |
    d2.\f\<\startTrillSpan) |
    d16->\!\stopTrillSpan( b g b g d g\> d b d b g) |
    \mark \default d4\! \ottava #0 r8 <d, fis b>4 r8 |
    e''16->\f( d c b a g fis\> e d c b a) |
    g4\! r8 <c, g'>4 r8 |
    \ottava #1 a'''16->( g fis e d c b a g fis e d) 
    \mark \default \ottava #0 c4.( fis,4.) |
    <<
      {
        g4.( a4.) |
        \alternative {
          \volta 1 {
            <g b>4. d'16( fis a c d fis) |
            \ottava #1 <b, d g>8->\ff \repeat unfold 5 { <b d g>8-> } \ottava #0 |
          }
          \volta 2 {
            <g, b>4. \oneVoice d'16( fis a c d fis) |
            \ottava #1 <b, d g>8-> \repeat unfold 2 { <b d g>8-> } <b d g>\sf \ottava #0 r r
          }          
        
        }
      }
      \\
      {
        e,,2.( |
        \alternative {
          \volta 1 {
            \voiceOne e4.) s |
            s2.
          }
          \volta 2 {
            \voiceOne e4. s |
            s2.
          }
        }

      }
    >>
    
    
    
    
    
    
    
    
    
  }


}

pianoLeft = \relative c'  {
  \clef bass
  \time 6/8 
  \key g \major
  \repeat volta 2 {
    g8-. r r d-. r r |
    b8-. r r g-. r r |
    g'8-. r r e-. r r |
    b8-. r r g-. r r |
    g4 b8-. d-. g-. b-. |
    d4 r8 r4. |
    \mark \default d,8-. r r a-. r r |
    fis-. r r d-. r r |
    <d d'>4 fis'8-. a-. d-. fis-. |
    g4 r8 r4. |
    \mark \default c,4 c8 b4 b8 |
    a4 r8 r4.|
    \acciaccatura g,8 g'4 r8 \acciaccatura a,8 a'4 r8 |
    <b, b'>4 r8 r4. |
    \mark \default
    << {e4.( fis) } \\ { c2. } >>
    << {g'4.( a) } \\ { c,2. } >>
    <d g b>4 r8 <d fis c'>4 r8 |
    g,16\<( b d g b d\! g4->) d,8 |
    \mark \default g8-. r r e-. r r |
    b-. r r g4. |
    g4-> b8-. d-. g-. b-. |
    <d fis a>8-> r r r4. |
    \mark \default d,8-. r r a-. r r |
    fis-. r r d4. |
    d4-> fis8-. a-. d-. fis-. |
    <g b d>4-. r8 r4. |
    \mark \default <d fis a>4 r8 <b b'>4 r8 |
    <a c fis>-> <a c fis>-. r r4. |
    <b g'>4 r8 <a a'>4 r8 |
    <b g'>8-> <b g'>-. r r4. |
    << { e4.( a4.) } \\ { c,2. } >>
    << { g'4.( a4.) } \\ { c,2. } >>
    \alternative {
      \volta 1 {
        <d b'>4. <d fis c'>4. |
        g,16\<( b d g b d g8->\!) r d-.
      }
      \volta 2 {
        <d, g b>4. <d fis c'>4. |
        g,16\<( b d g b d g8->\!) r r
      }
    }









  }




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
          \tempo Allegro
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
  
    \midi {}

  }
}

\bookpart {
    \header {
    instrument = "Скрипка I, II"
  }
  \score {
    \layout {
      
      \context {
        \Score
      }
    }
    <<
  
      \new ChoirStaff <<
        \new Staff  \with {midiInstrument = "violin"} {
          \tempo Allegro
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
  
    \midi {}

  }
}

\bookpart {
  \header {
    instrument = "Скрипка I"
  }
  \score {

    \new Staff \with {midiInstrument = "violin"} {
      \tempo Allegro
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
      \tempo Allegro
      <<
        { \musicTwo }
        { \musicCommon }
      >>	
    }
  
  }
}





