/*
 * This file is provided for custom JavaScript logic that your HTML files might need.
 * GUI Composer includes this JavaScript file by default within HTML pages authored in GUI Composer.
 */
require(["dojo/ready"], function(ready){
     ready(function(){
		 dijit.byId('widget_graph').watch('series0', function( prop, newValue, oldValue) {
			 logData( newValue, false);
		 });
     });
});

var FI = undefined;
var Logged = false;

function isLogging() {
	return dijit.byId('widget_log_enabled').get('checked');
}

function getFileName() {
	return dijit.byId('widget_path').get('value');
}

function getOptions() {
	return { 
		clientLocation : 'auto'
	}
}

function logData( data, reset) {
	if( !reset && !isLogging())
		return;
	var file = getFileName();	
	if( !file)
		return;
	var callback = function( fileInfo, errorInfo) {
		if( errorInfo) {
			$TI.helper.showError( "Error Logging.", errorInfo.message);
		}
	}
	var options = getOptions();
	if( !reset) {
		options.append = true;
		options.addCRAfter = true;
	}
	new TI.CSVFile().save( data, FI, options, callback);
}

function getData() {
	return dijit.byId( 'widget_graph').get('series0');
}

function setFileName( name) {
	dijit.byId( 'widget_path').set('value',name);
}

function updateFileName() {
	var name = '';
	if( FI && FI.localPath) {
		name = FI.localPath; 
	}
	setFileName(name);
}

function updateFields() {
	updateFileName();
}

function onBrowse() {
	var data = getData(); 
	var callback = function( fileInfo, errorInfo) {
		if( errorInfo) {
			$TI.helper.showError( "Save as...", errorInfo.message);
		} 
		else {
			FI = fileInfo;
			updateFields();
		}
	};
	var options = getOptions();
	options.addCRAfter = true;
	new TI.CSVFile().browseAndSave( data, FI, options, callback);
}

function onReset() {
	logData( "", true);
}
