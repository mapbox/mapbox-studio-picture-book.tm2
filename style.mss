// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

@font1: 'Marselis Slab Offc Pro Bold','Arial Unicode MS Bold';
@font2: 'Tartine Script Offc Pro Bold','Arial Unicode MS Bold';
@font3: 'Mark Offc Pro Heavy','Arial Unicode MS Bold';
@font4: 'Market Offc Pro Bold', 'Arial Unicode MS Bold';
@icons: 'Picturebook Regular';

// Common Colors //
@white:     #f4f9ed;
@pink:      #cc88c4;
@red:       #dd7d7b;
@orange:    #dfac78;
@yellow:    #fbf7bc;
@lightblue: #6ec4b8;
@blue:      #5ca2d2;
@purple:    #785dac;
@denim:     #3c7495;
@navy:      #3c4e5a;
@green:     #9fd089;
@darkgreen: #68ad90;
@gray:      #f4f9ed;
@darkgray:  #888;
@black:     #444;
@snow:      #e2eecc;

Map {
  background-color: @green;
  buffer-size: 256;
  font-directory: url('');
}

/* texture overlay */
#layer_full {
  polygon-fill: rgba(228, 216, 127, 0.1);
  polygon-comp-op: multiply;
  polygon-pattern-file:url(halftone5.svg);
  polygon-pattern-comp-op:overlay;
  polygon-pattern-opacity:.075;
}

#water {
  opacity: 1;
  ::shadow {
    polygon-fill: mix(@blue,@lightblue,20);
  }
  ::fill {
    // a white fill and overlay comp-op lighten the polygon-
    // fill from ::shadow.
    polygon-fill: @green;
    opacity: .5;
    comp-op: soft-light;
    // blurring reveals the polygon fill from ::shadow around
    // the edges of the water
    image-filters: agg-stack-blur(20,20);
  }
}

/* waves in the water */
#bathymetry[DEPTH<3000] {
  text-face-name: 'Picturebook Regular';
  text-avoid-edges: true;
  text-margin: 15;
  text-placement: interior;
  text-fill: mix(@lightblue,@blue,50);
  text-allow-overlap: false;
  text-name: "'t'";
  [DEPTH>=0][DEPTH<500] {
    text-size:30;
    [zoom>=5]  { text-size: 35;}
    [zoom>=6] { text-size: 40;}
    [zoom>=8] { text-size: 45;}
    text-fill: mix(@lightblue,@blue,50);
  }
  [DEPTH>=500][DEPTH<1250] {
    text-name: "'v'";
    text-size:25;
    [zoom>=5]  { text-size: 30;}
    [zoom>=7] { text-size: 35;}
    [zoom>=8] { text-size: 40;}
    text-fill: mix(@lightblue,@blue,60);
  }
  [DEPTH>=1250][DEPTH<3000] {
    text-name: "'u'";
    text-size:25;
    [zoom>=5]  { text-size: 30;}
    [zoom>=7] { text-size: 35;}
    [zoom>=8] { text-size: 40;}
    text-fill: mix(@lightblue,@blue,25);
  }
}

#bathymetry::dots {
  text-face-name: @icons;
  text-avoid-edges: true;
  text-margin: 20;
  text-size: 20;
  text-placement: interior;
  text-fill: mix(@lightblue,@blue,75);
  text-allow-overlap: false;
  text-name: "'l'";
  text-dy: 15;
}

