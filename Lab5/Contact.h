//
//  Contact.h
//  Lab5
//
//  Created by Natasha Machado on 2023-09-04.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;

- (instancetype)initWithName:(NSString *)name email:(NSString *)email;

@end
