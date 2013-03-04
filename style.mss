#rail[railway="rail"],
#rail[railway="preserved"] {
  // this is a bit of a mess when two tracks are near each other
  [zoom >= 15][bridge="yes"]::casing {
    bridge-gap/line-color: white;
    bridge-gap/line-width:6;
    bridge-edge/line-color: lighten(gray,20%);
    bridge-edge/line-width:5;
    bridge-inner/line-color: white;
    bridge-inner/line-width:4;
    case/line-color:#89e;
    case/line-width:2;
    dashes/line-color:#44e;
    dashes/line-width:0.5;
    dashes/line-dasharray:5,5;    
  }
  
  [zoom>=5] {
     line-color:#89e;
     line-width:2;
     dashes/line-color:#44e;
     dashes/line-width:0.5;
     dashes/line-dasharray:5,5;
    [railway="preserved"] {
      line-width:1.5;
      dashes/line-width:0.3;
      dashes/line-dasharray:3,3;
    }
  }  
}
  
#areas[railway="station"][zoom >= 12],
#nodes[railway="station"][zoom>=12] {
  marker-type: ellipse;
  marker-line-width: 1;
  marker-line-color: blue;
  marker-fill: rgb(40,80,200);
  marker-width: 4;
  marker-opacity:0.6;
  [zoom > 13] {
    text-name:  "[name]";
    text-face-name:"DejaVu Sans Condensed";
    text-fill: #26c;
    text-size: 10;
    text-halo-fill: #ddf;
    text-halo-radius:2;
    text-opacity: 0.8;
    text-placements: "NE,E,N,16,14,12";

    text-placement-type: simple;  
    
    text-dy:5;
  }
[disused="yes"] { 
    marker-opacity: 0;
    text-name: "";
    text-face-name:"DejaVu Sans Condensed";
  }  
}


/*
#areas[railway="station"] {
  [zoom > 15] {
    polygon-fill: #44e;
    polygon-opacity: 0.3;
    line-width:0.5;
    line-color:blue;
    
    
  }
  marker-type: ellipse;
  marker-line-width: 1;
  marker-line-color: blue;
  marker-fill: blue;
  marker-width: 4;
  marker-opacity:0.3;

  
}

/*

#nodes[place="suburb"][zoom > 22] {
    text-name: "[name]";
    text-size: 14;
    text-placement:point;
    text-placement-type: simple;
    text-allow-overlap: true;
    text-face-name: "Roboto Condensed Regular";
    text-halo-fill:#eee;
    text-halo-radius:2;
    text-fill: purple; //#0d550d;
}
*/
#arealabels[boundary="administrative"][admin_level="10"][zoom > 12],
#nodes[place="town"][zoom >= 9],
#nodes[place="city"][zoom >= 8]
::label {
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