/* land creatures */
#creatures[scalerank='1'],
#creatures[scalerank='2'][zoom>=5],
#creatures[zoom>=7] {
  [graphic='mammoth'] { marker-file: url(mammoth.svg); }
  [graphic='deer'] { marker-file: url(deer.svg); }
  [graphic='lion1'] { marker-file: url(lion1.svg); }
  [graphic='lion2'] { marker-file: url(lion2.svg); } // LION 2 is a panda
  [graphic='tiger'] { marker-file: url(tiger.svg); }
  [graphic='bear1'] { marker-file: url(bear1.svg); }
  [graphic='bear2'] { marker-file: url(bear2.svg); }
  [graphic='elephant'] { marker-file: url(elephant.svg); }
  [graphic='kangaroo'] { marker-file: url(kangaroo.svg); }
  [graphic='jaguar'] { marker-file: url(jaguar.svg); }
  [graphic='moose'] { marker-file: url(moose.svg); }
  [graphic='cougar'] { marker-file: url(cougar.svg); }
  [graphic='monkey'] { marker-file: url(monkey.svg); }
  [graphic='gorilla'] { marker-file: url(gorilla.svg); }
  [graphic='dino'] { marker-file: url(dino.svg); }
  [graphic='zebra'] { marker-file: url(zebra.svg); }
  [graphic='penguin'] { marker-file: url(penguin.svg); }
  [graphic='panda'] { marker-file: url(panda.svg); }
  [graphic='ox'] { marker-file: url(ox.svg); }
  [graphic='llama'] { marker-file: url(llama.svg); }
  [graphic='camel'] { marker-file: url(camel.svg); }
  [graphic='bison'] { marker-file: url(bison.svg); }
  [zoom>=8][graphic='seamonster'] { marker-file: url(seamonster.svg); }
  [zoom>=8][graphic='bigfoot'] { marker-file: url(bigfoot.svg); }
  [zoom>=10][scalerank='3'][graphic='bigfoot'] { marker-file: url(bigfoot.svg); }
}

/* sea creatures */
#creatures[scalerank='1'][zoom>=2],
#creatures[scalerank='2'][zoom>=5],
#creatures[scalerank='3'][zoom>=6],
#creatures[zoom>=6] {
  [graphic='whale']  { marker-file: url(whale1.svg);}
  [graphic='whale2']  { marker-file: url(whale2.svg);}
  [graphic='whale3']  { marker-file: url(whale3.svg);}
  [graphic='fish']    { marker-file: url(fish.svg);}
  [graphic='dolphin'] { marker-file: url(dolphin.svg);}
}

#creatures[zoom>=6] {
  [graphic='boat1'] { marker-file: url(boat1.svg);}
  [graphic='boat2'] { marker-file: url(boat2.svg);}
  [graphic='submarine'] { marker-file: url(submarine.svg);}
  [graphic='ship'] { marker-file: url(ship.svg);}
  [zoom>=7][graphic='ship-pirate'] { marker-file: url(ship-pirate.svg);}
}

