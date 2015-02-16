#hillshade {
  text-face-name: @icons;
  text-avoid-edges: true;
  text-allow-overlap: false;
  text-name: "'e'";
  text-margin: 5;
  [class='full_highlight'] {
 	text-fill: mix(@gray,@green,30);
    text-name: "'e'";
    text-size: 12;
    text-margin: 3;
    [zoom>=5]  { text-size: 15; }
    [zoom>=6] { text-size: 18; }
    [zoom>=7] { text-size: 22; text-margin: 5; }
  }
  [class='medium_shadow'] {
    text-name: "'f'";
 	text-fill: mix(@gray,@green,40);
    text-size: 15;
    [zoom>=5]  { text-size: 25; text-margin: 20;}
    [zoom>=6] { text-size: 35; text-margin: 20;}
    [zoom>=7] { text-size: 40; text-margin: 30;}
  }
  [class='medium_highlight'] {
    text-name: "'e'";
    text-fill: mix(@gray,@green,20);
    text-margin: 8;
    text-size: 30;
    [zoom>=5]  { text-size: 30; text-margin: 10;}
    [zoom>=6] { text-size: 40; text-margin: 10;}
    [zoom>=7] { text-size: 45; text-margin: 20;}
  }
  [class='full_shadow'] {
    text-fill: mix(@gray,@green,40);
    text-name: "'f'";
    text-margin: 12;
    text-size: 30;
    [zoom>=5]  { text-size: 40;}
    [zoom>=6] { text-size: 45;}
    [zoom>=7] { text-size: 50;}
    [zoom>=8] { text-size: 60;}
  }
}


#landuse_overlay[class='wetland'] {
  text-face-name: 'Picturebook Regular';
  text-avoid-edges: true;
  text-margin: 10;
  text-size: 24;
  text-placement: interior;
  text-fill: mix(@darkgreen,@lightblue,50);
  text-allow-overlap: false;
  text-name: "'n'";
  [osm_id =~ '.*[0189]'] {
  text-name: "'k'";
  }
  [osm_id =~ '.*[0123]'] {
    text-fill: mix(@darkgreen,@blue,75);
    text-size: 30;
  }
}

#glaciers {
  text-avoid-edges: true;
  text-placement: point;
  text-margin: 5;
  text-face-name: @icons;
  text-name: "'e'";
  text-fill: @snow;
  text-size: 40;
  [zoom>=5]  { text-size: 40;}
  [zoom>=6] { text-size: 45;}
  [zoom>=7] { text-size: 50;}
}

#reefs {
  text-avoid-edges: true;
  text-placement: interior;
  text-margin: 2;
  text-face-name: @icons;
  text-name: "'l'";
  text-fill: mix(@lightblue,@pink,60);
  text-size: 20;
  [zoom>=5] { text-size: 25;}
  [zoom>=6] { text-size: 30;}
  [zoom>=7] { text-size: 35;}
}

#reefs::alt {
  text-avoid-edges: true;
  text-placement: point;
  text-margin: 1;
  text-face-name: @icons;
  text-name: "'m'";
  text-fill: mix(@white,@lightblue,25);
  text-size: 15;
  [zoom>=5] { text-size: 20;}
  [zoom>=6] { text-size: 25;}
  [zoom>=7] { text-size: 30;}
}

#reefs::alt2 {
  text-avoid-edges: true;
  text-placement: interior;
  text-margin: 2;
  text-face-name: @icons;
  text-name: "'n'";
  text-fill: mix(@lightblue,@pink,25);
  text-size: 15;
  text-dy: 10;
  text-dx: 5;
  [zoom>=5] { text-size: 20;}
  [zoom>=6] { text-size: 25;}
  [zoom>=7] { text-size: 30;}
}

#landcover {
  text-avoid-edges: true;
  text-name: "'o'";
  text-placement: interior;
  text-margin: 1;
  [zoom>=5] { text-margin: 3;}
  [zoom>=6] { text-margin: 4;}
  [zoom>=10] { text-margin: 1;}
  text-face-name: @icons;
  [class='scrub'] {
    text-name: "'o'";
    text-fill: mix(@darkgreen,@green,50);
    text-size: 12;
    [zoom>=5]  { text-size: 15;}
    [zoom>=6] { text-size: 18;}
    [zoom>=7] { text-size: 20;}
    [zoom>=8] { text-size: 22;}
  }
  [class='crop'] {
    text-name: "'s'";
    text-fill: mix(@darkgreen,@pink,80);
    text-size: 15;
    [zoom>=5]  { text-size: 20;}
    [zoom>=6] { text-size: 22;}
    [zoom>=7] { text-size: 24;}
    [zoom>=8] { text-size: 28;}
  }
  [class='wood'] {
    text-name: "'q'";
    text-fill: mix(@darkgreen,@lightblue,75);
    text-size: 15;
    [zoom>=5]  { text-size: 20;}
    [zoom>=6] { text-size: 24;}
    [zoom>=7] { text-size: 28;}
    [zoom>=8] { text-size: 32;}
  }
  [class='grass'] {
    text-name: "'p'";
    text-fill: @darkgreen;
    text-size: 20;
    [zoom>=5]  { text-size: 24;}
    [zoom>=6] { text-size: 28;}
    [zoom>=7] { text-size: 32;}
    [zoom>=8] { text-size: 36;}
  }
  [class='snow'] {
    text-name: "'e'";
    text-fill: @snow;
    text-size: 30;
    [zoom>=5]  { text-size: 40;}
    [zoom>=6] { text-size: 45;}
    [zoom>=7] { text-size: 50;}
  }
}

#landuse[class='wood'] {
  [zoom>=5] { text-margin: 30;}
  [zoom>=6] { text-margin: 50;}
  [zoom>=8] { text-margin: 60;}
  text-avoid-edges: true;
  text-name: "'p'";
  text-placement: interior;
  text-face-name: @icons;
  text-fill: mix(@darkgreen,@pink,80);
  text-size: 12;
  [zoom>=5]  { text-size: 15;}
  [zoom>=6] { text-size: 18;}
  [zoom>=7] { text-size: 20;}
  [zoom>=8] { text-size: 22;}
}
