::Tooltib Balloon
::By SachaDee - 2016

@echo off
chcp 65001
set "$Titre=RECO"
Set "$Message=Rebonjour, Réco a éteind votre ordinateur car il a détecté une inactivité de plus de 1h. Vous auriez pu changer 3 fois votre telephone durant cette inactivité."

::Pour L'icone valeur possible Information, error, warning, none

for /f "delims=" %%a in ('powershell -c "[reflection.assembly]::loadwithpartialname('System.Windows.Forms');[reflection.assembly]::loadwithpartialname('System.Drawing');$notify = new-object system.windows.forms.notifyicon;$notify.icon = 'logo.ico';$notify.visible = $true;$notify.showballoontip(10,'%$Titre%','%$Message%',[system.windows.forms.tooltipicon]::None)"') do (set$=)
