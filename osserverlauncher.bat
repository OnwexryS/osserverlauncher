@echo off
title Onwexry's Server Console @2.6!



if exist ossettings.ini (
	for /f "delims=§" %%S in (ossettings.ini) do set %%S
	goto loadmenu
)
color 9f

title O's Console Setup 1/4  ^| Select Language
echo Welcome to O's Console
:setlanguage
echo Please select a language
echo Languages: EN, TR
echo.
set lang=EN
set /p lang=
if %lang% ==EN goto languageset
if %lang% ==TR goto languageset
echo %lang% is not a defined language
goto setlanguage
:languageset
call :loadmessages
cls



title %setup2%
echo %setup2_1%
echo %setup2_2% & echo.
echo %setup2_3% & echo.
set title= %setup2_4%
set /p title=

cls
title %setup3%
echo %setup3_1%
set /p ram=
set flags= -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=40 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=16M -XX:G1ReservePercent=15 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=20 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Duser.language=EN -Dnashorn.args=--no-deprecation-warning -Daikars.new.flags=true
call :savesettings
cls


title %setup4%
echo %setup4_1%
echo %setup4_2%
echo.
echo %setup4_3%
echo.
echo %setup4_4%
echo %setup4_5%
set /p wait=



:loadmenu
call :loadmessages
:menu
call :updatemessages
SET a=0
title Tag: %title%
cls
if exist server.jar (
    set a=1
) else (
    set a=0
)

color 0C
if %a%==0 goto a0
:a1
	
	echo                                                 +-------+.    
	echo                                                 ^|`.     ^| `.  
	echo                                                 ^|  `+---+---+
	echo %menu_1%                     ^|   ^|   ^|   ^|
	echo %menu_2%    ^|   ^|   ^|   ^|
	echo                                                 +---+---+.  ^|
	echo                                                  `. ^|     `.^|
	echo                                                    `+-------+
	echo %menu_b1%
	echo %menu_b2%
	echo %menu_b3%
	echo %menu_b4%
	echo %menu_b5%
	echo %menu_b6%
	echo %menu_b7%
	echo %menu_b8%
	echo %menu_b9%
	echo %menu_b10%

	set /p udefine= %menu_selection% 
	if %udefine%==0 exit()
	if %udefine%==1 goto start
	if %udefine%==2 goto mb
	if %udefine%==3 goto pb
	if %udefine%==4 goto setram
	if %udefine%==5 goto clearlogs
	if %udefine%==6 cls
	if %udefine%==7 goto newtitle
	if %udefine%==8 goto oneriler
	if %udefine%==9 goto openlogs
	if %udefine%==10 goto flagselector
	echo Islem Tamamlandi 
	goto menu


:a0
echo %error_serverjar_1%
echo %error_serverjar_2%
echo %error_serverjar_3%
echo %error_serverjar_4%
set /p secim= 
cls
goto menu
:ae

:flagselector
color 9f
cls
echo %message_flagselector_1% & echo.
echo %message_flagselector_2% & echo.
echo %message_flagselector_3% & echo.
echo %message_flagselector_4%
echo %message_flagselector_5% & echo.
echo %message_flagselector_6%
echo %message_flagselector_7% & echo.
echo %message_flagselector_8%
echo %message_flagselector_9% & echo.
echo %message_flagselector_10%
echo %message_flagselector_11% & echo. & echo. & echo.
echo %message_flagselector_12% %flags%
set /p secim= %message_flagselector_selection%

if %secim%==1 goto aikar12flag
if %secim%==2 goto aikar6flag
if %secim%==3 goto zgcflag
if %secim%==4 goto clearflags
goto menu

:aikar12flag
set flags= -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=40 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=16M -XX:G1ReservePercent=15 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=20 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Duser.language=EN -Dnashorn.args=--no-deprecation-warning -Daikars.new.flags=true
call :savesettings
goto flagselector

:aikar6flag
set flags= -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Duser.language=EN -Dnashorn.args=--no-deprecation-warning -Daikars.new.flags=true
call :savesettingsni
goto flagselector

:zgcflag
set flags= -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:-UseParallelGC -XX:-UseParallelGC -XX:-UseG1GC -XX:+UseZGC -Dnashorn.args=--no-deprecation-warning -Duser.language=EN
call :savesettings
goto flagselector

