//
//  PlayerDetailTableViewController.h
//  Story
//
//  Created by Roman Serga on 7/8/14.
//  Copyright (c) 2014 Roman Serga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainModel.h"

@interface PlayerDetailTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UIImageView *playerPhoto;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoresLabel;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

@property (strong, nonatomic) MainModel *model;
@end
