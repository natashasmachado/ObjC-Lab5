//
//  InputCollector.m
//  Lab5
//
//  Created by Natasha Machado on 2023-09-04.
//

#import "InputCollector.h"

@interface InputCollector ()

@property (nonatomic, strong) NSMutableArray<NSString *> *commandHistory;

@end

@implementation InputCollector

- (instancetype)init {
    self = [super init];
    if (self) {
        _commandHistory = [NSMutableArray array];
    }
    return self;
}

- (NSString *)inputForPrompt:(NSString *)promptString {
    char input[255];
    NSLog(@"%@", promptString);
    fgets(input, sizeof(input), stdin);
    NSString *userInput = [[NSString stringWithUTF8String:input] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    [self.commandHistory addObject:userInput];
    
    return userInput;
}

- (void)displayCommandHistory {
    NSLog(@"Command History:");
    for (NSString *command in self.commandHistory) {
        NSLog(@"%@", command);
    }
}

@end
