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

 %asymVar=" lvol" 
%LrexTur="yok"

 %lic="kagan" 
 %maxlag = "11" 
%evars="" 'gfc
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

%DosyaTuru="M"
%industries="LM03 LM04 LM05 LM06 LM07 LM08 LM09 LM10 LM11 LM12 LM13 LM14 LM15 LM16 LM17 LM18 LM19 LM20 LM21 LM22 LM23 LM25 LM26 LM27 LM28 LM29 LM30 LM32 LM33 LM34 LM35 LM36 LM37 LM38 LM39 LM40 LM41 LM42 LM43 LM44 LM45 LM46 LM48 LM49 LM50 LM51 LM52 LM53 LM54 LM55 LM56 LM57 LM58 LM59 LM60 LM61 LM62 LM63 LM64 LM65 LM66 LM67 LM68 LM69 LM70 LM71 LM72 LM73 LM74 LM75 LM76 LM79 LM80 LM81 LM82 LM83 LM84 LM85 LM86 LM87 LM89 LM90 LM91 LM92 LM93 LM94 LM95 LM96 LM97 LM99 LMTO"

%indVarsHere="lyuk lrer lvol"

!siradaki=  @wcount(%industries )


for !siraki1=1 to  !siradaki 
%ulkeler=@word(%industries,!siraki1 )
include ".\masscommand7.general.libs.prg"
 next j

