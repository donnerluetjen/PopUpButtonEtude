//
//  AppDelegate.m
//  PopUpButtonEtude
//
//  Created by Ansgar Asseburg on 16.03.14.
//  Copyright (c) 2014 Ansgar Asseburg. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [self.pUBM_1 setContentArray:[NSArray arrayWithObjects:@"Female", @"Male", nil]];
    [self.pUBM_2 setContentArray:[NSArray arrayWithObjects:@"Tall", @"Short", nil]];
    [self showDetails:nil];
}

- (IBAction)showDetails:(id)sender {
    NSString *newLine = @"\n";
    NSMutableString *detailsText = [[NSMutableString alloc] init];
    [detailsText appendString:[NSString stringWithFormat:@"PopUpButton Selection Details%@", newLine]];
    [detailsText appendFormat:@"Item Array: %@%@", self.popupButton.itemArray, newLine];
    [detailsText appendString:[NSString stringWithFormat:@"Selected Index (.indexOfSelectedItem): %ld%@", (long)self.popupButton.indexOfSelectedItem, newLine]];
    [detailsText appendString:[NSString stringWithFormat:@"Selected Object (.titleOfSelectedItem): %@%@", self.popupButton.titleOfSelectedItem, newLine]];
    [detailsText appendString:[NSString stringWithFormat:@"Selected Tag (.selectedTag): %ld%@", (long)self.popupButton.selectedTag, newLine]];
    [detailsText appendString:[NSString stringWithFormat:@"Selected Value (.objectValue): %@%@%@", self.popupButton.objectValue, newLine, newLine]];
    [detailsText appendFormat:@"popupSelection.selectionString: %@%@", self.pUBM_1.selectionString, newLine];
    [detailsText appendFormat:@"popupSelection.selectionValue: %@", self.pUBM_1.selectionIndex];
    [self.detailsTextField setStringValue:detailsText];
}
@end
