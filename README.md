PopUpButtonEtude
================

Demo to illustrate problem that instantiating multiple objects of the same class 
in Interface Builder results in shared property

I am trying to use NSPopUpButtons in my program. 
In order to use KVO for its string and its index I wrote a custom class (DLPopUpButtonManager).

@interface DLPopUpButtonManager : NSObject

@property NSArray  *contentArray;
@property NSString *selectionString;
@property NSNumber *selectionIndex;

@end

That class works fine, when used only once in the program. But…

I have two NSPopUpButtons that each are connected to an objects of class DLPopUpButtonManager. 
I find that both instances use the same contentArray.

I investigated using breakpoints and saw that I have indeed two separate instances of  DLPopUpButtonManager, 
but their contentArrays have the same pointer value.


Printing description of $20:
<DLPopUpButtonManager: 0x6080000100b0>

Printing description of $23:
<DLPopUpButtonManager: 0x6080000100c0>

Printing description of $25:
<__NSArrayI 0x600000223ba0>(
Tall,
Short
)

Printing description of $24:
<__NSArrayI 0x600000223ba0>(
Tall,
Short
)

(lldb) 

I can’t find anything like that through Google or here on SO. Who can tell me, what I am doing wrong here?

Thanks for any input on that issue.
