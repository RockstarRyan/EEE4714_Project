fi = fopen( 'matlab_i', 'r' );
fo = fopen( 'matlab_o', 'w' );
fprintf( fo, 'Hello world!' );
fread( fi, 5 )        
quit