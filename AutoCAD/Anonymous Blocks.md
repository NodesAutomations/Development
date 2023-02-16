In my last post I indicated that I would follow up on a specific issue that I see happening on a [pandemic](https://en.wikipedia.org/wiki/Pandemic) level  – anonymous blocks.

[Simple Definition of anonymity](http://www.merriam-webster.com/dictionary/anonymity): the quality or state of being unknown to most people : the quality or state of being anonymous

Anonymous in AutoCAD basically means unnamed, so an anonymous block is a block without a name. In reality it does have a name, it just does not make much sense.   Below are a couple anonymous blocks – tell me what you think they are:

- A$C4AE13D6C
- A$C7227553F

I am not sure about you, but I am thinking that better names would be:

- AC-DIFF
- Fire-Extinguisher

I think we would all agree on this, but you may have a few questions:

- How did these become anonymous?
- Why is that a problem?
- How can I fix them?

It is very easy to make an anonymous block, which is why they are so common.  Below are the steps:

1. Find some geometry that you think should be a block instead of a bunch of line segments
2. Select and copy all of them with the right click and ‘Clipboard’ copy command or ‘CTRL-C’.  Note: A slight step-up would be to ‘Copy with Basepoint’ (CTRL-SHIFT-C).
3. Then Right-click and Paste as block.

### Fixing Anonymous blocks:

#### RENAME:

Renaming the anonymous block is the quickest way to fix this issue – this will provide you with a logical reference to the block.  If you have not renamed a block before, you should know that the RENAME command allows you to rename a lot of things in AutoCAD  – look at this list:

#### WBLOCK:

If you want to be able to use the anonymous block in future drawings (_Great idea!_), you can WBLOCK the anonymous block out to a folder on your server or location where you keep your master blocks.  WBlocking the anonymous block out will still require you know what the block name is, so I would recommend that you rename it first anyway.

WBlocking is easy – lets walk through the steps:

1. Figure out what the anonymous name of the block is. You can do this by highlighting the block and right clicking to see its ‘Properties’ OR use the ‘LIST’ command.  LIST will allow you to copy the text from the command window and paste it into the next step, which saves some memory brain cells – cool!
2. Rename the block with the RENAME command
3. WBLOCK out the block to your standard block library directory
4. Pat yourself on the back for a job well done!  Now everyone that has access to that directory now can use the block in their drawings!
