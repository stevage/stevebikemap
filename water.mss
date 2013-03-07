@bikeline: #2e9b2e;
@water:lighten(#a1dcf6,10%);

@seawater: darken(@water, 10%);
Map {
  background-color: hsl(30,30%,95%);
}

#waterpoly {
  polygon-fill: @seawater;
  line-color: darken(@seawater,20%);
  line-width:2;
  line-opacity:0.5;
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

#natural[natural="water"]{
  polygon-fill:@water;
  line-color:darken(@water,10%);
  line-width:2;
}

#natural[waterway="riverbank"]{
  polygon-fill:@water;
}


#non-highways[man_made="pier"][zoom >= 13],
#constructions[man_made="pier"][zoom >= 13] {
  line-color: lighten(gray,20%);
  line-opacity:50%;
  #constructions[man_made="pier"] {
    polygon-fill:lighten(gray,40%);
    polygon-opacity:50%;
  }
}

[zoom > 12] {
  #constructions[man_made="pier"] {
    line-color: gray;
    line-opacity:50%;
      polygon-fill:lighten(gray,20%);
      polygon-opacity:50%;
  }
}


#natural[natural="beach"][zoom >= 15] {
  polygon-fill:hsl(60, 75%, 85%);
  line-color:hsl(60, 85%, 50%);
  line-width:1;
}
