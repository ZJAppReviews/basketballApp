//
//  PlayersTableViewController.h
//  Story
//
//  Created by Roman Serga on 7/8/14.
//  Copyright (c) 2014 Roman Serga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailTableViewController.h"
#import "MainModel.h"

@interface PlayersTableViewController : UITableViewController

@property (nonatomic, strong) MainModel *model;

@end
