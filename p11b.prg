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

%evars=""
!MakeLibreFormulas=0
!AddCriterionTable=0
!keepAbstract=1
!KeepEquation=1
!PlotShortRun=0
!KeepPlot=0
 !KeepMainFrame=1
!rest=2	 '[2] "1"No intercept and no trend""  "2"intercept and no trend"" "3"Intercept and trend""
%cr="aic" 
!DifferentAsymLag=1
%yontem="ss aa"

 
%LrexTur="p11" 
 %maxlag = "6"  
%DosyaTuru="ltbI"
%ukodlar="ca	it	kr	de	jp	au	uk	fr	be"
' %industries="lIx lIm lFx lFm"





!siradaki=  @wcount(%ukodlar)
' 

for !siraki1=1 to  !siradaki 
%ulkeKod=@word(%ukodlar,!siraki1 )
%ulkeler=%DosyaTuru+%ulkeKod

%buVar="lrex"+%ulkeKod
series LREX={%buVar}

%buVar2="ly"+%ulkeKod
series lyf={%buVar2}
        
 %asymVar=" lrex"
 %indVarsHere="lyf lyus lrex"
 
include ".\masscommand7.general.libs.prg"
 next j
 
 
 
'____________________________________________

