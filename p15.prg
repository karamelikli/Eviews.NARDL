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

%evars="dum"  '  gfc
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


%industries="US	HK	JP	DE	AU	MY	SG	UK	TH	BR	IN	NL	RU	ID	FR	CA	IT	MX	ZA	ES	KR"



!siradaki=  @wcount(%industries )


for !siraki1=1 to  !siradaki 
%ulkeKod=@word(%industries,!siraki1 )


%buVar="lrex_"+%ulkeKod

series LREX={%buVar}

%buVar="LVOL"+%ulkeKod
series LVOL={%buVar}

%buVar2="lyf_"+%ulkeKod
series lyf={%buVar2}
        
 %asymVar=" lrex"
 %indVarsHere="lyf lyus lrex"


%lrex="lrex"+%ulkeKod
%asymVar="LVOL"
%DosyaTuru="m"+%ulkeKod
%ulkeler="lm_"+%ulkeKod
%indVarsHere="lych LREX LVOL" 
include ".\masscommand7.general.libs.prg"


%DosyaTuru="x"+%ulkeKod
%ulkeler="lx_"+%ulkeKod
%indVarsHere="lyf LREX LVOL"
include ".\masscommand7.general.libs.prg"
 next j


