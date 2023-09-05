//
//  Contact.m
//  Lab5
//
//  Created by Natasha Machado on 2023-09-04.
//

#import "Contact.h"

@implementation Contact
- (instancetype)initWithName:(NSString *)name email:(NSString *)email {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}

@end
