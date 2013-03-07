#landuse[zoom > 12] {
  [landuse="industrial"],
  [landuse="commercial"] {
    polygon-fill: #88b;
    polygon-opacity: 0.2;
  }
}

#landuse[landuse="retail"][zoom > 12] {
  polygon-fill: #b88;
  polygon-opacity: 0.2;
}

#leisure[leisure="park"],
#leisure[leisure="nature_reserve"],
#landuse[landuse="forest"],
#leisure[leisure="recreation_ground"]{
  line-color:hsl(100,60%, 60%);
  line-width:1;
  polygon-fill:hsl(100,60%, 80%);
  [zoom <= 12] { polygon-opacity: 0.5; line-opacity: 0.4; }
  }

#leisure[leisure="sports_centre"][zoom>12] {
  line-color:darken(green,10%);
  line-width:1;
  line-opacity:0.2;
  polygon-fill:#4f4;
  polygon-opacity:0.15;
}


#leisure[zoom>13][leisure="pitch"],
#leisure[zoom>13][leisure="golf_course"],
#landuse[zoom>13][landuse="cemetery"] {
    line-color:darken(green,5%);
    line-width:1;
    line-opacity:0.2;
    polygon-fill:#bdb;
}




#amenities[amenity="school"][zoom>12] {
   polygon-fill: #efa;
  polygon-opacity:0.3;
  [zoom > 12] { 
    line-color: darken(#efa,20%);
    line-width: 1;
    line-opacity:0.3;
  }
}
#amenities[amenity="university"][zoom >= 12] {
   polygon-fill: lighten(#dc9,10%);
  line-color: #aa8;
  line-width: 1;
  line-opacity: 0.3;
  }

#amenities[amenity="place_of_worship"][zoom >= 14] { 
  polygon-fill: hsl(60,50%,70%);
  //line-color:brown;
  //line-width:1.2;
}

#arealabels[boundary="administrative"][admin_level="10"][zoom > 12]::label {
  //,
// grr, there are suburbs like Caulfield marked as towns...
//#nodes[place="town"][zoom >= 9],
//#nodes[place="city"][zoom >= 8]
//::label {
    text-name: "[name]";
    text-placement:interior;
    text-placement-type: simple;
//    text-allow-overlap: true;
    text-face-name: "CartoGothic Std Bold";
    text-halo-fill:#fff;
    text-halo-radius:2;
    text-fill: darken(purple, 10%); //#0d550d;
  
    text-placements: "NE,E,N,16,14,12";
    text-dy: 30;
    text-dx: 30;

    [zoom = 13] { text-size: 11; text-halo-radius: 2; }
    [zoom = 14] { text-size: 12; text-halo-radius: 2; }
    [zoom = 15] { text-size: 13; text-halo-radius: 2; }
    [zoom > 15] { 
      text-size: 20; text-halo-radius: 2; text-opacity: 0.5; 
    }


}

#constructions[building="yes"][zoom>=15] {
  line-color:hsla(0,0%,85%,60%);
  line-width:1;
  polygon-fill:hsla(0,0%,95%,60%);
}
