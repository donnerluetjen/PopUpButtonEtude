//
//  DLPopUpButtonManager.h
//
//  Created by Ansgar Asseburg on 16.03.14.
//  Copyright (c) 2014 Ansgar Asseburg. All rights reserved.
//
//  Use this class to populate a NSPopUpButton and to pick up and propagate its selection.
//  You can propagate its selection strings (menu titles) and its selection values.
//
//  Put a NSObject into your nib file and change its class to DLPopUpButtonManager.
//

#import <Foundation/Foundation.h>

@interface DLPopUpButtonManager : NSObject

@property NSArray  *contentArray;
@property NSString *selectionString;
@property NSNumber *selectionIndex;

@end
