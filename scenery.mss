@bikeline: #2e9b2e;
@water:lighten(#a1dcf6,10%);

@seawater: darken(@water, 10%);
Map {
  background-color: white;
}

#waterpoly {
  polygon-fill: @seawater;
  line-color: darken(@seawater,30%);
  line-width:2;
}

#waterways[waterway="river"][zoom >= 12] { 
  casing/line-color: darken(@water,20%);
  casing/line-width:6;
  casing/line-cap:butt;
  casing/line-opacity:0.5;
  line-color:lighten(@water,10%); 
  line-width: 4; 
  line-cap: round;
  line-opacity:0.5;
  [tunnel="yes"] { line-opacity: 0; casing/line-opacity: 0; }  
}

[zoom >= 13] {
#waterways[waterway="stream"],
#waterways[waterway="drain"],
#waterways[waterway="canal"]{ 
  casing/line-color: darken(@water,25%);
  casing/line-width:4;
  casing/line-cap:butt;
  casing/line-opacity:0.5;
  line-color:@water; line-width: 2; 
  line-cap: round;
//  line-opacity: 0.5;
  [tunnel="yes"] { line-opacity: 0; casing/line-opacity: 0; }
}
  }

#areas[natural="water"]{
  polygon-fill:@water;
  line-color:darken(@water,10%);
}

#areas[waterway="riverbank"]{
  polygon-fill:@water;
}


#non-highways[man_made="pier"][zoom >= 13],
#areas[man_made="pier"][zoom >= 13] {
  line-color: lighten(gray,20%);
  line-opacity:50%;
  #areas[man_made="pier"] {
    polygon-fill:lighten(gray,40%);
    polygon-opacity:50%;
  }
}

[zoom > 12] {
  #areas[man_made="pier"] {
    line-color: gray;
    line-opacity:50%;
      polygon-fill:lighten(gray,20%);
      polygon-opacity:50%;
  }
}


#areas[building="yes"][zoom>=15] {
  line-color:hsla(0,0%,85%,60%);
  line-width:1;
  polygon-fill:hsla(0,0%,95%,60%);
}

#areas[natural="beach"][zoom >= 15] {
  line-color:hsl(60, 85%, 50%);
  line-width:1;
  polygon-fill:hsl(60, 75%, 85%);
}


//#coastline { line-color: gray; line-width: 1; }


