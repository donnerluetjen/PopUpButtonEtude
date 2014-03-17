//
//  AppDelegate.h
//  PopUpButtonEtude
//
//  Created by Ansgar Asseburg on 16.03.14.
//  Copyright (c) 2014 Ansgar Asseburg. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DLPopUpButtonManager.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet DLPopUpButtonManager *pUBM_1;
@property (weak) IBOutlet DLPopUpButtonManager *pUBM_2;
@property (strong) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSPopUpButton *popupButton;
@property (weak) IBOutlet NSTextField *detailsTextField;

- (IBAction)showDetails:(id)sender;

@end
