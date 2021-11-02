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
%evars="gfc" '
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

%DosyaTuru="X"
%industries="LXTOT LX98 LX97 LX96 LX95 LX94 LX92 LX91 LX90 LX89 LX88 LX87 LX86 LX85 LX84 LX83 LX82 LX81 LX80 LX79 LX78 LX76 LX75 LX74 LX73 LX72 LX71 LX70 LX69 LX68 LX67 LX64 LX63 LX62 LX61 LX60 LX59 LX58 LX57 LX56 LX55 LX54 LX52 LX51 LX49 LX48 LX47 LX44 LX42 LX41 LX40 LX39 LX38 LX37 LX35 LX34 LX33 LX32 LX31 LX30 LX29 LX28"

%indVarsHere="lych lrer lvol"

!siradaki=  @wcount(%industries )


for !siraki1=1 to  !siradaki 
%ulkeler=@word(%industries,!siraki1 )
include ".\masscommand7.general.libs.prg"
 next j

