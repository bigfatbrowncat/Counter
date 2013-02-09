//
//  CounterController.m
//  Counter
//
//  Created by Ilya Mizus on 10.01.13.
//  Copyright (c) 2013 Ilya Mizus. All rights reserved.
//

#import "CounterController.h"

@implementation CounterController

id subtractButtonValue;

- (IBAction)add:(id)sender {
    int value = [counterField intValue];
    value++;
    [counterField setIntValue: (value % 100000)];
    
    // Updating UI
    [self checkValue];
}

- (IBAction)subtract:(id)sender {
    // Updating the value
    int value = [counterField intValue];
    value--;
    [counterField setIntValue: value];

    // Updating UI
    [self checkValue];
}

- (void)checkValue {
    int value = [counterField intValue];
    [_subtractButton setEnabled:(value > 0)];
}

-(void) setSubtractButton:(id)value {
    _subtractButton = value;
    
    // Updating UI
    [self checkValue];
}

-(id)SubtractButton {
    return _subtractButton;
}

- (id) init {
    self = [super init];

    // Updating UI
    [self checkValue];
    
    return self;
}
@end
