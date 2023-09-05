//
//  ContactList.h
//  Lab5
//
//  Created by Natasha Machado on 2023-09-04.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray<Contact *> *contacts;
- (void)addContact:(Contact *)contact;
- (void)listContacts;
- (void)showContactDetailsAtIndex:(NSInteger)index; // Add this method
- (void)findContactsMatching:(NSString *)searchTerm;
- (void)displayCommandHistory;

@end
