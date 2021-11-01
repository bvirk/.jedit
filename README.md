## After new install of jEdit


##### Rules of this info:

- \<Settings Directory\> is implied, when mentioning files names directories without paths. 

### if installed without java as OS package - ie. as Oracle tar.gz unpacked in /opt
- run java -jar jedit5.5.0install.jar as root having set JAVA_HOME and having java's bin in PATH
- shell script in /usr/local/bin/jedit 
	- JAVA_HOME="/opt/jdk1.8.0_202"
	- PATH="$PATH:/opt/jdk1.8.0_202/bin"
	- JAVA="${JAVA_HOME}/bin/java"
	- wmctrl -s0
	- exec "${JAVA}" -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -jar "/usr/local/share/jEdit/5.5.0/jedit.jar" -reuseview "$@" >/dev/null 2>&1 &

### Before unifying with this repo

1. Copy 'imported_keys.props' to 'jEdit_keys.orig.props' in keymaps/
2. Install plugins Console and Errorlist
3. Save [jsoup](https://jsoup.org/packages/jsoup-1.14.3.jar) in jars/

### After unifying with this repo

1. If jdk/jre newer than java8 is installed, java 8's rt.jar has to be placed somewhere.
2. check properties list in startup/initialize.bsh and run macro Interface/flushGlobal_Namespaced after editting:
	- placement of jars
	- browser
	- drypet.server for macro drypetDialog
3. Run macro cyberkiss with current buffer being a .java or .bsh file, and test api help of marked up, or left to caret being, word.
5. Evaluate usefullness
	- shorcut keys listed by macro Properties/changedShortcutKeys
	- command bar hints listed by macro Misc/listMemorableActionBarHits
6. Initial settings
7. Macro drypetDialog dependencies
8. Edit mode for php
			
###### settings to initial visit

- global option
	- saving and backups
		- autosave, frq of autosave, numbers of autosave
	- encoding
- plugin console
	- general	
		 -show welcome message
	- errorlist
		- automatically display on errors
		- error pattern
```			
name
	php
Error	
	^(.+?(?=in\s+/))in\s+([^:]+):(\d+).*
Warning
	^(.+?(?=in\s+/))in\s+(.+?(?=\s+on\sline))[^\d]+(\d+).*
Extra lines
	[\s\S]+Stack trace([\s\S]+)
message	
	$2
file
	$3
line
	$1
testArea	
	Fatal error: Uncaught Error: Call to undefined function ditdatdut() in /var/www/domain/beaupet/commands/Play.php:27
```			
		
##### Macro drypetDialog
	
property drypet.serverurl in startup/initialize.bsh   
on windows [curl](https://curl.se/windows/) might be needed.
		
##### php Edit mode, make keyword addition possible.

- copy from jEditHomeDir/modes to modes
	- php.xml
	- catalog - and remove any \<MODE\> tag besides that for php