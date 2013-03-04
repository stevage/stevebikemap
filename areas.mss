
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


#areas[leisure="park"],
#areas[leisure="nature_reserve"],
#areas[landuse="forest"],
#areas[leisure="recreation_ground"]{
  line-color:#9f9;
  line-width:1;
//  line-opacity:0.2;
  polygon-fill:#bfb;
//  polygon-opacity:0.15;
  }

#areas[leisure="sports_centre"][zoom>12] {
  line-color:darken(green,10%);
  line-width:1;
  line-opacity:0.2;
  polygon-fill:#4f4;
  polygon-opacity:0.15;
  }

#areas[zoom>13] {
  [leisure="pitch"],
  [leisure="golf_course"],
  [landuse="cemetery"] {
    line-color:darken(green,5%);
    line-width:1;
    line-opacity:0.2;
    polygon-fill:#bdb;
  //  polygon-opacity:0.15;
  }
}



#areas[amenity="school"][zoom>12] {
   polygon-fill: #efa;
  polygon-opacity:0.3;
  [zoom > 12] { 
    line-color: darken(#efa,20%);
    line-width: 1;
    line-opacity:0.3;
  }
}
#areas[amenity="university"][zoom >= 12] {
   polygon-fill: lighten(#dc9,10%);
  line-color: #aa8;
  line-width: 1;
  line-opacity: 0.3;
  }

#areas[amenity="place_of_worship"][zoom >= 14] { 
  polygon-fill: #fe9;
  //line-color:brown;
  //line-width:1.2;
}

