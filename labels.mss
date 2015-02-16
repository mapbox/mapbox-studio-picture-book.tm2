#country_label[scalerank<3], 
#country_label[zoom>=4][scalerank<5], 
#country_label[zoom>=5][scalerank<6],
#country_label[zoom>=6][scalerank<7],
#country_label[zoom>=7] {
  text-face-name: @font1;
  text-allow-overlap: false;
  text-avoid-edges: false;
  text-wrap-width: 40;
  text-fill: @white;
  text-name: '[name_en]';
  text-size: 20;
  text-margin: 15;
  [zoom>=5] { text-margin: 2;}
  [scalerank>2] { text-size: 16;}
  [scalerank>4] { text-size: 13;}
  [zoom>=7] { 
    text-size: 25;
    [scalerank>2] {  text-size: 20;}
    [scalerank>4] {  text-size: 18;}
  }
}

#state_label {
  text-face-name: @font1;
  text-allow-overlap: false;
  text-avoid-edges: false;
  text-wrap-width: 40;
  text-fill: @darkgreen;
  text-name: '[name_en]';
  text-size: 15;
  text-margin: 30;
}

/* Major cities */
#place_label[type='city'][scalerank<2][zoom>=4],
#place_label[type='city'][scalerank<3][zoom>=5],
#place_label[type='city'][scalerank<6][zoom>=7] {
  text-allow-overlap: false;
  text-avoid-edges: false;
  text-fill: mix(@white,@green,75);
  text-face-name: @font1;
  text-dy: 18;
  text-size: 15;
  text-name: '[name_en]';
  text-wrap-width: 70;
  text-margin: 8;
  text-character-spacing: 1;
  marker-width: 18;
  marker-file: url(city1.svg);
  [scalerank>=2][zoom>=8] {
    marker-file: url(city4.svg);
    text-dy: 31;
    marker-width: 50;
    [zoom>=11] {
      marker-width: 80;
      text-dy: 35;
      marker-file: url(city7.svg);
    }
  }
  [scalerank=1] {
    text-dy: 20;
    marker-file: url(city2.svg);
    marker-width: 24;
    [zoom>=8] {
      text-dy: 32;
      marker-file: url(city5.svg);
      marker-width: 60;
    }
  }
  [scalerank=0] {
    text-dy: 20;
    marker-width: 28;
    marker-file: url(city3.svg);
    [zoom>=8] {
      text-dy: 35;
      marker-file: url(city5.svg);
      marker-width: 60;
    }
    [zoom>=10] {
      text-dy: 40;
      marker-file: url(city7.svg);
      marker-width: 80;
    }
  }
}

/* Secondary cities */
#place_label[type='city'][zoom>=6][scalerank=7],
#place_label[type='city'][zoom>=7][scalerank>7][scalerank<9],
#place_label[type='city'][zoom>=8] { 
  text-name: '[name_en]';
  text-size: 13;
  text-face-name: @font1;
  text-fill: mix(@white,@green,75);
  text-dy: 10;
  text-character-spacing: 1;
  text-wrap-width: 90;
  text-wrap-before: true;
  marker-width: 15;
  marker-file: url(city0.svg);
  [scalerank=6][zoom>=10] { 
    marker-width: 20;
    text-dy: 20;
    marker-file: url(city1.svg);
    [zoom>=11]  { 
      marker-file: url(city4.svg);
      text-dy: 30;
      marker-width: 50;
    }
  }
  [scalerank>6][zoom>=9] {
    marker-width: 20;
    text-dy: 20;
    marker-file: url(city1.svg);
    [zoom>=10]  { 
      marker-file: url(city4.svg);
      text-dy: 30;
      marker-width: 50;
    }
  }
  [zoom>=10] {
    text-size: 16;
    text-dy: 25;
    marker-width: 25;
    marker-file: url(city1.svg);
  }
}

#place_label[type='town'][zoom>=10][osm_id =~ '.*[678]'],
#place_label[type='town'][zoom>=11][osm_id =~ '.*[012]']{ 
  text-name: '[scalerank] + [name]';
  text-fill: mix(@white,@green,75);
  text-wrap-width: 50;
  text-margin: 16;
  text-size: 13;
  text-face-name: @font1;
  marker-width: 15;
  text-dy: 12;
  marker-file: url(city0.svg);
  [zoom>=11][osm_id =~ '.*[678]']  {
    marker-file: url(city1.svg);
    text-dy: 16;
  }
}

/* Huts */
#place_label.minor::primary[type='town'][zoom>=10][osm_id =~ '.*[3]'],
#place_label.minor::primary[type='village'][zoom>=11][osm_id =~ '.*[0213]'] { 
  marker-width: 15;
  text-size: 12;
  text-dy: 16;
  text-wrap-width: 40;
  text-face-name: @font1;
  text-allow-overlap: false;
  text-avoid-edges: false;
  text-name: '[name_en]';
  text-fill: mix(@green, @white, 25);
  [type='town'] { marker-width: 18;}
  marker-file: url(village1.svg);
}

#place_label.minor::secondary {
  text-face-name: @font1;
  text-allow-overlap: false;
  text-avoid-edges: false;
  text-wrap-width: 40;
  text-fill: mix(@green, @white, 50);
  text-name: '[name_en]';
  text-size: 12;
  text-margin: 50;
}

#poi_label[maki='park'][scalerank=1] {
  text-allow-overlap: false;
  text-avoid-edges: true;
  text-fill: @darkgreen;
  text-face-name: @font3;
  text-dy: 25;
  text-margin: 10;
  text-size: 12;
  text-name: '[name_en]';
  text-wrap-width: 60;
  text-character-spacing: 1;
}

#poi_label { 
  text-size: 12;
  text-face-name: @font3;
  text-name: '[name_en]';
  text-wrap-width: 60;
  text-allow-overlap: false;
  text-avoid-edges: true;
  text-fill: mix(@darkgreen, @green, 75);
}

#marine_label[labelrank<=3][zoom<=4],
#marine_label[zoom>4] {
  text-name: '[name_en]';
  text-face-name: @font2;
  text-avoid-edges: false;
  text-size: 20;
  [zoom>=6] {
    text-size: 25;
  }
  [labelrank>4] {
    text-size:12;
    [zoom>4] { text-size: 14;}
  	[zoom>6] { text-size: 16;}
  }
  [labelrank>2] {
    text-size:16;
    [zoom>4] { text-size: 16;}
  	[zoom>6] { text-size: 20;}
  }
  text-wrap-width: 50;
  text-fill: mix(@blue, @black, 80);
}

#water_label {
  text-name: '[name_en]';
  text-face-name: @font2;
  text-avoid-edges: false;
  text-character-spacing: 2;
  text-size: 14;
  text-wrap-width: 70;
  text-fill: mix(@blue, @black, 80);
}

/**/