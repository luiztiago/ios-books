//
//  Book.h
//  Books
//
//  Created by Luiz Tiago Alves de Oliveira on 06/08/11.
//  Copyright 2011 iR4 Consultoria Web. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject {
    NSString *name;
    NSString *isbn;
    NSString *genre;
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *isbn;
@property (nonatomic, retain) NSString *genre;

@end