:clearflags
set flags= -Dnashorn.args=--no-deprecation-warning -Duser.language=EN
call :savesettings
goto flagselector


:mb
color A0
set funcdate=%date:~-4%_%date:~3,2%_%date:~0,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%
XCOPY /E /H "world" "%mapbackup_foldername%\maps\map_%funcdate%\world\"
echo %mapbackup_1%
echo %mapbackup_selection%
set /p udefine=
if %udefine%==%mapbackup_no% goto yedekend
XCOPY /E /H "world_nether" "%mapbackup_foldername%\maps\map_%funcdate%\world_nether\"
:yedekend
echo %mapbackup_2%
echo %mapbackup_selection%
set /p udefine=
if %udefine%==%mapbackup_no% goto menu
XCOPY /E /H "world_the_end" "%mapbackup_foldername%\maps\map_%funcdate%\world_the_end\"
goto menu
:pb
color A0
set funcdate=%date:~-4%_%date:~3,2%_%date:~0,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%
XCOPY /E /H "plugins" "yedek\plugins\pl_%funcdate%\"
cls
goto menu

:setram
echo %message_ram_1%
set /p ram=%message_ram_enter%
call :savesettings
cls
goto menu

:newtitle
echo %message_title_1%
set /p title=%message_title_enter%
title Tag: %title%
call :savesettings
cls
goto menu

:openlogs
if exist "logs\latest.log" start "logs\latest.log"
goto menu

:clearlogs
cls
color A0
:minecraftserverlog
echo %clearlogs_1%
echo %clearlogs_selection%
set /p udefine=
if %udefine%==%clearlogs_no% goto skriptlogs
if exist logs\*.gz del logs\*.gz /q

:skriptlogs
echo %clearlogs_2%
echo %clearlogs_selection%
set /p udefine=
if %udefine%==%clearlogs_no% goto skriptsaves
if exist plugins\Skript\logs\*.log del plugins\Skript\logs\*.log /q

:skriptsaves
echo %clearlogs_3%
echo %clearlogs_selection%
set /p udefine=
if %udefine%==%clearlogs_no% goto authmelogs
if exist plugins\Skript\backups\*.csv del plugins\Skript\backups\*.csv /q

:authmelogs
echo %clearlogs_4%
echo %clearlogs_selection%
set /p udefine=
if %udefine%==%clearlogs_no% goto fclearlogs
if exist plugins\AuthMe\authme.log del plugins\AuthMe\authme.log /q

:fclearlogs
echo %clearlogs_done%
cls
goto menu


:oneriler
color 9f
cls
title %Recommendations_1%recho %Recommendations_2%recho %Recommendations_3%recho %Recommendations_4%recho %Recommendations_5%recho %Recommendations_6%recho.
echo %Recommendations_7%rset /p wait=
goto menu


:start
color 0b
echo %run_message_1% -Xms%ram%M -Xmx%ram%M %flags% -jar server.jar nogui
java -Xms%ram%M -Xmx%ram%M %flags% -jar server.jar nogui
echo.
echo %serverstopped_1%%time%%serverstopped_2%
echo %serverstopped_3%
set /p wait= %serverstopped_4%
goto menu

:exit
PAUSE>nul
exit()


:savesettings
set ram > ossettings.ini
set lang >> ossettings.ini
set title >> ossettings.ini
set flags >> ossettings.ini
exit /b



:loadmessages
if %lang% ==EN call :loadenmessages
if %lang% ==TR call :loadtrmessages
exit /b


:updatemessages
if %lang% ==EN call :updateenmessages
if %lang% ==TR call :updatetrmessages
echo messages are updating..
exit /b


:loadenmessages

set setup2= Onwexry's Server Console Setup 2/4
set setup2_1=Welcome to O's Console
set setup2_2=Now we will set console for you
set setup2_3=Name your server
set setup2_4=[7] Set a title to server
set setup3= Onwexry's Server Console Setup 3/4 
set setup3_1=Enter your ram as MB (2048 means 2G) 
set setup4= Onwexry's Server Console Setup 4/4 
set setup4_1=Recommended jvm flags entered automatically
set setup4_2=To change it edit the ossettings.ini file
set setup4_3=          Press [Enter] to continue
set setup4_4=  Before open your server to community
set setup4_5=       Check recommendations menu

