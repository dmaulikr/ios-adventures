#VCs Are Event Handlers they manage IBActions and IBOutlets to manage their views.


##Outlets

An outlet is a reference to a View Object defined in Interface Builder. For example: _"IBOutlet UILabel *myTitle"_
is a reference to a Label in a xib file

###ViewController.h
<b>
@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *surprise1;  
@property (nonatomic, weak) IBOutlet UILabel *surprise2;  
@property (nonatomic, weak) IBOutlet UILabel *surprise3;

@end
</b>

###Connecting the outlets
* Open the assistant editor
* Open both the ViewController.m and the ViewController.xib so that you can view both
* -click and drag from the empty circle on the left of the UILabel IBOutlet in the ViewController.m file -to the corresponding label in the ViewController.xib file

##Actions

An action is a callback which will be called upon a certain event coming from a View Object. For example:  *"- (IBAction)changeColor:(id)sender {}"*

View Object -> Receives Event -> Calls the _changeColor_ callback