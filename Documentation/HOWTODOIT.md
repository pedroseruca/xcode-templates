# How to do it

* 1 Create a Template group

You can name Template Groups as you want and also create as many as you like.
Here I created a MVVM one to contain some pre build templates of view's with their corresponding viewModel.

<img src="https://github.com/pedroseruca/xcode-templates/blob/main/Assets/Template%20Group.png?raw=true" height="500px"/>

* 2 Create a Template.xctemplate folder

Inside that Template Group folder you have to make another folder with the name that you want to show in the Xcode popup window. One for each template, where you should add the extension .xctemplate.
On the exemple from the image above, I create 3 folders.

* 3 Add a TemplateInfo.plist

As any other plist file that you are usued two, you have to set a bunch of properties to create the dialog as you want. There is many options, as checkbox, dropdown, textField. Each options will allow you to create a different outcome for the pre build file. For example, if you tick the box on the next image, it would create also a xib file with the custom class already pointing to the view.

<img src="https://github.com/pedroseruca/xcode-templates/blob/main/Assets/Cell%20File%20Template.png?raw=true" height="500px"/>

* 4 Add files, and folders

The last step is create the real content. You can add any type of file and folder, just like a copy paste. There is some special keywords to get variables from the previous step options dialog. This will allow to replace the initail class name for the filename for example.

(The main barrier I found to this feature is that I couldn't create folder as group but only as reference. Which I'm still thinking if is deal breaking or not. To overcome this, the only solution I found was to delete the folder reference and add it again with "as Group" options selected)

<img src="https://github.com/pedroseruca/xcode-templates/blob/main/Assets/File%20Structure.png?raw=true" height="150px"/>

## Example:

Created a FlickerPicture with the cell template:

<img src="https://github.com/pedroseruca/xcode-templates/blob/main/Assets/File%20Preview.png?raw=true" height="700px"/>