/* landmarks */
#creatures[zoom>=4] {
  [graphic='taj mahal'][zoom>5] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(tajmahal.svg);
    [zoom<=5] {
      shield-size: 30;
      shield-dx: 45; shield-dy:-50;
    }
    [zoom>=7] { shield-dx:  0; shield-dy: -50;}
    [zoom>=8] { shield-dx: 65; shield-dy:    0;}
    [zoom>=9] { shield-dx:  0; shield-dy:    0;}
  }
  [graphic='everest'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(everest.svg);
    [zoom>=4] { shield-dx: 0; shield-dy: -50;}
    [zoom>=9] { shield-dx: 0; shield-dy:  85;}
    [zoom=11] { shield-dx: 0; shield-dy:   25;}
  }
  [graphic='summer palace'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(summerpalace.svg);
    [zoom>=4] { shield-dx: -50; shield-dy: -10;}
    [zoom>=9] { shield-dx:    0; shield-dy:   0;}
  }
  [graphic='petronas towers'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(petronastowers.svg);
    [zoom<=5] { shield-dx: 0; shield-dy: -40;}
    [zoom=6] { shield-dx: 40; shield-dy: -40;}
    [zoom>=7]  { shield-dx:  40; shield-dy: -35;}
    [zoom>=9]  { shield-dx: -25; shield-dy:-70;}
    [zoom>=10] { shield-dx:  30; shield-dy:   0;}
    [zoom=11] { shield-dx:  0; shield-dy:   0;}
  }
  [graphic='eiffel tower'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(eiffeltower.svg);
    [zoom>=4]  { shield-dx: 70; shield-dy: 0;}
    [zoom>=5]  { shield-dx: 60; shield-dy: 0;}
    [zoom>=6]  { shield-dx: 70; shield-dy: 0;}
    [zoom>=7]  { shield-dx: -0; shield-dy: 0;}
    [zoom>=9] { shield-dx: 100; shield-dy: 0;}
  }
  [graphic='angkor wat'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(angkorwat.svg);
    [zoom<=4] {
      //shield-width: 60;
      shield-dx: 0; shield-dy: -45;
    }
    [zoom>=5]  { shield-dx:   0; shield-dy: -15;}
    [zoom>=8]  { shield-dx: -15; shield-dy: -40;}
    [zoom>=10] { shield-dx:   0; shield-dy:   0;}
  }
  [graphic='statue of liberty'] {
    shield-file: url(statueofliberty.svg);
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    [zoom>=4][zoom<9] { shield-dx:-60;}
    [zoom=9]  { shield-dx: -40; shield-dy: -50;}
    [zoom=10] { shield-dx: -30; shield-dy:   0;}
    [zoom=11] { shield-dx:  30; shield-dy:   0;}
  }
  [graphic='stonehenge'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(stonehenge.svg);
    [zoom>=4] { shield-dx: -50; shield-dy:  20;}
    [zoom=8]  { shield-dx:   0; shield-dy: 25;}
  }
  [graphic='easter island'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(easterisland.svg);
    [zoom=9] { shield-dx: -7; shield-dy: -15;}
  }
  [graphic='chichen itza'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(chichenitza.svg);
    [zoom>=5] { shield-dy: 50; }
    [zoom=11] { shield-dx: 0; shield-dy: 25;}
  }
  [graphic='colosseum'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(colosseum.svg);
    [zoom>=4] { shield-dx: -50; shield-dy: 0;}
    [zoom>=9] { shield-dx:   0; shield-dy: 0;}
  }
  [graphic='pyramids'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(pyramids.svg);
    [zoom<=7] { shield-dx: -60; shield-dy: 10;}
    [zoom>=8] { shield-dx:    0; shield-dy:  0;}
  }
  [graphic='opera house'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(operahouse.svg);
    [zoom=4]           { shield-dx:  52; shield-dy: -30;}
    [zoom>=5][zoom<8]  { shield-dx:  45; shield-dy: -30;}
    [zoom>=8][zoom<11] { shield-dx:  65; shield-dy: -25;}
    [zoom=11]          { shield-dx:  25; shield-dy: -12;}
  }
  [graphic='golden gate bridge'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(goldengatebridge.svg);
    //[zoom<=7] { shield-width: 60;}
    [zoom>=5] { shield-dx: -10; shield-dy: -50;}
  }
  [graphic='mount rushmore'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(mountrushmore.svg);
    [zoom>=7]  { shield-dx:    0; shield-dy:   40;}
    [zoom>=8]  { shield-dx: -50; shield-dy: -55;}
    [zoom>=10] { shield-dx:    0; shield-dy:    0;}
}
  [graphic='hagia sophia'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(hagiasophia.svg);
    [zoom>=4] { shield-dx: 0; shield-dy: -50;}
    [zoom>=8] { shield-dx: 0; shield-dy: -60;}
  }
  [graphic='christ the redeemer'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(christtheredeemer.svg);
    [zoom>=4] { shield-dx: -10; shield-dy:  -60;}
    [zoom>=8] { shield-dx: -50; shield-dy:  -30;}
    [zoom>=9] { shield-dx: -90; shield-dy:   10;}
    [zoom=11] { shield-dx: -95; shield-dy:    0;}
  }
  [graphic='petra'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(petra.svg);
    [zoom>=4] { shield-dx: 20; shield-dy:  0;}
    [zoom>=5] { shield-dx:  0; shield-dy: 60;}
    [zoom>=7] { shield-dx:  0; shield-dy:  0;}
  }
  [graphic='great wall of china'][zoom>3] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(greatwallofchina.svg);
    [zoom=4] { shield-dx: -10; shield-dy: -15;}
  }
  [graphic='athens'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(acropolis.svg);
    [zoom<=4] { shield-dx: -65; shield-dy:    0;}
    [zoom=5]  {  shield-dx:  0; shield-dy: -50;}
    [zoom>=6] { shield-dx: -60; shield-dy:  -10;}
    [zoom>=8] { shield-dx: -65; shield-dy:  -10;}
  }
  [graphic='timbuktu'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(timbuktu.svg);
    [zoom>=4] { shield-dx:   25; shield-dy: -50;}
    [zoom>=5] { shield-dx: -80; shield-dy:    0;}
    [zoom>=7] { shield-dx:    0; shield-dy:  -40;}
    [zoom>=8] { shield-dx:   10; shield-dy: -50;}
  }
  [graphic='saint basils cathedral'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(saintbasils.svg);
    [zoom=11] { shield-dx: -50; shield-dy: -70;}
    [zoom=10] { shield-dx: -50; shield-dy: -60;}
    [zoom=9]  { shield-dx: -70; shield-dy:    0;}
    [zoom=8]  { shield-dx:  70; shield-dy:    0;}
    [zoom<=7] { shield-dx:   20; shield-dy: -60;}
  }
  [graphic='mount fuji'] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(mountfuji.svg);
    [zoom=6]  { shield-dy:  40;}
    [zoom<=5] { shield-dx: -40;}
  }
  [graphic='atomium'][zoom>=6] {
    // required but unused
    shield-face-name: @font1;
    shield-allow-overlap: true;
    shield-file: url(atomium.svg);
    shield-size: 10;
    [zoom=6] { shield-dx: 0; shield-dy: -35;  }
    [zoom=7] { shield-dx: 0; shield-dy: -50;  }
    [zoom=8] { shield-dx: -40; shield-dy: -50;  }
    [zoom=9] { shield-dx: -30; shield-dy: -40;  }
    [zoom=10] { shield-dx: -30; shield-dy: -40;  }
  }
}

