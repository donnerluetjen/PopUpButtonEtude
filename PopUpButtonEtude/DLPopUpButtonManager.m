//
//  DLPopUpButtonManager.m
//
//  Created by Ansgar Asseburg on 16.03.14.
//  Copyright (c) 2014 Ansgar Asseburg. All rights reserved.
//

#import "DLPopUpButtonManager.h"

@implementation DLPopUpButtonManager {
    NSArray    *_contentArray;
    NSUInteger _selectionIndex;
}

//  all we store is
//      contentArray
//      selectionIndex
//  selectionString is derived and not stored

- (NSArray *)contentArray {
    return _contentArray;
}

- (void)setContentArray:(NSArray *)content {
    _contentArray = content;
    [self setSelectionIndex:@0];
}

- (NSString *)selectionString {
    return [_contentArray objectAtIndex:_selectionIndex];
}

- (void)setSelectionString:(NSString *)newString {
    if ([_contentArray containsObject:newString]) {
        [self setSelectionIndex:[NSNumber numberWithLong:[_contentArray indexOfObject:newString]]];
    }
}

- (NSNumber *)selectionIndex {
    return [NSNumber numberWithLong:_selectionIndex];
}

- (void)setSelectionIndex:(NSNumber *)index {
    NSUInteger newIndex = [index longValue];
    if ((newIndex != _selectionIndex) && (newIndex < [_contentArray count])) {
        _selectionIndex = newIndex;
    }
}

+ (NSSet *)keyPathsForValuesAffectingSelectionString {
    return [NSSet setWithObject:@"selectionIndex"];
}

@end
