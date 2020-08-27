## Macros and startup

To some varied extension, the macros and start functions are documented in source.

A group of startup functions, most notably the function p(); is dependt of plugin _Console_


## Brief introduction to selected macroes

### Macro startup
Macro startup deals with BeanShell global methods - those which litteral source is placed in $JEDIT\_SETTINGS/startup. It offers:

- alphabetic sorted clickable buttonraster for
	- pasting to carret
	- _swiching to definition for_
		- documentation
		- editing, removal or adding new methods in same startup file
- _update methods_

### Macro cyberkiss
The _kisses_ are functionality of some text which result is often viewed in webbrowser. The functionality is chosen by a shortcut for a label in a dialog's list. Following is a list of explained kisses, invokeable with the word left to carret, selected or in clipboard, as documented in macro cyberkiss

- _import_
	- insert java import statement of a class given its simpleName
<br><br>
- _api-help_
	- opens javadoc of a class in browser, given the class's simpleName 
<br><br>	
- beanshell source
	- navigate to global Beanshell method definition
<br><br>
- java keyword
	- open web page describing java keyword
<br><br>
- duckduckgo
	- open duckduckgo search result in browse
<br><br>
- google
	- open google search result in browser
	
And more ...	

### Macro actionsDialog
File type context actions dialog that uses same method as macro cyberkiss.

- void actionsDialog(XThis callBack, XThis menuSeq, View view) 

The types of actions is, dependt of suffix of current buffer file name. It is easy configured in top file of macro actionsDialog. Some examples that applies to certain suffixes.

- runs ant target (clean,compile,run,pack to jar,document)
- runs extern interpreter (eg. node for .js files)
- calls methods in plugins (eg. set printUrgency of some plugins debugging utility)
- run current buffer as BeanShell script


## top 5 used macroes

|name           |shortcut key
|---            |---
|cyberkiss      |context menu
|actionsdialog  |s+backspace
|cd             |c+enter+cd 
|scrathpad      |a+s
|startup        |a+less

## top used startup function

|p();
|---