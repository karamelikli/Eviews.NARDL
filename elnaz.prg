!ifVarLar=1 'subroutineler kapatılsın diye var.
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
!rest=3	 '[2] "1"No intercept and no trend""  "2"intercept and no trend"" "3"Intercept and trend""
%cr="sc" 
!DifferentAsymLag=1
%yontem="ss"

 
%LrexTur="elnaz" 
 %maxlag = "4"  
%DosyaTuru="obez"
%ukodlar="ab am af bb bm bf cb cf cm db df dm"
' %industries="lIx lIm lFx lFm"





!siradaki=  @wcount(%ukodlar)
' 

for !siraki1=1 to  !siradaki 
%ulkeKod=@word(%ukodlar,!siraki1 )
%ulkeler="HE"+%ulkeKod
series {%ulkeler}=HE
'%ulkeler=%HEname
%buVar="obez"+%ulkeKod
series obez={%buVar}


        
' %asymVar=" lrex"
 %indVarsHere="gdp obez"
 
include ".\masscommand7.general.libs.prg"
 next j
 
 
 
'____________________________________________