set menu_1=           OsLauncher 2.6  
set menu_2=  Type the button number then press [Enter] 
set menu_b1=[1] Run the server
set menu_b2=[2] Start map backup
set menu_b3=[3] Start plugins backup
set menu_b4=[4] Set RAM [Current RAM: %ram% M]
set menu_b5=[5] Clear Minecraft_Server, Skript and Authme Logs
set menu_b6=[6] Clear and refresh the launcher
set menu_b7=[7] Set a title to launcher
set menu_b8=[8] See recommends
set menu_b9=[9] Open the logs folder(Soon)
set menu_b10=[10] Open JVM Flag Examples
set menu_selection=Select:

set error_serverjar_1=server.jar is not found.
set error_serverjar_2=Rename the ".jar" server file as
set error_serverjar_3=server.jar
set error_serverjar_4=Then press "Enter" to continue


set message_flagselector_1=Once a flag is chosen, launcher replaces the flag in ossettings.ini
set message_flagselector_2=Duser Language: EN, Dnashorn Deprecation Warnings Hidden
set message_flagselector_3=[0] Main Menu
set message_flagselector_4=[1] Aikar's Flags for 12+ GB Ram(recommended)
set message_flagselector_5=If you have high old gen collections in timings report try the flag below
set message_flagselector_6=[2] Aikar's Flags for 6-10 GB Ram
set message_flagselector_7=Aikar's recommended stock flag
set message_flagselector_8=[3] ZGC Flags (experimental, not recommended)
set message_flagselector_9=Works on the servers which has update Windows 1803 (Windows Server 2019, Windows 10)
set message_flagselector_10=[4] Empty Flag
set message_flagselector_11=Version Java16 doesn't need flags as much as older Java versions
set message_flagselector_12=Current using flag:
set message_flagselector_selection=Select: 


set mapbackup_foldername=saves
set mapbackup_1=Will Nether backuped ?
set mapbackup_2=Will End backuped ?
set mapbackup_yes= Y
set mapbackup_no= N
set mapbackup_selection=[Y] Yes, [N] No.


set message_ram_1=Set your ram as M(mb)
set message_ram_enter=Enter:

set message_title_1=Set your title
set message_title_enter=Enter:

set clearlogs_1=Will Server logs deleted?
set clearlogs_2=Will Skript logs deleted?
set clearlogs_3=Will Skript data backups deleted?
set clearlogs_4=Will Authme logs deleted?
set clearlogs_done=Done.
set clearlogs_yes=Y
set clearlogs_no=N
set clearlogs_selection=[Y] Yes, [N] No.


set recommendations_1=Onwexry's Server Console Recommendations
set recommendations_2=Recommendations:
set recommendations_3=Default jvm flag is recommended for servers which has Java11 with 12gb+ ram
set recommendations_4=Upgrading from Java8 to Java11 increases performance up to %%30
set recommendations_5=Before open server to the community don't forget to render your map
set recommendations_6=Soon I will add more details
set recommendations_7=[Enter] To go back


set serverstopped_1=Server has stopped at (
set serverstopped_2= )
set serverstopped_3=To see logs check 'Logs' folder
set serverstopped_4=Press [Enter] to continue

set run_message_1=Startup Flags:

exit /b


:loadtrmessages

set setup2= Onwexry's Server Console Kurulum 2/4
set setup2_1=O's Konsoluna Hosgeldin
set setup2_2=Kurulum Ekranindasin
set setup2_3=Sunucuna Bir Isim Ver
set setup2_4=[7] Yazarak Baslaticiya Title Ekleyin
set setup3= Onwexry's Server Console Kurulum 3/4 
set setup3_1=Ramini Mb Cinsinden Gir (2048, 2GB demektir)
set setup4= Onwexry's Server Console Kurulum 4/4
set setup4_1=Onerilen baslatici kodu otomatik olarak girildi
set setup4_2=Degistirmek icin ossettings.ini dosyasina girin
set setup4_3=          Devam etmek icin [Enter]
set setup4_4=          Sunucunuzu Acmadan Once 
set setup4_5=Onerilere Bakmaniz Siddetle Tavsiye Edilir 

