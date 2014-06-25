use strict;
use Test::More;
use Test::Differences;
use Test::Time;
use Vector::QRCode::EPS;

can_ok 'Vector::QRCode::EPS', 'generate';

my $data = Vector::QRCode::EPS->generate(
    text => 'This is a test',
);
my $creation_date = localtime(time());

isa_ok $data, 'PostScript::Simple';

my $expect = do {local $/; <DATA>};
$expect =~ s/__TIME__/$creation_date/;
eq_or_diff $data->get, $expect, 'expected data';

done_testing;

__DATA__
%!PS-Adobe-3.0 EPSF-1.2
%%Title: (PostScript::Simple generated page)
%%LanguageLevel: 1
%%Creator: PostScript::Simple perl module version 0.08
%%CreationDate: __TIME__
%%For: Console
%%Orientation: Portrait
%%BoundingBox: 0 0 283 283
%%EndComments
%%BeginProlog
/ll 1 def systemdict /languagelevel known {
/ll languagelevel def } if
%%BeginResource: PostScript::Simple
/STARTDIFFENC { mark } bind def
/ENDDIFFENC { 

% /NewEnc BaseEnc STARTDIFFENC number or glyphname ... ENDDIFFENC -
	counttomark 2 add -1 roll 256 array copy
	/TempEncode exch def

	% pointer for sequential encodings
	/EncodePointer 0 def
	{
		% Get the bottom object
		counttomark -1 roll
		% Is it a mark?
		dup type dup /marktype eq {
			% End of encoding
			pop pop exit
		} {
			/nametype eq {
			% Insert the name at EncodePointer 

			% and increment the pointer.
			TempEncode EncodePointer 3 -1 roll put
			/EncodePointer EncodePointer 1 add def
			} {
			% Set the EncodePointer to the number
			/EncodePointer exch def
			} ifelse
		} ifelse
	} loop

	TempEncode def
} bind def

% Define ISO Latin1 encoding if it doesnt exist
/ISOLatin1Encoding where {
%	(ISOLatin1 exists!) =
	pop
} {
	(ISOLatin1 does not exist, creating...) =
	/ISOLatin1Encoding StandardEncoding STARTDIFFENC
		144 /dotlessi /grave /acute /circumflex /tilde 
		/macron /breve /dotaccent /dieresis /.notdef /ring 
		/cedilla /.notdef /hungarumlaut /ogonek /caron /space 
		/exclamdown /cent /sterling /currency /yen /brokenbar 
		/section /dieresis /copyright /ordfeminine 
		/guillemotleft /logicalnot /hyphen /registered 
		/macron /degree /plusminus /twosuperior 
		/threesuperior /acute /mu /paragraph /periodcentered 
		/cedilla /onesuperior /ordmasculine /guillemotright 
		/onequarter /onehalf /threequarters /questiondown 
		/Agrave /Aacute /Acircumflex /Atilde /Adieresis 
		/Aring /AE /Ccedilla /Egrave /Eacute /Ecircumflex 
		/Edieresis /Igrave /Iacute /Icircumflex /Idieresis 
		/Eth /Ntilde /Ograve /Oacute /Ocircumflex /Otilde 
		/Odieresis /multiply /Oslash /Ugrave /Uacute 
		/Ucircumflex /Udieresis /Yacute /Thorn /germandbls 
		/agrave /aacute /acircumflex /atilde /adieresis 
		/aring /ae /ccedilla /egrave /eacute /ecircumflex 
		/edieresis /igrave /iacute /icircumflex /idieresis 
		/eth /ntilde /ograve /oacute /ocircumflex /otilde 
		/odieresis /divide /oslash /ugrave /uacute 
		/ucircumflex /udieresis /yacute /thorn /ydieresis
	ENDDIFFENC
} ifelse

% Name: Re-encode Font
% Description: Creates a new font using the named encoding. 

/REENCODEFONT { % /Newfont NewEncoding /Oldfont
	findfont dup length 4 add dict
	begin
		{ % forall
			1 index /FID ne 
			2 index /UniqueID ne and
			2 index /XUID ne and
			{ def } { pop pop } ifelse
		} forall
		/Encoding exch def
		% defs for DPS
		/BitmapWidths false def
		/ExactSize 0 def
		/InBetweenSize 0 def
		/TransformedChar 0 def
		currentdict
	end
	definefont pop
} bind def

