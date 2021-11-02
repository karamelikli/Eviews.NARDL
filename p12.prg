!ifVarLar=1 'subroutineler kapatýlsýn diye var.
include ".\libs.hardl.prg"
include ".\libs.general.prg"
include ".\settings.prg"
include ".\libs.tests.prg"

!result=1
!debug =0
!displayIT=0 
if !debug = 1 then
	logmode +debug
else 
	logmode +addin
endif

 %lic="kagan" 

%evars="gfc"  '  
!MakeLibreFormulas=0
!AddCriterionTable=0
!keepAbstract=1
!KeepEquation=1
!PlotShortRun=0
!KeepPlot=0
 !KeepMainFrame=1
!rest=2	 '[2] "1"No intercept and no trend""  "2"intercept and no trend"" "3"Intercept and trend""
%cr="sc" 
!DifferentAsymLag=1
%yontem="ss aa"
 %asymVar=" lrex" 
 
%LrexTur="p12" 
 %maxlag = "7"  
%DosyaTuru="sin"
%industries="Lrix lrfx"
%indVarsHere="lrex lyw"
!siradaki=  @wcount(%industries )
for !siraki1=1 to  !siradaki 
%ulkeler=@word(%industries,!siraki1 )
include ".\masscommand7.general.libs.prg"
 next j
 
%industries="Lrim lrfm"
%indVarsHere="lrex lys"
!siradaki=  @wcount(%industries )
for !siraki1=1 to  !siradaki 
%ulkeler=@word(%industries,!siraki1 )
include ".\masscommand7.general.libs.prg"
 next j
 
'____________________________________________


