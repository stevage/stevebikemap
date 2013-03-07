
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
     [zoom < 12] { line-width: 1; dashes/line-width: 0.5; }
     [railway="preserved"] {
      line-width:1.5;
      dashes/line-width:0.3;
      dashes/line-dasharray:3,3;
    }
  }  
}
  
#arealabels[railway="station"][zoom >= 12],
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
    text-halo-fill: #fef;
    text-halo-radius:2;
    text-opacity: 1.0;
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