% Reencode the std fonts: 
/Courier-iso ISOLatin1Encoding /Courier REENCODEFONT
/Courier-Bold-iso ISOLatin1Encoding /Courier-Bold REENCODEFONT
/Courier-BoldOblique-iso ISOLatin1Encoding /Courier-BoldOblique REENCODEFONT
/Courier-Oblique-iso ISOLatin1Encoding /Courier-Oblique REENCODEFONT
/Helvetica-iso ISOLatin1Encoding /Helvetica REENCODEFONT
/Helvetica-Bold-iso ISOLatin1Encoding /Helvetica-Bold REENCODEFONT
/Helvetica-BoldOblique-iso ISOLatin1Encoding /Helvetica-BoldOblique REENCODEFONT
/Helvetica-Oblique-iso ISOLatin1Encoding /Helvetica-Oblique REENCODEFONT
/Times-Roman-iso ISOLatin1Encoding /Times-Roman REENCODEFONT
/Times-Bold-iso ISOLatin1Encoding /Times-Bold REENCODEFONT
/Times-BoldItalic-iso ISOLatin1Encoding /Times-BoldItalic REENCODEFONT
/Times-Italic-iso ISOLatin1Encoding /Times-Italic REENCODEFONT
/Symbol-iso ISOLatin1Encoding /Symbol REENCODEFONT
/box {
  newpath 3 copy pop exch 4 copy pop pop
  8 copy pop pop pop pop exch pop exch
  3 copy pop pop exch moveto lineto
  lineto lineto pop pop pop pop closepath
} bind def
/ucm {72 mul 2.54 div} def
%%EndResource
%%EndProlog
1 1 1 setrgbcolor
0 ucm 0 ucm 10 ucm 10 ucm box fill
0.03922 0.03922 0.03922 setrgbcolor
0 ucm 0 ucm 0.476190476190476 ucm 0.476190476190476 ucm box fill
0.476190476190476 ucm 0 ucm 0.952380952380952 ucm 0.476190476190476 ucm box fill
0.952380952380952 ucm 0 ucm 1.42857142857143 ucm 0.476190476190476 ucm box fill
1.42857142857143 ucm 0 ucm 1.9047619047619 ucm 0.476190476190476 ucm box fill
1.9047619047619 ucm 0 ucm 2.38095238095238 ucm 0.476190476190476 ucm box fill
2.38095238095238 ucm 0 ucm 2.85714285714286 ucm 0.476190476190476 ucm box fill
2.85714285714286 ucm 0 ucm 3.33333333333333 ucm 0.476190476190476 ucm box fill
3.80952380952381 ucm 0 ucm 4.28571428571429 ucm 0.476190476190476 ucm box fill
4.28571428571429 ucm 0 ucm 4.76190476190476 ucm 0.476190476190476 ucm box fill
5.23809523809524 ucm 0 ucm 5.71428571428571 ucm 0.476190476190476 ucm box fill
5.71428571428571 ucm 0 ucm 6.19047619047619 ucm 0.476190476190476 ucm box fill
6.19047619047619 ucm 0 ucm 6.66666666666667 ucm 0.476190476190476 ucm box fill
7.61904761904762 ucm 0 ucm 8.09523809523809 ucm 0.476190476190476 ucm box fill
9.04761904761905 ucm 0 ucm 9.52380952380952 ucm 0.476190476190476 ucm box fill
9.52380952380952 ucm 0 ucm 10 ucm 0.476190476190476 ucm box fill
0 ucm 0.476190476190476 ucm 0.476190476190476 ucm 0.952380952380952 ucm box fill
2.85714285714286 ucm 0.476190476190476 ucm 3.33333333333333 ucm 0.952380952380952 ucm box fill
3.80952380952381 ucm 0.476190476190476 ucm 4.28571428571429 ucm 0.952380952380952 ucm box fill
4.76190476190476 ucm 0.476190476190476 ucm 5.23809523809524 ucm 0.952380952380952 ucm box fill
5.23809523809524 ucm 0.476190476190476 ucm 5.71428571428571 ucm 0.952380952380952 ucm box fill
7.14285714285714 ucm 0.476190476190476 ucm 7.61904761904762 ucm 0.952380952380952 ucm box fill
8.09523809523809 ucm 0.476190476190476 ucm 8.57142857142857 ucm 0.952380952380952 ucm box fill
9.04761904761905 ucm 0.476190476190476 ucm 9.52380952380952 ucm 0.952380952380952 ucm box fill
0 ucm 0.952380952380952 ucm 0.476190476190476 ucm 1.42857142857143 ucm box fill
0.952380952380952 ucm 0.952380952380952 ucm 1.42857142857143 ucm 1.42857142857143 ucm box fill
1.42857142857143 ucm 0.952380952380952 ucm 1.9047619047619 ucm 1.42857142857143 ucm box fill
1.9047619047619 ucm 0.952380952380952 ucm 2.38095238095238 ucm 1.42857142857143 ucm box fill
2.85714285714286 ucm 0.952380952380952 ucm 3.33333333333333 ucm 1.42857142857143 ucm box fill
3.80952380952381 ucm 0.952380952380952 ucm 4.28571428571429 ucm 1.42857142857143 ucm box fill
5.23809523809524 ucm 0.952380952380952 ucm 5.71428571428571 ucm 1.42857142857143 ucm box fill
5.71428571428571 ucm 0.952380952380952 ucm 6.19047619047619 ucm 1.42857142857143 ucm box fill
6.66666666666667 ucm 0.952380952380952 ucm 7.14285714285714 ucm 1.42857142857143 ucm box fill
7.14285714285714 ucm 0.952380952380952 ucm 7.61904761904762 ucm 1.42857142857143 ucm box fill
7.61904761904762 ucm 0.952380952380952 ucm 8.09523809523809 ucm 1.42857142857143 ucm box fill
8.09523809523809 ucm 0.952380952380952 ucm 8.57142857142857 ucm 1.42857142857143 ucm box fill
9.52380952380952 ucm 0.952380952380952 ucm 10 ucm 1.42857142857143 ucm box fill
0 ucm 1.42857142857143 ucm 0.476190476190476 ucm 1.9047619047619 ucm box fill
0.952380952380952 ucm 1.42857142857143 ucm 1.42857142857143 ucm 1.9047619047619 ucm box fill
1.42857142857143 ucm 1.42857142857143 ucm 1.9047619047619 ucm 1.9047619047619 ucm box fill
1.9047619047619 ucm 1.42857142857143 ucm 2.38095238095238 ucm 1.9047619047619 ucm box fill
2.85714285714286 ucm 1.42857142857143 ucm 3.33333333333333 ucm 1.9047619047619 ucm box fill
4.28571428571429 ucm 1.42857142857143 ucm 4.76190476190476 ucm 1.9047619047619 ucm box fill
5.23809523809524 ucm 1.42857142857143 ucm 5.71428571428571 ucm 1.9047619047619 ucm box fill
5.71428571428571 ucm 1.42857142857143 ucm 6.19047619047619 ucm 1.9047619047619 ucm box fill
6.19047619047619 ucm 1.42857142857143 ucm 6.66666666666667 ucm 1.9047619047619 ucm box fill
7.14285714285714 ucm 1.42857142857143 ucm 7.61904761904762 ucm 1.9047619047619 ucm box fill
7.61904761904762 ucm 1.42857142857143 ucm 8.09523809523809 ucm 1.9047619047619 ucm box fill
8.09523809523809 ucm 1.42857142857143 ucm 8.57142857142857 ucm 1.9047619047619 ucm box fill
9.04761904761905 ucm 1.42857142857143 ucm 9.52380952380952 ucm 1.9047619047619 ucm box fill
0 ucm 1.9047619047619 ucm 0.476190476190476 ucm 2.38095238095238 ucm box fill
0.952380952380952 ucm 1.9047619047619 ucm 1.42857142857143 ucm 2.38095238095238 ucm box fill
1.42857142857143 ucm 1.9047619047619 ucm 1.9047619047619 ucm 2.38095238095238 ucm box fill
1.9047619047619 ucm 1.9047619047619 ucm 2.38095238095238 ucm 2.38095238095238 ucm box fill
2.85714285714286 ucm 1.9047619047619 ucm 3.33333333333333 ucm 2.38095238095238 ucm box fill
3.80952380952381 ucm 1.9047619047619 ucm 4.28571428571429 ucm 2.38095238095238 ucm box fill
4.28571428571429 ucm 1.9047619047619 ucm 4.76190476190476 ucm 2.38095238095238 ucm box fill
5.23809523809524 ucm 1.9047619047619 ucm 5.71428571428571 ucm 2.38095238095238 ucm box fill
5.71428571428571 ucm 1.9047619047619 ucm 6.19047619047619 ucm 2.38095238095238 ucm box fill
8.09523809523809 ucm 1.9047619047619 ucm 8.57142857142857 ucm 2.38095238095238 ucm box fill
9.04761904761905 ucm 1.9047619047619 ucm 9.52380952380952 ucm 2.38095238095238 ucm box fill
0 ucm 2.38095238095238 ucm 0.476190476190476 ucm 2.85714285714286 ucm box fill
2.85714285714286 ucm 2.38095238095238 ucm 3.33333333333333 ucm 2.85714285714286 ucm box fill
3.80952380952381 ucm 2.38095238095238 ucm 4.28571428571429 ucm 2.85714285714286 ucm box fill
4.28571428571429 ucm 2.38095238095238 ucm 4.76190476190476 ucm 2.85714285714286 ucm box fill
6.19047619047619 ucm 2.38095238095238 ucm 6.66666666666667 ucm 2.85714285714286 ucm box fill
9.04761904761905 ucm 2.38095238095238 ucm 9.52380952380952 ucm 2.85714285714286 ucm box fill
9.52380952380952 ucm 2.38095238095238 ucm 10 ucm 2.85714285714286 ucm box fill
0 ucm 2.85714285714286 ucm 0.476190476190476 ucm 3.33333333333333 ucm box fill
0.476190476190476 ucm 2.85714285714286 ucm 0.952380952380952 ucm 3.33333333333333 ucm box fill
0.952380952380952 ucm 2.85714285714286 ucm 1.42857142857143 ucm 3.33333333333333 ucm box fill
1.42857142857143 ucm 2.85714285714286 ucm 1.9047619047619 ucm 3.33333333333333 ucm box fill
1.9047619047619 ucm 2.85714285714286 ucm 2.38095238095238 ucm 3.33333333333333 ucm box fill
2.38095238095238 ucm 2.85714285714286 ucm 2.85714285714286 ucm 3.33333333333333 ucm box fill
2.85714285714286 ucm 2.85714285714286 ucm 3.33333333333333 ucm 3.33333333333333 ucm box fill
3.80952380952381 ucm 2.85714285714286 ucm 4.28571428571429 ucm 3.33333333333333 ucm box fill
4.28571428571429 ucm 2.85714285714286 ucm 4.76190476190476 ucm 3.33333333333333 ucm box fill
5.23809523809524 ucm 2.85714285714286 ucm 5.71428571428571 ucm 3.33333333333333 ucm box fill
5.71428571428571 ucm 2.85714285714286 ucm 6.19047619047619 ucm 3.33333333333333 ucm box fill
6.19047619047619 ucm 2.85714285714286 ucm 6.66666666666667 ucm 3.33333333333333 ucm box fill
6.66666666666667 ucm 2.85714285714286 ucm 7.14285714285714 ucm 3.33333333333333 ucm box fill
7.14285714285714 ucm 2.85714285714286 ucm 7.61904761904762 ucm 3.33333333333333 ucm box fill
7.61904761904762 ucm 2.85714285714286 ucm 8.09523809523809 ucm 3.33333333333333 ucm box fill
8.09523809523809 ucm 2.85714285714286 ucm 8.57142857142857 ucm 3.33333333333333 ucm box fill
8.57142857142857 ucm 2.85714285714286 ucm 9.04761904761905 ucm 3.33333333333333 ucm box fill
9.04761904761905 ucm 2.85714285714286 ucm 9.52380952380952 ucm 3.33333333333333 ucm box fill
9.52380952380952 ucm 2.85714285714286 ucm 10 ucm 3.33333333333333 ucm box fill
3.80952380952381 ucm 3.33333333333333 ucm 4.28571428571429 ucm 3.80952380952381 ucm box fill
4.28571428571429 ucm 3.33333333333333 ucm 4.76190476190476 ucm 3.80952380952381 ucm box fill
5.71428571428571 ucm 3.33333333333333 ucm 6.19047619047619 ucm 3.80952380952381 ucm box fill
6.19047619047619 ucm 3.33333333333333 ucm 6.66666666666667 ucm 3.80952380952381 ucm box fill
7.61904761904762 ucm 3.33333333333333 ucm 8.09523809523809 ucm 3.80952380952381 ucm box fill
8.09523809523809 ucm 3.33333333333333 ucm 8.57142857142857 ucm 3.80952380952381 ucm box fill
8.57142857142857 ucm 3.33333333333333 ucm 9.04761904761905 ucm 3.80952380952381 ucm box fill
0.476190476190476 ucm 3.80952380952381 ucm 0.952380952380952 ucm 4.28571428571429 ucm box fill
0.952380952380952 ucm 3.80952380952381 ucm 1.42857142857143 ucm 4.28571428571429 ucm box fill
1.42857142857143 ucm 3.80952380952381 ucm 1.9047619047619 ucm 4.28571428571429 ucm box fill
1.9047619047619 ucm 3.80952380952381 ucm 2.38095238095238 ucm 4.28571428571429 ucm box fill
2.85714285714286 ucm 3.80952380952381 ucm 3.33333333333333 ucm 4.28571428571429 ucm box fill
4.28571428571429 ucm 3.80952380952381 ucm 4.76190476190476 ucm 4.28571428571429 ucm box fill
4.76190476190476 ucm 3.80952380952381 ucm 5.23809523809524 ucm 4.28571428571429 ucm box fill
5.71428571428571 ucm 3.80952380952381 ucm 6.19047619047619 ucm 4.28571428571429 ucm box fill
7.61904761904762 ucm 3.80952380952381 ucm 8.09523809523809 ucm 4.28571428571429 ucm box fill
9.04761904761905 ucm 3.80952380952381 ucm 9.52380952380952 ucm 4.28571428571429 ucm box fill
9.52380952380952 ucm 3.80952380952381 ucm 10 ucm 4.28571428571429 ucm box fill
0.476190476190476 ucm 4.28571428571429 ucm 0.952380952380952 ucm 4.76190476190476 ucm box fill
1.42857142857143 ucm 4.28571428571429 ucm 1.9047619047619 ucm 4.76190476190476 ucm box fill
1.9047619047619 ucm 4.28571428571429 ucm 2.38095238095238 ucm 4.76190476190476 ucm box fill
3.33333333333333 ucm 4.28571428571429 ucm 3.80952380952381 ucm 4.76190476190476 ucm box fill
3.80952380952381 ucm 4.28571428571429 ucm 4.28571428571429 ucm 4.76190476190476 ucm box fill
5.71428571428571 ucm 4.28571428571429 ucm 6.19047619047619 ucm 4.76190476190476 ucm box fill
7.61904761904762 ucm 4.28571428571429 ucm 8.09523809523809 ucm 4.76190476190476 ucm box fill
9.04761904761905 ucm 4.28571428571429 ucm 9.52380952380952 ucm 4.76190476190476 ucm box fill
0 ucm 4.76190476190476 ucm 0.476190476190476 ucm 5.23809523809524 ucm box fill
0.952380952380952 ucm 4.76190476190476 ucm 1.42857142857143 ucm 5.23809523809524 ucm box fill
1.42857142857143 ucm 4.76190476190476 ucm 1.9047619047619 ucm 5.23809523809524 ucm box fill
2.38095238095238 ucm 4.76190476190476 ucm 2.85714285714286 ucm 5.23809523809524 ucm box fill
2.85714285714286 ucm 4.76190476190476 ucm 3.33333333333333 ucm 5.23809523809524 ucm box fill
4.76190476190476 ucm 4.76190476190476 ucm 5.23809523809524 ucm 5.23809523809524 ucm box fill
5.23809523809524 ucm 4.76190476190476 ucm 5.71428571428571 ucm 5.23809523809524 ucm box fill
5.71428571428571 ucm 4.76190476190476 ucm 6.19047619047619 ucm 5.23809523809524 ucm box fill
6.66666666666667 ucm 4.76190476190476 ucm 7.14285714285714 ucm 5.23809523809524 ucm box fill
7.61904761904762 ucm 4.76190476190476 ucm 8.09523809523809 ucm 5.23809523809524 ucm box fill
8.57142857142857 ucm 4.76190476190476 ucm 9.04761904761905 ucm 5.23809523809524 ucm box fill
9.04761904761905 ucm 4.76190476190476 ucm 9.52380952380952 ucm 5.23809523809524 ucm box fill
9.52380952380952 ucm 4.76190476190476 ucm 10 ucm 5.23809523809524 ucm box fill
0.476190476190476 ucm 5.23809523809524 ucm 0.952380952380952 ucm 5.71428571428571 ucm box fill
0.952380952380952 ucm 5.23809523809524 ucm 1.42857142857143 ucm 5.71428571428571 ucm box fill
1.42857142857143 ucm 5.23809523809524 ucm 1.9047619047619 ucm 5.71428571428571 ucm box fill
2.38095238095238 ucm 5.23809523809524 ucm 2.85714285714286 ucm 5.71428571428571 ucm box fill
3.33333333333333 ucm 5.23809523809524 ucm 3.80952380952381 ucm 5.71428571428571 ucm box fill
4.28571428571429 ucm 5.23809523809524 ucm 4.76190476190476 ucm 5.71428571428571 ucm box fill
5.71428571428571 ucm 5.23809523809524 ucm 6.19047619047619 ucm 5.71428571428571 ucm box fill
6.19047619047619 ucm 5.23809523809524 ucm 6.66666666666667 ucm 5.71428571428571 ucm box fill
7.14285714285714 ucm 5.23809523809524 ucm 7.61904761904762 ucm 5.71428571428571 ucm box fill
7.61904761904762 ucm 5.23809523809524 ucm 8.09523809523809 ucm 5.71428571428571 ucm box fill
8.09523809523809 ucm 5.23809523809524 ucm 8.57142857142857 ucm 5.71428571428571 ucm box fill
8.57142857142857 ucm 5.23809523809524 ucm 9.04761904761905 ucm 5.71428571428571 ucm box fill
9.04761904761905 ucm 5.23809523809524 ucm 9.52380952380952 ucm 5.71428571428571 ucm box fill
9.52380952380952 ucm 5.23809523809524 ucm 10 ucm 5.71428571428571 ucm box fill
0 ucm 5.71428571428571 ucm 0.476190476190476 ucm 6.19047619047619 ucm box fill
0.476190476190476 ucm 5.71428571428571 ucm 0.952380952380952 ucm 6.19047619047619 ucm box fill
0.952380952380952 ucm 5.71428571428571 ucm 1.42857142857143 ucm 6.19047619047619 ucm box fill
1.9047619047619 ucm 5.71428571428571 ucm 2.38095238095238 ucm 6.19047619047619 ucm box fill
2.38095238095238 ucm 5.71428571428571 ucm 2.85714285714286 ucm 6.19047619047619 ucm box fill
2.85714285714286 ucm 5.71428571428571 ucm 3.33333333333333 ucm 6.19047619047619 ucm box fill
3.33333333333333 ucm 5.71428571428571 ucm 3.80952380952381 ucm 6.19047619047619 ucm box fill
3.80952380952381 ucm 5.71428571428571 ucm 4.28571428571429 ucm 6.19047619047619 ucm box fill
4.76190476190476 ucm 5.71428571428571 ucm 5.23809523809524 ucm 6.19047619047619 ucm box fill
5.23809523809524 ucm 5.71428571428571 ucm 5.71428571428571 ucm 6.19047619047619 ucm box fill
5.71428571428571 ucm 5.71428571428571 ucm 6.19047619047619 ucm 6.19047619047619 ucm box fill
6.19047619047619 ucm 5.71428571428571 ucm 6.66666666666667 ucm 6.19047619047619 ucm box fill
6.66666666666667 ucm 5.71428571428571 ucm 7.14285714285714 ucm 6.19047619047619 ucm box fill
8.57142857142857 ucm 5.71428571428571 ucm 9.04761904761905 ucm 6.19047619047619 ucm box fill
3.80952380952381 ucm 6.19047619047619 ucm 4.28571428571429 ucm 6.66666666666667 ucm box fill
4.76190476190476 ucm 6.19047619047619 ucm 5.23809523809524 ucm 6.66666666666667 ucm box fill
5.23809523809524 ucm 6.19047619047619 ucm 5.71428571428571 ucm 6.66666666666667 ucm box fill
0 ucm 6.66666666666667 ucm 0.476190476190476 ucm 7.14285714285714 ucm box fill
0.476190476190476 ucm 6.66666666666667 ucm 0.952380952380952 ucm 7.14285714285714 ucm box fill
0.952380952380952 ucm 6.66666666666667 ucm 1.42857142857143 ucm 7.14285714285714 ucm box fill
1.42857142857143 ucm 6.66666666666667 ucm 1.9047619047619 ucm 7.14285714285714 ucm box fill
1.9047619047619 ucm 6.66666666666667 ucm 2.38095238095238 ucm 7.14285714285714 ucm box fill
2.38095238095238 ucm 6.66666666666667 ucm 2.85714285714286 ucm 7.14285714285714 ucm box fill
2.85714285714286 ucm 6.66666666666667 ucm 3.33333333333333 ucm 7.14285714285714 ucm box fill
3.80952380952381 ucm 6.66666666666667 ucm 4.28571428571429 ucm 7.14285714285714 ucm box fill
4.76190476190476 ucm 6.66666666666667 ucm 5.23809523809524 ucm 7.14285714285714 ucm box fill
5.71428571428571 ucm 6.66666666666667 ucm 6.19047619047619 ucm 7.14285714285714 ucm box fill
6.66666666666667 ucm 6.66666666666667 ucm 7.14285714285714 ucm 7.14285714285714 ucm box fill
7.14285714285714 ucm 6.66666666666667 ucm 7.61904761904762 ucm 7.14285714285714 ucm box fill
7.61904761904762 ucm 6.66666666666667 ucm 8.09523809523809 ucm 7.14285714285714 ucm box fill
8.09523809523809 ucm 6.66666666666667 ucm 8.57142857142857 ucm 7.14285714285714 ucm box fill
8.57142857142857 ucm 6.66666666666667 ucm 9.04761904761905 ucm 7.14285714285714 ucm box fill
9.04761904761905 ucm 6.66666666666667 ucm 9.52380952380952 ucm 7.14285714285714 ucm box fill
9.52380952380952 ucm 6.66666666666667 ucm 10 ucm 7.14285714285714 ucm box fill
0 ucm 7.14285714285714 ucm 0.476190476190476 ucm 7.61904761904762 ucm box fill
2.85714285714286 ucm 7.14285714285714 ucm 3.33333333333333 ucm 7.61904761904762 ucm box fill
4.28571428571429 ucm 7.14285714285714 ucm 4.76190476190476 ucm 7.61904761904762 ucm box fill
4.76190476190476 ucm 7.14285714285714 ucm 5.23809523809524 ucm 7.61904761904762 ucm box fill
5.23809523809524 ucm 7.14285714285714 ucm 5.71428571428571 ucm 7.61904761904762 ucm box fill
6.66666666666667 ucm 7.14285714285714 ucm 7.14285714285714 ucm 7.61904761904762 ucm box fill
9.52380952380952 ucm 7.14285714285714 ucm 10 ucm 7.61904761904762 ucm box fill
0 ucm 7.61904761904762 ucm 0.476190476190476 ucm 8.09523809523809 ucm box fill
0.952380952380952 ucm 7.61904761904762 ucm 1.42857142857143 ucm 8.09523809523809 ucm box fill
1.42857142857143 ucm 7.61904761904762 ucm 1.9047619047619 ucm 8.09523809523809 ucm box fill
1.9047619047619 ucm 7.61904761904762 ucm 2.38095238095238 ucm 8.09523809523809 ucm box fill
2.85714285714286 ucm 7.61904761904762 ucm 3.33333333333333 ucm 8.09523809523809 ucm box fill
4.28571428571429 ucm 7.61904761904762 ucm 4.76190476190476 ucm 8.09523809523809 ucm box fill
5.71428571428571 ucm 7.61904761904762 ucm 6.19047619047619 ucm 8.09523809523809 ucm box fill
6.66666666666667 ucm 7.61904761904762 ucm 7.14285714285714 ucm 8.09523809523809 ucm box fill
7.61904761904762 ucm 7.61904761904762 ucm 8.09523809523809 ucm 8.09523809523809 ucm box fill
8.09523809523809 ucm 7.61904761904762 ucm 8.57142857142857 ucm 8.09523809523809 ucm box fill
8.57142857142857 ucm 7.61904761904762 ucm 9.04761904761905 ucm 8.09523809523809 ucm box fill
9.52380952380952 ucm 7.61904761904762 ucm 10 ucm 8.09523809523809 ucm box fill
0 ucm 8.09523809523809 ucm 0.476190476190476 ucm 8.57142857142857 ucm box fill
0.952380952380952 ucm 8.09523809523809 ucm 1.42857142857143 ucm 8.57142857142857 ucm box fill
1.42857142857143 ucm 8.09523809523809 ucm 1.9047619047619 ucm 8.57142857142857 ucm box fill
1.9047619047619 ucm 8.09523809523809 ucm 2.38095238095238 ucm 8.57142857142857 ucm box fill
2.85714285714286 ucm 8.09523809523809 ucm 3.33333333333333 ucm 8.57142857142857 ucm box fill
5.71428571428571 ucm 8.09523809523809 ucm 6.19047619047619 ucm 8.57142857142857 ucm box fill
6.66666666666667 ucm 8.09523809523809 ucm 7.14285714285714 ucm 8.57142857142857 ucm box fill
7.61904761904762 ucm 8.09523809523809 ucm 8.09523809523809 ucm 8.57142857142857 ucm box fill
8.09523809523809 ucm 8.09523809523809 ucm 8.57142857142857 ucm 8.57142857142857 ucm box fill
8.57142857142857 ucm 8.09523809523809 ucm 9.04761904761905 ucm 8.57142857142857 ucm box fill
9.52380952380952 ucm 8.09523809523809 ucm 10 ucm 8.57142857142857 ucm box fill
0 ucm 8.57142857142857 ucm 0.476190476190476 ucm 9.04761904761905 ucm box fill
0.952380952380952 ucm 8.57142857142857 ucm 1.42857142857143 ucm 9.04761904761905 ucm box fill
1.42857142857143 ucm 8.57142857142857 ucm 1.9047619047619 ucm 9.04761904761905 ucm box fill
1.9047619047619 ucm 8.57142857142857 ucm 2.38095238095238 ucm 9.04761904761905 ucm box fill
2.85714285714286 ucm 8.57142857142857 ucm 3.33333333333333 ucm 9.04761904761905 ucm box fill
3.80952380952381 ucm 8.57142857142857 ucm 4.28571428571429 ucm 9.04761904761905 ucm box fill
4.76190476190476 ucm 8.57142857142857 ucm 5.23809523809524 ucm 9.04761904761905 ucm box fill
6.66666666666667 ucm 8.57142857142857 ucm 7.14285714285714 ucm 9.04761904761905 ucm box fill
7.61904761904762 ucm 8.57142857142857 ucm 8.09523809523809 ucm 9.04761904761905 ucm box fill
8.09523809523809 ucm 8.57142857142857 ucm 8.57142857142857 ucm 9.04761904761905 ucm box fill
8.57142857142857 ucm 8.57142857142857 ucm 9.04761904761905 ucm 9.04761904761905 ucm box fill
9.52380952380952 ucm 8.57142857142857 ucm 10 ucm 9.04761904761905 ucm box fill
0 ucm 9.04761904761905 ucm 0.476190476190476 ucm 9.52380952380952 ucm box fill
2.85714285714286 ucm 9.04761904761905 ucm 3.33333333333333 ucm 9.52380952380952 ucm box fill
5.71428571428571 ucm 9.04761904761905 ucm 6.19047619047619 ucm 9.52380952380952 ucm box fill
6.66666666666667 ucm 9.04761904761905 ucm 7.14285714285714 ucm 9.52380952380952 ucm box fill
9.52380952380952 ucm 9.04761904761905 ucm 10 ucm 9.52380952380952 ucm box fill
0 ucm 9.52380952380952 ucm 0.476190476190476 ucm 10 ucm box fill
0.476190476190476 ucm 9.52380952380952 ucm 0.952380952380952 ucm 10 ucm box fill
0.952380952380952 ucm 9.52380952380952 ucm 1.42857142857143 ucm 10 ucm box fill
1.42857142857143 ucm 9.52380952380952 ucm 1.9047619047619 ucm 10 ucm box fill
1.9047619047619 ucm 9.52380952380952 ucm 2.38095238095238 ucm 10 ucm box fill
2.38095238095238 ucm 9.52380952380952 ucm 2.85714285714286 ucm 10 ucm box fill
2.85714285714286 ucm 9.52380952380952 ucm 3.33333333333333 ucm 10 ucm box fill
4.76190476190476 ucm 9.52380952380952 ucm 5.23809523809524 ucm 10 ucm box fill
5.71428571428571 ucm 9.52380952380952 ucm 6.19047619047619 ucm 10 ucm box fill
6.66666666666667 ucm 9.52380952380952 ucm 7.14285714285714 ucm 10 ucm box fill
7.14285714285714 ucm 9.52380952380952 ucm 7.61904761904762 ucm 10 ucm box fill
7.61904761904762 ucm 9.52380952380952 ucm 8.09523809523809 ucm 10 ucm box fill
8.09523809523809 ucm 9.52380952380952 ucm 8.57142857142857 ucm 10 ucm box fill
8.57142857142857 ucm 9.52380952380952 ucm 9.04761904761905 ucm 10 ucm box fill
9.04761904761905 ucm 9.52380952380952 ucm 9.52380952380952 ucm 10 ucm box fill
9.52380952380952 ucm 9.52380952380952 ucm 10 ucm 10 ucm box fill
%%EOF
