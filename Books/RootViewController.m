//
//  RootViewController.m
//  Books
//
//  Created by Luiz Tiago Alves de Oliveira on 06/08/11.
//  Copyright 2011 iR4 Consultoria Web. All rights reserved.
//

#import "RootViewController.h"
#import "Book.h"

@implementation RootViewController
@synthesize booksList;
@synthesize booksList2;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    listOfItems = [[NSMutableArray alloc] init];
    
    Book *book1 = [[Book alloc] init];
    book1.name = @"Objective-C";
    book1.genre = @"Technology";
    book1.isbn = @"12312132312";
    
    Book *book2 = [[Book alloc] init];
    book2.name = @"TECDAM";
    book2.genre = @"Technology";
    book2.isbn = @"76123671789";
    
    Book *book3 = [[Book alloc] init];
    book3.name = @"Xcode";
    book3.genre = @"Technology";
    book3.isbn = @"8923480408";
    
    booksList = [[NSArray alloc] initWithObjects:book1, book2, book3, nil];
    NSDictionary *favoriteBooks = [NSDictionary dictionaryWithObject:booksList forKey:@"Books"];

    booksList2 = [[NSArray alloc] initWithObjects:book3, book1, book2, nil];
    NSDictionary *indicatedBooks = [NSDictionary dictionaryWithObject:booksList2 forKey:@"Books"];
    
    [listOfItems addObject:favoriteBooks];
    [listOfItems addObject:indicatedBooks];
    
    self.navigationItem.title = @"Books";
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [listOfItems count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSDictionary *dictionary = [listOfItems objectAtIndex:section];
    NSArray *array = [dictionary objectForKey:@"Books"];
    return [array count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    if(section == 0)
        return @"Lista de livros favoritos";
    else
        return @"Lista de livros indicados";
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }

    // Configure the cell.
    /*Book *book = [[Book alloc] init];
    
    book = [booksList objectAtIndex:indexPath.row];
    cell.textLabel.text = book.name;*/
    
    NSDictionary *dictionary = [listOfItems objectAtIndex:indexPath.section];
    NSArray *array = [dictionary objectForKey:@"Books"];
    Book *book = [[Book alloc] init];
    book = [array objectAtIndex:indexPath.row];
    
    NSString *cellValue = book.name;
    cell.textLabel.text = cellValue;
    
    return cell;

}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert)
    {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
    // ...
    // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
	*/
    
    NSDictionary *dictionary = [listOfItems objectAtIndex:indexPath.section];
    NSArray *array = [dictionary objectForKey:@"Books"];
    Book *book = [[Book alloc] init];
    book = [array objectAtIndex:indexPath.row];
    
    NSString *cellValue = book.name;
    
    NSString *str = [NSString stringWithFormat: @"%@", cellValue];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Detalhes do Livro" message:str delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    
    [alert show];
    [alert release];
    
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}

- (void)dealloc
{
    [super dealloc];
}

@end
