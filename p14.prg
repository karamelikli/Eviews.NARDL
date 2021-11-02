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

%evars=""  '  gfc
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

%LrexTur="yok"
 %maxlag = "7" 


%industries="au cn de hk in id jp kr my ph sg us"



!siradaki=  @wcount(%industries )


for !siraki1=1 to  !siradaki 
%Country=@word(%industries,!siraki1 )
pageselect {%Country}
%lrex="lrex"+%Country
%asymVar=%lrex
%DosyaTuru="m"+%Country
%ulkeler="lm"+%Country
%indVarsHere="lyth "+%lrex
include ".\masscommand7.general.libs.prg"


%DosyaTuru="x"+%Country
%ulkeler="lx"+%Country
%indVarsHere="ly"+%Country+" "+%lrex
include ".\masscommand7.general.libs.prg"
 next j


