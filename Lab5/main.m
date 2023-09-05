//
//  main.m
//  Lab5
//
//  Created by Natasha Machado on 2023-09-04.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];

        while (1) {
            NSString *userInput = [inputCollector inputForPrompt:@"What would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow - Show contact details\nfind - Search contacts\nhistory - Display command history\nquit - Exit Application\n> "];

            if ([userInput isEqualToString:@"quit"]) {
                NSLog(@"Goodbye!");
                break;
            } else if ([userInput isEqualToString:@"new"]) {
                NSString *name = [inputCollector inputForPrompt:@"Enter the contact's name: "];
                NSString *email = [inputCollector inputForPrompt:@"Enter the contact's email: "];
                Contact *newContact = [[Contact alloc] initWithName:name email:email];
                [contactList addContact:newContact];
                NSLog(@"Contact added.");
            } else if ([userInput isEqualToString:@"list"]) {
                [contactList listContacts];
            } else if ([userInput hasPrefix:@"show "]) {
                NSString *indexString = [userInput substringFromIndex:5];
                NSInteger index = [indexString integerValue];
                [contactList showContactDetailsAtIndex:index];
            } else if ([userInput hasPrefix:@"find "]) {
                NSString *searchTerm = [userInput substringFromIndex:5];
                [contactList findContactsMatching:searchTerm];
            } else if ([userInput isEqualToString:@"history"]) {
                [inputCollector displayCommandHistory];
            } else {
                NSLog(@"Invalid command. Please try again.");
            }
        }
    }
    return 0;
}
