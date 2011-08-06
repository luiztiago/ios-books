//
//  Book.m
//  Books
//
//  Created by Luiz Tiago Alves de Oliveira on 06/08/11.
//  Copyright 2011 iR4 Consultoria Web. All rights reserved.
//

#import "Book.h"

@implementation Book
@synthesize name;
@synthesize isbn;
@synthesize genre;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

@end
