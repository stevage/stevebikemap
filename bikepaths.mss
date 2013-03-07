
// Mountain bike routes...not really 'cycling'
#mtbroutes[zoom>=11]::glow {
  line-color:hsla(40, 80%, 60%, 60%);
  line-width:4;
  [zoom=12] { line-width: 3; }
  [zoom=11] { line-width: 1.5; line-opacity:40%; }
  line-cap:round;
  line-join:round;
}

#pathlabels[route="mtb"][zoom>=14]{

//  text-name: "[route_name]";
//  [route_name=""] {
    text-name: "[route_name]";
//  }
  text-size: 12;
  text-placement: line;
  text-face-name: "Roboto Condensed Bold";
  text-fill: yellow;
  
  text-halo-fill:fadeout(black,30%);
  text-halo-radius:1;
  //text-fill: #0d550d;
}



//Useful for highlighting an individual route.

#ways[route="bicycle"][rcn="yes"][zoom>=11][route_name!="Capital City Trail"]::underlay {
  [route_name="Lilydale-eWarburton Rail Trail"] {
    o/line-color: hsl(20, 100%, 50%);
    o/line-width: 14;
    o/line-cap:round;
    o/line-join:round;
    i/line-color: white;
    i/line-width: 10;
    i/line-cap:round;
    i/line-join:round;
  }
}



#paths[highway="cycleway"] {
  [bridge="yes"]::bridge {
    b/line-color: white;
    b/line-width:12;
    [mtb="yes"] { b/line-width: 6; }
  }
  [zoom > 13] {
    casing/line-color:#0d550d;
    casing/line-width:5;
    [mtb="yes"] { casing/line-width: 0; }
  }
  line-color:#2a2;
  line-width:4;
  [mtb="yes"] { line-color: brown;}
  [zoom <= 11] {
    line-width: 1.5;
    line-color: hsl(110, 70%, 30%);
    
  }
}
#paths[highway="cycleway"]::dashes {
  line-color: #5d5;
  line-width:2;
  [zoom >= 12] { line-dasharray: 5,5; }
  [zoom <= 11] {
    line-width: 0.8;
    line-opacity: 75%;
  }
}
#bikeroutes[route="bicycle"][rcn="yes"][zoom>=11][route_name!="Capital City Trail"]::glow {
  line-color:rgb(30,240,60);
  line-width:10;
  [route_name="Gardiners Creek Trail"] {
  //  line-color: hsl(20, 100%, 50%);
  }
  [state="proposed"] { 
    line-dasharray: 6,4;
    line-width: 6;
  }
  [state="construction"] { line-color: hsl(180,80%,50%); line-width: 6;}

  [zoom=11] { line-width: 4; }
  line-opacity:0.4;
  line-cap:round;
  line-join:round;
}


#bikeroutes[route_name="Capital City Trail"]::cct {
  // yellow markers along the CCT, which overlaps other trails.
/*  marker-line-color:hsl(60,100%,60%);
  marker-fill:hsl(60,100%,30%);
  marker-placement: line;

  marker-type:ellipse;
  marker-height:3;
  marker-width:3;
  marker-ignore-placement:true;
  marker-opacity:60%;
  marker-spacing:50;*/
  
  line-color: yellow;
  line-opacity:80%;
  line-dasharray: 2,4;
  line-width:2;
  [zoom = 12] { line-dasharray: 3,2; }
  
  
}

#pathlabels[route="bicycle"][rcn="yes"][zoom>10][route_name != "Capital City Trail"]{

  text-name: "[route_name]";
  text-size: 13;
  text-placement: line;
  text-face-name: "Roboto Condensed Bold";
  [zoom = 11] { text-face-name: "Roboto Condensed Regular"; text-size: 11; }
  text-halo-fill:fadeout(#eee,30%);
  text-halo-radius:3;
  text-fill: #0d550d;
}



#paths[highway="footway"][zoom >= 12],
#paths[highway="path"][zoom >= 12] {
  line-color:#b74;
  line-width:1;
  line-dasharray:5,2;
  [bicycle="no"] { line-dasharray:1,5; }
  }

#paths[highway="steps"] {
  line-color:darken(#b74,10%);
  line-width:4;
  line-dasharray:1,3;
  }

#nodes[shop="bicycle"][zoom >= 14] {
  point-file:url('http://aux.iconpedia.net/uploads/20716966111362337913.png');
  point-transform:scale(0.05,0.05);
  [zoom >= 17] { point-transform:scale(0.15,0.15);}
  point-opacity:90%
}

#nodes[amenity="bicycle_parking"][zoom >= 16] {
  point-file:url('http://cdn1.iconfinder.com/data/icons/dot/256/parking.png');
  point-transform:scale(0.05,0.05);
  point-opacity:90%;
}

#nodes[amenity="bicycle_rental"][zoom >= 15] {
  point-file:url('https://dl.dropbox.com/u/767553/bike-blue.svg');
  point-transform:scale(0.02,0.02);
  point-opacity:90%;
}

#ways[route="ferry"] { line-color: hsl(220,70%,50%); line-width: 0.5; line-dasharray: 8,12;}