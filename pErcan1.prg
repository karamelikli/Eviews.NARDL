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
%cr="sc" 
!DifferentAsymLag=0
%yontem="ss aa as sa"

 
%LrexTur="p11" 
 %maxlag = "11"  
%DosyaTuru="ltb"
%ukodlar="CAB CPI	EFXR	INDPR"
' %industries="lIx lIm lFx lFm"





!siradaki=  @wcount(%ukodlar)
' 

for !siraki1=1 to  !siradaki 
%ulkeKod=@word(%ukodlar,!siraki1 )
%ulkeler=%DosyaTuru+%ulkeKod
series {%ulkeler}={%ulkeKod}

if %ulkeKod="CAB" then
 %asymVar=" NFCRED"
 %indVarsHere="NFCRED REER INTRD3 PETPRUSD"
 
    else
    if  %ulkeKod="CPI" then
    %asymVar=" NFCRED EFXR"
    %indVarsHere="NFCRED EFXR INTRD3 PETPRUSD"
    
        else
        if  %ulkeKod="EFXR" then
        %asymVar=""
        %indVarsHere="PUDCRE CPI CAB INTRCM"
           
           else
           if %ulkeKod="INDPR" then
            %asymVar=" NFCRED"
            %indVarsHere="NFCRED INTRD3 CAB ELECPR"
            endif
        endif
    endif
endif


 
include ".\masscommand7.general.libs.prg"
 next j
 
 
 
'____________________________________________


