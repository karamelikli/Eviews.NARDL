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
%cr="aic sc" 
!DifferentAsymLag=1
%yontem="ss"

 
%LrexTur="elnazb" 
 %maxlag = "3"  
%DosyaTuru="gobez"
%ukodlar="db df dm"
' %industries="lIx lIm lFx lFm"





!siradaki=  @wcount(%ukodlar)
' 

for !siraki1=1 to  !siradaki 
%ulkeKod=@word(%ukodlar,!siraki1 )
%ulkeler="gHE"+%ulkeKod
series {%ulkeler}=HE
'%ulkeler=%HEname
%buVar="gobez"+%ulkeKod
series obez={%buVar}


        
' %asymVar=" lrex"
 %indVarsHere="ggdp obez"
 
include ".\masscommand7.general.libs.prg"
 next j
 
 
 
'____________________________________________


