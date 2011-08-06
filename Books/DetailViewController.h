//
//  DetailViewController.h
//  Books
//
//  Created by Luiz Tiago Alves de Oliveira on 06/08/11.
//  Copyright 2011 iR4 Consultoria Web. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController {
    NSString *name;
    NSString *isbn;
    NSString *genre;
    IBOutlet UITextField *nameField;
    IBOutlet UITextField *isbnField;
    IBOutlet UITextField *genreField;
}

@property (nonatomic, retain) IBOutlet UITextField *nameField;
@property (nonatomic, retain) IBOutlet UITextField *isbnField;
@property (nonatomic, retain) IBOutlet UITextField *genreField;
@property (nonatomic, retain) IBOutlet NSString *name;
@property (nonatomic, retain) IBOutlet NSString *isbn;
@property (nonatomic, retain) IBOutlet NSString *genre;

@end
