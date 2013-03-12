
#roads[highway="motorway"][zoom > 6] {
  [bridge="yes"] {
    bridge/line-color: white;
    bridge/line-width:8;
  }
  casing/line-color:#77a;
  casing/line-width:4;
  casing/line-opacity:0.5;
  line-color:#446;
  line-width:3;
  line-opacity:0.5;
  [tunnel="yes"] {
    casing/line-width:0;
    line-width:0;
  }
  [zoom <= 12] {
    casing/line-width:3;
    line-width:2;
  }
  [zoom >= 13] {
    casing/line-color: lighten(#77a,20%);
    line-color: lighten(#446, 20%);
  }
}

// Hmmm, I kind of prefer not showing the motorway_links, but then some
// freeways end in the middle of nowhere.


#roads[highway="trunk"],
// foo
// foo
#roads[highway="motorway_link"],
#roads[highway="primary"][zoom >= 10],
#roads[highway="secondary"][zoom >= 10]
 {
  [bridge="yes"]::bridge {
    line-color: white;
    line-width:6;
    [zoom <= 12] { line-width:4; }
  }
  [cycleway="lane"]::lane,[cycleway="track"]::lane { 
    line-color: @bikeline; 
    [cycleway="track"] { line-color: red; }
    [zoom >= 13] { line-width:2.5; }
    [zoom >= 15] { line-width: 3;}
  }
  ::notbridge {
  line-color:#aaa;
  line-width:2;
  [zoom = 10] { line-width: 1; }
  [zoom = 11] { line-width: 1; }
  [zoom = 12] { line-width: 1.25; }
  [zoom = 13] { line-width: 1.5; }
  }
}


#waylabels[highway="trunk"][zoom >= 12],
#waylabels[highway="primary"][zoom >= 13],
#waylabels[highway="secondary"][zoom >= 14],
#waylabels[highway="tertiary"][zoom >= 16],
#waylabels[highway="residential"][zoom >= 17],
#waylabels[highway="unclassified"][zoom >= 17]{
  text-name: "[name]";
  text-size: 12;
  text-placement: line;
  text-face-name: "CartoGothic Std Book";
  text-halo-fill:#fff;
  text-halo-radius:2;
  text-fill: #88a;
}

#roads[highway="primary_link"][zoom >= 13],
#roads[highway="secondary_link"][zoom >= 14],
#roads[highway="trunk_link"][zoom >= 15] {
  line-color:#aaa;
  line-width:1;
}



#minor_roads[zoom >= 12][highway="residential"],
#minor_roads[zoom >= 12][highway="unclassified"] {
    line-width: 0.5; 
    line-color: #d7d7d7;
    [zoom = 13] { line-width: 0.5; line-color:#ccc; }
    [zoom = 14] { line-width: 1; line-color:#ccc; }
    [zoom >= 15] { line-width: 2; line-color: #aaa;}
    [cycleway="lane"],[cycleway="track"] { 
      line-color: @bikeline; 
      [cycleway="track"] { line-color: red; }
      [zoom >= 13] { line-width:2; }
      [zoom >= 15] { line-width: 3;}
    }
  
}
// not in roads for some reason.
#minor_roads[highway="tertiary"] { 
    line-color: #aaa; 
    line-width:1;
    [cycleway="lane"],[cycleway="track"] { 
      line-color: @bikeline; 
      line-width:2;
    }
  
    [zoom >= 15] {
      line-width:2;
      [cycleway="lane"] { line-width:4; }
    }
}
  
#minor_roads[highway="service"][zoom >= 12] {
    line-width: 0.5; 
    line-color: #d7d7d7;
    //[service="parking_aisle"] { opacity: 0.2; }
    [service="alley"][zoom >= 15] { line-dasharray: 6,3; }
    [zoom >= 14] { line-width: 0.5; line-color:#ccc; }
    [zoom >= 16] { line-width: 1; line-color: #aaa;}
    [cycleway="lane"],[cycleway="track"] { 
      line-color: @bikeline; 
      [zoom >= 14] { line-width:1.5; }
      [zoom >= 16] { line-width: 2;}
    }
}

#minor_roads [highway="track"][zoom >= 14] {
  line-color:#888;
  line-width:1;
  line-dasharray: 6,2;
}

#rail[railway="tram"][zoom >= 12]::tram {
  line-color: #333;
  line-width:1;
  line-dasharray:1,2;
}
