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
%yontem="ss aa"

 %asymVar=" lorex" 
%LrexTur="tb"
%evars="gfc"
 %lic="kagan" 
 %maxlag = "11" 
%evars2=" au	bl	dn	fn	fr	gr	gc	ir	it	lx	nt	pt	sp	sw"
!MakeLibreFormulas=0
!AddCriterionTable=0
!keepAbstract=1
!KeepEquation=1
!PlotShortRun=0
!KeepPlot=0
 !KeepMainFrame=1
!rest=2	 '[2] "1"No intercept and no trend""  "2"intercept and no trend"" "3"Intercept and trend""
%cr="sc" 'sc aic
!DifferentAsymLag=1

'%industries="LTB1 LTB10 LTB11 LTB12 LTB13 LTB14 LTB15 LTB16 LTB17 LTB18 LTB19 LTB2 LTB20 LTB21 LTB22 LTB23 LTB3 LTB4 LTB5 LTB6 LTB7 LTB8 LTB9"

'export

%ulkeler="LTB"

!siradaki=  @wcount(%evars2 )

for !siraki1=1 to  !siradaki 
    %GeciciAd=@word(%evars2,!siraki1 )
        %buVol="lrex"+%GeciciAd
        series LREX={%buVol}
       ' delete lnv_p* lnv_n*
      ' %buGEciciUlkem 
      %ulkeler="ltb"+%GeciciAd
      
       %buGEciciGelir="ly"+%GeciciAd
       series LY={%buGEciciGelir}
       
    
    %asymVar=" lrex"
    
    %indVarsHere=" lyuk ly  LREX" 
    %DosyaTuru= %GeciciAd
    include ".\masscommand7.general.libs.prg"
 next j