set menu_1=           OsBaslatici 2.6 
set menu_2=  Seciminizi klavyeden girip [Enter] basiniz
set menu_b1=[1] Yazarak Sunucuyu Baslatin
set menu_b2=[2] Yazarak Haritayi Yedekleyin
set menu_b3=[3] Yazarak Pluginleri Yedekleyin
set menu_b4=[4] Yazarak Hafiza Atayin [Suanki %ram% M]
set menu_b5=[5] Yazarak Minecraft_Server, Skript ve Authme Loglarini Temizleyin
set menu_b6=[6] Yazarak Paneli Temizleyin ve Yenileyin
set menu_b7=[7] Yazarak Baslaticiya Title Ekleyin
set menu_b8=[8] Yazarak Onerilere Bakin
set menu_b9=[9] Yazarak Log Dosyalarini Acin
set menu_b10=[10] Yazarak JVM Flag Orneklerini Acin
set menu_selection=Secim:


set error_serverjar_1=server.jar Bulunamadi.
set error_serverjar_2=Sunucunuzun Calistirilacak ".jar" Uzantili Dosyasini
set error_serverjar_3=server.jar Olarak Degistirin.
set error_serverjar_4=Islemi Yaptiktan Sonra "Enter" a Basin

set message_flagselector_1=Herhangi bir flag secildiginde ossettings.ini icinde bulunan flagin uzerine yazilir
set message_flagselector_2=Duser Language: EN, Dnashorn Deprecation Warnings Hidden
set message_flagselector_3=[0] Ana Menu
set message_flagselector_4=[1] Aikar's Flags for 12+ GB Ram(onerilir)
set message_flagselector_5=Timings raporunda old gen collections yuksek cikarsa alttaki flagi deneyin
set message_flagselector_6=[2] Aikar's Flags for 6-10 GB Ram
set message_flagselector_7=Aikar'in onerdigi stok flagdir
set message_flagselector_8=[3] ZGC Flags (deneysel, onerilmez)
set message_flagselector_9=Windows 1803 Guncellemesini almis sunucularda calisir (Windows Server 2019, Windows 10)
set message_flagselector_10=[4] Bos Flag
set message_flagselector_11=Java16 Surumunde flag kullaniminiz sart degildir
set message_flagselector_12=Mevcut kullanilan flag: 
set message_flagselector_selection=Secim: 

set mapbackup_foldername=yedek
set mapbackup_1=Nether Kopyalansın Mi ?
set mapbackup_2=End World Kopyalansin Mi ?
set mapbackup_yes= E
set mapbackup_no= H
set mapbackup_selection=[E] Evet, [H] Hayir.

set message_ram_1=Hafizanizi M(mb) Cinsinden Girin
set message_ram_enter=Giriniz:

set message_title_1=Baslik Etiketinizi Girin
set message_title_enter=Giriniz:

set clearlogs_1=Minecraft_server loglari silinsin mi?
set clearlogs_2=Skript loglari silinsin mi?
set clearlogs_3=Skript veri yedekleri silinsin mi?
set clearlogs_4=AuthMe loglari silinsin mi?
set clearlogs_done=Dosya silme bitti?
set clearlogs_yes=E
set clearlogs_no=H
set clearlogs_selection=[E] Evet, [H] Hayir.

set recommendations_1=Onwexry's Server Console Oneriler
set recommendations_2=Oneriler:
set recommendations_3=Otomatik girilen baslatici kodu Java11 ve 12gb uzeri ram icin idealdir
set recommendations_4=Java11 kullanimi sunucu performansini %%30'a kadar arttirir
set recommendations_5=Sunucunuzu topluluga acmadan once butun haritayi olusturunuz
set recommendations_6=Yakinda daha detayli oneriler yazilacaktir
set recommendations_7=Menuye geri donmek icin [Enter]

set serverstopped_1=Saat (
set serverstopped_2= )'de Sunucu Durduruldu
set serverstopped_3=Loglar Icin 'Logs' klasorune bakiniz
set serverstopped_4=Enter Basarak Menuye Donebilirsin

set run_message_1=Yurutulen baslatma kodu:

exit /b


:updatetrmessages
set menu_b4=[4] Yazarak Hafiza Atayin [Suanki %ram% M]
exit /b

:updateenmessages
set menu_b4=[4] Set RAM [Current RAM: %ram% M]
exit /b
