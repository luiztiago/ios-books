//
//  DetailViewController.m
//  Books
//
//  Created by Luiz Tiago Alves de Oliveira on 06/08/11.
//  Copyright 2011 iR4 Consultoria Web. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController
@synthesize nameField;
@synthesize isbnField;
@synthesize genreField;
@synthesize name;
@synthesize isbn;
@synthesize genre;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    nameField.text = name;
    isbnField.text = isbn;
    genreField.text = genre;
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [isbnField release];
    isbnField = nil;
    [genreField release];
    genreField = nil;
    [nameField release];
    nameField = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [isbnField release];
    [genreField release];
    [nameField release];
    [super dealloc];
}
@end
