//
//  CounterController.h
//  Counter
//
//  Created by Ilya Mizus on 10.01.13.
//  Copyright (c) 2013 Ilya Mizus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CounterController : NSObject {
    IBOutlet id counterField;
    id _subtractButton;
}

@property (nonatomic) IBOutlet id subtractButton;

- (IBAction)add:(id)sender;
- (IBAction)subtract:(id)sender;

- (void)checkValue;

@end
