//
//  InputCollector.h
//  Lab5
//
//  Created by Natasha Machado on 2023-09-04.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

- (NSString *)inputForPrompt:(NSString *)promptString;
- (void)displayCommandHistory;
@end
