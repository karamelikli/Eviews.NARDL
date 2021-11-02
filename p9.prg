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

 %asymVar=" lrer"  
%LrexTur="p9" 
 %maxlag = "11"  
%DosyaTuru="TB"
%industries=" LTB03 LTB04 LTB05 LTB07 LTB09 LTB15 LTB17 LTB18 LTB19 LTB20 LTB21 LTB22 LTB23 LTB25 LTB27 LTB28 LTB29 LTB30 LTB32 LTB33 LTB34 LTB35 LTB37 LTB38 LTB39 LTB40 LTB41 LTB42 LTB44 LTB48 LTB49 LTB50 LTB51 LTB52 LTB54 LTB55 LTB56 LTB57 LTB58 LTB59 LTB60 LTB61 LTB62 LTB63 LTB64 LTB68 LTB69 LTB70 LTB71 LTB72 LTB73 LTB74 LTB75 LTB76 LTB81 LTB82 LTB83 LTB84 LTB85 LTB86 LTB87 LTB90 LTB91 LTB92 LTB94 LTB95 LTB96 LTB97 LTB100"


%indVarsHere="lyuk lycn lrer"


!siradaki=  @wcount(%industries )
' @uiprompt(%industries)

for !siraki1=1 to  !siradaki 
%ulkeler=@word(%industries,!siraki1 )
include ".\masscommand7.general.libs.prg"
 next j
 
 
 
'____________________________________________


