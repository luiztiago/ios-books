//
//  RootViewController.h
//  Books
//
//  Created by Luiz Tiago Alves de Oliveira on 06/08/11.
//  Copyright 2011 iR4 Consultoria Web. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
    NSArray *booksList;
    NSArray *booksList2;
    NSMutableArray *listOfItems;
}

@property (nonatomic, retain) NSArray *booksList;
@property (nonatomic, retain) NSArray *booksList2;

@end
