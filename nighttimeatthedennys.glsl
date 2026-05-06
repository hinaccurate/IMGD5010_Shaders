void main () {
    vec2 p = uv();

//4 Sink into the white noise of humanity
//    p += time + .00005;

// 5 Sometimes you can't help but listen in
//    p = rotate(p, vec2(0, sin(bands.y)), time *  .00003 );

    vec3 c = fbm(p, 5) * magenta;
    float color = 0.; 
    float frequency = 2.;
    float gain = 1.;
    float thickness = .025;

  for( float i = 0.; i < 10.; i++ ) { 
    p.x += sin( p.y + time * i) * gain; 
    color += abs( thickness / p.x );
  }

//2 Walk inside
//c = smoothstep(.003, .9 , c);
//c = smoothstep(.003, .8 , c);
//c = smoothstep(.003, .7 , c);
//c = smoothstep(.003, .6 , c);

//6 And when you least expect it, sometimes you just see the whole world
//    c = smoothstep(.9, .9 , c); c = smoothstep(.8, .4 , c);

    vec3 bb = texture2D(backbuffer, (p * 2.) - vec2(.5)).rgb;

//3 Welcome!ComeSit
//    c = mix(c, bb, .1);
//    c = mix(c, bb, .2);
//    c = mix(c, bb, .3);
//    c = mix(c, bb, .4);

//1 The Denny's Parking Lot
//    gl_FragColor = vec4(c, 1.0);
}