/* landuse */
#landuse[class='pitch'][zoom>=10],
#landuse[class='park'][zoom>=10] {
  text-face-name: @icons;
  text-avoid-edges: true;
  text-margin: 5;
  text-size: 9;
  text-fill: mix(@darkgreen, @green, 75);
  text-allow-overlap: false;
  text-name: "'c'";
  [class='pitch'] {   text-fill: @darkgreen;}
}

#landuse.industrial[class='industrial'] {
  text-face-name: @icons;
  text-avoid-edges: true;
  text-margin: 5;
  text-size: 9;
  text-fill: @yellow;
  text-allow-overlap: false;
  text-name: "'c'";
  [osm_id =~ '.*[089]'] {
    text-fill: mix(@orange,@yellow,50);
  }
  [osm_id =~ '.*[0129]'] {
    text-size: 18;
    text-name: "'e'";
  }
}

#landuse[class='school'][zoom>=9],
#landuse[class='hospital'][zoom>=9],
#landuse[class='hospital'][zoom>=9]{
  text-face-name: @icons;
  text-avoid-edges: true;
  text-margin: 3;
  text-size: 9;
  text-fill: @blue;
  text-allow-overlap: false;
  text-name: "'c'";
}

#building {
  text-face-name: @icons;
  text-avoid-edges: true;
  text-margin: 1;
  text-size: 9;
  text-fill: @red;
  text-allow-overlap: false;
  text-name: "'c'";
}

/* ghosts */
#landuse[class='cemetery'][osm_id =~ '.*[01]'] {
  text-face-name: @icons;
  text-avoid-edges: true;
  text-margin: 5;
  text-size: 20;
  text-placement: interior;
  text-fill: mix(@white,@green,50);
  text-allow-overlap: false;
  text-name: "'b'";
  [osm_id =~ '.*[0]'] { text-fill: @white; }
}

#poi_label[maki='park'] {
  marker-file: url(park4.svg);
  [osm_id =~ '.*[012]'] { marker-file: url(park1.svg);}
  [osm_id =~ '.*[34]'] { marker-file: url(park2.svg);}
  [osm_id =~ '.*[56]'] { marker-file: url(park3.svg);}
  [osm_id =~ '.*[78]'] { marker-file: url(park4.svg);}
}

/* airplanes and helicopters */
#poi_label[maki='airport'] {
  text-allow-overlap: false;
  text-fill: mix(@white,@green,75);
  text-face-name: @font3;
  text-dy: 20;
  text-min-distance: 15;
  text-size: 12;
  text-name: '[name_en]';
  text-avoid-edges: false;
  text-wrap-width: 30;
  text-character-spacing: 1;
  marker-allow-overlap: false;
  text-avoid-edges: true;
  marker-transform: translate(0,-10);
  marker-file: url(airport1.svg);
  [scalerank>1] { marker-file: url(airport2.svg);}
}

/**/