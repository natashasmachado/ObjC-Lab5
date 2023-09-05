//
//  ContactList.m
//  Lab5
//
//  Created by Natasha Machado on 2023-09-04.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [NSMutableArray array];
    }
    return self;
}
- (void)addContact:(Contact *)contact {
    [self.contacts addObject:contact];
}

- (void)listContacts {
    for (int i = 0; i < self.contacts.count; i++) {
        Contact *contact = self.contacts[i];
        NSLog(@"#%d: %@ (%@)", i, contact.name, contact.email);
    }
}

- (void)showContactDetailsAtIndex:(NSInteger)index {
    if (index >= 0 && index < self.contacts.count) {
        Contact *contact = self.contacts[index];
        NSLog(@"Contact Details:\nName: %@\nEmail: %@", contact.name, contact.email);
    } else {
        NSLog(@"Contact not found at index %ld", (long)index);
    }
}

- (void)findContactsMatching:(NSString *)searchTerm {
}

- (void)displayCommandHistory {
}

@end
