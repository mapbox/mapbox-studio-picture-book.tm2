
#landuse_overlay[class='wetland'] {
  text-face-name: @icons;
  text-avoid-edges: true;
  text-min-distance: 1;
  text-size: 24;
  text-placement: interior;
  text-fill: mix(@darkgreen,@lightblue,50);
  text-allow-overlap: false;
  text-name: "'j'";
  [osm_id =~ '.*[0123]'] {
    text-fill: mix(@darkgreen,@blue,75);
    text-size: 30;
  }
}

#glaciers {
  text-avoid-edges: true;
  text-placement: point;
  text-min-distance: 30;
  text-face-name: @icons;
  text-name: "'h'";
  text-fill: @snow;
  text-size: 40;
  [zoom>=5]  { text-size: 40; text-min-distance: 2;}
  [zoom>=6] { text-size: 45;}
  [zoom>=7] { text-size: 50;}
}

#reefs {
  text-avoid-edges: true;
  text-placement: interior;
  text-min-distance: 40;
  text-face-name: @icons;
  text-name: "'s'";
  text-fill: mix(@lightblue,@pink,60);
  text-size: 20;
  [zoom>=4] { text-min-distance: 15;}
  [zoom>=5] { text-size: 25;}
  [zoom>=6] { text-size: 30;}
  [zoom>=7] { text-size: 35;}
}

#reefs::alt {
  text-avoid-edges: true;
  text-placement: point;
  text-min-distance: 10;
  text-face-name: @icons;
  text-name: "'s'";
  text-fill: mix(@lightblue,@purple,50);
  text-size: 15;
  [zoom>=4] { text-min-distance: 5;}
  [zoom>=5] { text-size: 20;}
  [zoom>=6] { text-size: 25;}
  [zoom>=7] { text-size: 30;}
}

#landcover {
  text-avoid-edges: true;
  text-name: "'n'";
  text-placement: interior;
  text-min-distance: 1;
  text-face-name: @icons;
  [zoom>=10] {   text-min-distance: 0;}
  [class='scrub'] {
    text-fill: mix(@darkgreen,@green,50);
    text-size: 12;
    [zoom>=5]  { text-size: 15;}
    [zoom>=6] { text-size: 18;}
    [zoom>=7] { text-size: 20;}
    [zoom>=8] { text-size: 22;}
  }
  [class='crop'] {
    text-fill: mix(@darkgreen,@green,50);
    text-size: 15;
    [zoom>=5]  { text-size: 20;}
    [zoom>=6] { text-size: 22;}
    [zoom>=7] { text-size: 24;}
    [zoom>=8] { text-size: 28;}
  }
  [class='wood'] {
    text-fill: mix(@darkgreen,@lightblue,75);
    text-size: 15;
    [zoom>=5]  { text-size: 20;}
    [zoom>=6] { text-size: 24;}
    [zoom>=7] { text-size: 28;}
    [zoom>=8] { text-size: 32;}
  }
  [class='grass'] {
    text-fill: @darkgreen;
    text-size: 20;
    [zoom>=5]  { text-size: 24;}
    [zoom>=6] { text-size: 28;}
    [zoom>=7] { text-size: 32;}
    [zoom>=8] { text-size: 36;}
  }
  [class='snow'] {
    text-name: "'h'";
    text-fill: @snow;
    text-size: 30;
    [zoom>=5]  { text-size: 40;}
    [zoom>=6] { text-size: 45;}
    [zoom>=7] { text-size: 50;}
  }
}
