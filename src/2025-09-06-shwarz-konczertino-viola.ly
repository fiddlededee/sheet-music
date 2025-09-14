\version "2.20.0"

\header {
  tagline = ""
  title = "Концертино"
  subtitle = "из к/ф «Белые ночи в Ленинграде»"
  composer = "И.И. Шварц"
}


\paper {

  indent = 5\mm
  top-margin = 15\mm
  bottom-margin = 15\mm   
  left-margin = 15\mm      
  left-right = 15\mm      
  ragged-last-bottom = ##f
}

musicOne = \relative c' {
  \clef bass
  \time 12/8 
  \key cis \minor
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
  r1. | r4. <gis e'>2.~\pp <gis e'>4. |
  r4. <fis dis'>2.~ <fis dis'>4. | r4. <fis dis'>2.~ <fis dis'>4. |
  r4. <gis e'>2.~ <gis e'>4. | r4. <b d>2.~ <b d>4. |
  r4. <a dis>2.~ <a dis>4. | 
  r4. gis( e2.) | r4. fis( dis2.) |
  r4. gis4.~ gis4. 
  \once \override Slur.minimum-length = #6
  \clef violin gis'4\tweak X-offset #-1.5 \mp\<( a8) |
  \mark \default cis4.\! b2.~ b4.~ |
  \time 6/8 b \tuplet 4/6 { a16\<( gis fis gis) } |
  \time 12/8 b4.\!( a) dis, e4( fis8) |
  a4.( gis2.) \tuplet 4/6 { fis16( e dis e) } |
  gis4.( fis2.) e4( dis8) |
  cis2.\>~ cis4.\! r |
  \mark \default r4. gis'( cis cis,) |
  fis1.\> |
  r4.\! ais( dis dis,) |
  r4. <>\< \after 2. \> dis2.~ dis4. |
  r4.\! cis4.( bis2. |
  a4.\>~ a2.\!) r4. |
  r4. cis2.~ cis4. |
  r4. dis( bis gis |
  cis2.\>~ cis4.\!) \clef bass dis,4\mf( e8_"espr") |
  \mark \default eis2.^"Poco piu mosso"~ eis4. e4( eis8) |
  fis\< eis fis\! cis'4.\>( cis,\!) eis4( fis8) |
  g2.~ g8 fis8\<( g) ais( a ais\!) |
  dis2.( gis,) |
  cis2.^"Tempo  I"\<~ cis8\! bis( cis) b( ais b) |
  a4.( dis,2.) e4\<( fis8\!) |
  a4.( gis2.) \tuplet 4/6 { fis16\<( e dis e\!) } |
  gis4.( fis2.) e4( dis8) |
  cis2.\>~ cis4.\! r |
  \mark \default \clef violin fis'2.\pp~( fis4. a) |
  gis2.( eis) | fis( a) |
  gis1.\dim | cis,\dim | cis~\! | cis ~ | cis~ |
  \time 15/8 cis~ cis4. |
  \time 12/8 r2. r4. e4\mf( fis8_"dolce espr") |
  \mark \default a4.( gis~ gis) \tuplet 4/6 { fis16( e dis e) } |
  gis4( fis8) dis4.~ dis dis4( e8) |
  gis4.( fis~ fis) \tuplet 4/6 { e16( dis cis dis) } |
  fis4.( e~ e) gis4\<( a8\!) |
  cis4.( b~ b) \tuplet 4/6 { a16 gis fis gis } |
  b4.( a~ a) e4\<( fis8\!) |
  a4.( gis~ gis) \tuplet 4/6 { fis16 e dis e } |
  gis4.\>( fis~\! fis) e4\>( dis8\!) |
  \mark \default \time 9/8 e4.\p c2. |
  cis?4. a2. |
  \time 12/8 cis4. a2. r4. |
  \time 9/8 \clef bass g2. ~ g4. |
  fis2.~ fis4.~ | \time 6/8 fis8 r r r4.^"rit." |
  \time 12/8 e1. | e1.~ | e8 r r r4. r2. \bar "|."
  
  
}

musicTwo = \relative c'' {
  \time 6/8 
  \key g \major
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
 
  
}

musicCommon = \relative c'' {
  \time 12/8 
  \key cis \minor
  \override Hairpin.minimum-length = 3

 
}

pianoRight = \relative c' {
  \clef alto
  \time 12/8 
  \key gis \major
  

}

pianoLeft = \relative c'  {
  \clef bass
  \time 6/8 
  \key g \major
}

% \bookpart {
% 
%   \score {
%     \layout {
%       
%       \context {
%         \Score
%         \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
%       }
%     }
% 
%     <<
%   
%       \new ChoirStaff <<
%         
%         \new Staff  \with {midiInstrument = "violin"} {
%           \magnifyStaff #5/7
%           \tempo Allegro
%           \set Staff.instrumentName="I"
%           \set Staff.shortInstrumentName="I"
%           <<
%             
%             { \musicOne }
%             { \musicCommon }
%           >>	
%         }
%         \new Staff \with {midiInstrument = "violin"} {
%           \magnifyStaff #5/7
%           \set Staff.instrumentName="II"      
%           \set Staff.shortInstrumentName="II"
%           \musicTwo
%         }
%       >>
%       \new PianoStaff <<
%         \set PianoStaff.connectArpeggios = ##t
%         \new Staff = "rh" \with { 
%           \consists "Merge_rests_engraver"
%           midiInstrument = "acoustic grand"
%         }{ 
%           \pianoRight
%         }
%         \new Staff = "lh" \with {midiInstrument = "acoustic grand"} {
%           \pianoLeft
%         }
%       
%       >>    
%   
%     >>
%   
%     \midi {}
% 
%   }
% }
% 
% \bookpart {
%     \header {
%     instrument = "Скрипка I, II"
%   }
%   \score {
%     \layout {
%       
%       \context {
%         \Score
%       }
%     }
%     <<
%   
%       \new ChoirStaff <<
%         \new Staff  \with {midiInstrument = "violin"} {
%           \tempo Allegro
%           \set Staff.instrumentName="I"
%           \set Staff.shortInstrumentName="I"
%           <<
%             { \musicOne }
%             { \musicCommon }
%           >>	
%         }
%         \new Staff \with {midiInstrument = "violin"} {
%           \set Staff.instrumentName="II"      
%           \set Staff.shortInstrumentName="II"
%           \musicTwo
%         }
%       >>
%     >>
%   
%     \midi {}
% 
%   }
% }

\bookpart {
  \header {
    instrument = "Виолончель"
  }
  \score {
    \layout {
      
      \context {
        \Score
%         \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      }
    }

    \new Staff \with {midiInstrument = "cello"} {
      \tempo "Moderato assai"
      <<
        { \musicOne }
        { \musicCommon }
      >>	
    }
        \midi {  \tempo 4 = 96 }
  }
}

% \bookpart {
%   \header {
%     instrument = "Скрипка II"
%   }
%   \score {
% 
%     \new Staff \with {midiInstrument = "violin"} {
%       \tempo Allegro
%       <<
%         { \musicTwo }
%         { \musicCommon }
%       >>	
%     }
%   
%   }
% }
% 
% 
