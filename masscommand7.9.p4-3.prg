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
%yontem="ss aa as sa"

 %asymVar=" lorex" 


 %lic="kagan" 
 %maxlag = "3" 
!MakeLibreFormulas=0
!AddCriterionTable=0
!keepAbstract=1
!KeepEquation=1
!PlotShortRun=0
!KeepPlot=0
 !KeepMainFrame=1
!rest=2	 '[2] "1"No intercept and no trend""  "2"intercept and no trend"" "3"Intercept and trend""
%cr="aic" 
!DifferentAsymLag=0

%industries="LTB01 LTB02 LTB03 LTB04 LTB05 LTB06 LTB07 LTB08 LTB09 LTB10  LTB11 LTB12 LTB13 LTB14 LTB15 LTB16 LTB17 LTB18 LTB19 LTB20 LTB21 LTB22 LTB23"

%LrexTur="import"

%ulkeler= %industries
%sanctions="assped asseed"
!siradaki=  @wcount(%sanctions )

for !siraki1=1 to  !siradaki 
    %sanc=@word(%sanctions,!siraki1 )
    %DosyaTuru= %sanc
    %indVarsHere=" lyeu lorex asges "+%sanc
    include ".\masscommand7.general.libs.prg"
 next j


