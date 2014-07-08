//
//  PlayersTableViewController.m
//  Story
//
//  Created by Roman Serga on 7/8/14.
//  Copyright (c) 2014 Roman Serga. All rights reserved.
//

#import "PlayersTableViewController.h"

@interface PlayersTableViewController ()

@end

@implementation PlayersTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.players count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlayerCell" forIndexPath:indexPath];
    
    UIImageView *playerPhoto = (UIImageView*)[cell viewWithTag:0];
    NSString *path = [[NSBundle mainBundle] pathForResource:[[self.players objectAtIndex:indexPath.row]objectForKey:@"photo"] ofType:@"png"];
    playerPhoto.image = [UIImage imageWithContentsOfFile:path];
    
    UILabel *nameLabel = (UILabel*)[cell viewWithTag:1];
    nameLabel.text = [[self.players objectAtIndex:indexPath.row]objectForKey:@"name"];
    
    UILabel *scoresLabel = (UILabel*)[cell viewWithTag:2];
    scoresLabel.text = [[self.players objectAtIndex:indexPath.row]objectForKey:@"scores"];
    
    cell.tag = indexPath.row;
    
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
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
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


#pragma mark - Navigation

 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
 PlayerDetailTableViewController *nextVC = segue.destinationViewController;
 UITableViewCell *cell = (UITableViewCell*)sender;
 nextVC.player = [self.players objectAtIndex:cell.tag];
}


@end
