/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	config.filebrowserImageUploadUrl= '/files/upload/image';
	config.extraPlugins = 'image2';
	config.language = 'zh-cn';
	config.height = 400;
	config.filebrowserImageBrowseUrl= '/ckfinder/ckfinder.html?type=Images';
	CKEDITOR.instances.editor1.getData();
	
	config.toolbarGroups = [
	                        {name: 'document', groups: ['mode', 'document', 'doctools']},
	                        {name: 'tools', groups: ['tools']},
	                        {name: 'clipboard', groups: ['clipboard', 'undo']},
	                        {name: 'editing', groups: ['find', 'selection', 'spellchecker', 'editing']},
	                        {name: 'forms', groups: ['forms']},
	                        {name: 'basicstyles', groups: ['basicstyles', 'cleanup']},
	                        {name: 'colors', groups: ['colors']},
	                        {name: 'styles', groups: ['styles']},
	                        {name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'bidi', 'paragraph']},
	                        {name: 'others', groups: ['others']},
	                        {name: 'about', groups: ['about']},
	                        {name: 'links', groups: ['links']},
	                        {name: 'insert', groups: ['insert']}
	                    ];
	                    config.removeButtons = 'About,Save,NewPage,Preview,Print,Templates,Find,Replace,SelectAll,Scayt,Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,Language,BidiRtl,BidiLtr,Flash,Iframe,PageBreak,SpecialChar,Smiley,Cut,Copy,Paste,PasteText,PasteFromWord,CopyFormatting,RemoveFormat,Anchor,Styles,Format,Font,JustifyLeft,JustifyCenter,JustifyRight,JustifyBlock';                 
};
