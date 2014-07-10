//
//  TeamsTableViewController.h
//  Story
//
//  Created by Roman Serga on 7/8/14.
//  Copyright (c) 2014 Roman Serga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayersTableViewController.h"
#import "MainModel.h"
#import "addTeamViewController.h"

@interface TeamsTableViewController : UITableViewController <AddTeamViewControllerDelegate>

@property (nonatomic,strong) MainModel *model;

@end
