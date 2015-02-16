
#hillshade[zoom<=10] {
  text-face-name: @icons;
  text-comp-op: overlay;
  text-avoid-edges: true;
  text-min-distance: 1;
  text-allow-overlap: false;
  text-name: "'a'";
  [class='full_highlight'] {
 	text-fill: @pink;
    text-size: 10;
    [zoom>=5]  { text-size: 15;}
    [zoom>=6] { text-size: 25;}
    [zoom>=7] { text-size: 35;}
    [zoom>=8] { text-size: 45;}
  }
  [class='medium_shadow'] {
 	text-fill: @red;
    text-min-distance: 5;
    text-size: 15;
    [zoom>=5]  { text-size: 25;}
    [zoom>=6] { text-size: 35;}
    [zoom>=7] { text-size: 40;}
    [zoom>=8] { text-size: 50;}
  }
  [class='medium_highlight'] {
 	text-fill: @orange;
    text-min-distance: 10;
    text-size: 25;
    [zoom>=5]  { text-size: 30;}
    [zoom>=6] { text-size: 35;}
    [zoom>=7] { text-size: 40;}
    [zoom>=8] { text-size: 45;}
  }
  [class='full_shadow'] {
 	text-fill: @yellow;
    text-min-distance: 0;
    text-size: 30;
    [zoom>=5]  { text-size: 40;}
    [zoom>=6] { text-size: 45;}
    [zoom>=7] { text-size: 50;}
    [zoom>=8] { text-size: 60;}
  }
}

#contour[zoom>=11] {
  text-face-name: @icons;
  text-comp-op: overlay;
  text-avoid-edges: true;
  text-allow-overlap: false;
  text-name: "'a'";
  [ele>=0][ele<250] {
 	text-fill: @pink;
    text-size: 12;
    [zoom>=11]  { text-size: 40;}
    [zoom>=13] { text-size: 55;}
    [zoom>=14] { text-size: 65;}
    [zoom>=15] { text-size: 75;}
  }
  [ele>=250][ele<500] {
 	text-fill: @red;
    text-size: 20;
    [zoom>=11]  { text-size: 45;}
    [zoom>=12] { text-size: 55;}
    [zoom>=13] { text-size: 60;}
    [zoom>=14] { text-size: 75;}
  }
  [ele>=500][ele<1000] {
 	text-fill: @orange;
    text-size: 12;
    [zoom>=11]  { text-size: 55;}
    [zoom>=12] { text-size: 65;}
    [zoom>=13] { text-size: 70;}
    [zoom>=14] { text-size: 85;}
  }
  [ele>=1000] {
 	text-fill: @yellow;
	text-size: 20;
    [zoom>=11]  { text-size: 85;}
    [zoom>=12] { text-size: 95;}
    [zoom>=13] { text-size: 100;}
    [zoom>=14] { text-size: 105;}
  }
}
