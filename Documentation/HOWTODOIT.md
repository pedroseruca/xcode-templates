# How to do it

## Starting point

1. The magic happens on inside `~/Library/Developer/Xcode/Templates/`. You can open the finder app, do ⌘⇧G and paste that to jump. This folder is where Xcode will "search" for your templates. 

Any folder (and files) that doesn't contain a `.xctemplate` subfolder will be ignored by Xcode, that's why we can clone all this files without any side effect.




## Create a Template group

You can name Template Groups as you want and also create as many as you like.

1. To do this, just create a folder on the base of this project.

<p align="center">
  <img src="https://github.com/pedroseruca/xcode-templates/blob/main/Assets/Template%20Group.png?raw=true" height="400px">
  <p align="center">Here I created a MVVM one to contain some pre build templates of view's with their corresponding viewModel.</p>
</p>





## Create your first Template

1. Go inside that Template Group folder that you just have created. 
2. Now make another **folder** with the name of your template, where you add the extension `.xctemplate`. 
  
Example -> `Cell.xctemplate`.

## Ceate the TemplateInfo.plist

1. Go inside `.xctemplate` folder that you just have created.
2. Add a new **file** named `TemplateInfo.plist`.

As any other plist file that you are usued to, you have to set a bunch of key/value pairs to create the dialog as you want.

The most simple file would be like this: 
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Kind</key>
	<string>Xcode.IDEKit.TextSubstitutionFileTemplateKind</string>
	<key>Options</key>
	<array>
		<dict>
			<key>Identifier</key>
			<string>productName</string>
			<key>Required</key>
			<true/>
			<key>Name</key>
			<string>ViewModel Name</string>
			<key>Type</key>
			<string>text</string>
			<key>Default</key>
			<string>ViewModel</string>
		</dict>
	</array>
</dict>
</plist>
```
As you can see, `Options` key is an array of objects. This is what creates the dialog when you choose the template. The exemple above is the simpliest possible because just ask for the name of the file. That's why having the option with identifier `productName` is mandatory.

There is some options types like as checkbox, dropdown, textField but that will be coveres on the here ## Advanced options


(Each options will allow you to create a different outcome for the pre build file. For example, if you tick the checkbox on the next image, it would create also a xib file with the custom class already pointing to the view.)

<img src="https://github.com/pedroseruca/xcode-templates/blob/main/Assets/Cell%20File%20Template.png?raw=true" height="400px"/>


## Add content

The last step is create the real content. You can add any type of file and folder, just like a copy paste. There is some special keywords to get variables from the previous step options dialog. This will allow to replace the initail class name for the filename for example.

(The main barrier I found to this feature is that I couldn't create folder as group but only as reference. Which I'm still thinking if is deal breaking or not. To overcome this, the only solution I found was to delete the folder reference and add it again with "as Group" options selected)

<img src="https://github.com/pedroseruca/xcode-templates/blob/main/Assets/File%20Structure.png?raw=true" height="150px"/>

## Example:

Created a FlickerPicture with the cell template:

<img src="https://github.com/pedroseruca/xcode-templates/blob/main/Assets/File%20Preview.png?raw=true" height="700px"/>

