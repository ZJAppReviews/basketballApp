//
//  MainModel.h
//  Story
//
//  Created by Roman Serga on 7/8/14.
//  Copyright (c) 2014 Roman Serga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerModel.h"
#import "TeamModel.h"

@interface MainModel : NSObject

@property (nonatomic, strong) NSMutableArray *teams;
@property (nonatomic, strong) TeamModel *selectedTeam;
@property (nonatomic, strong) PlayerModel *selectedPlayer;

-(void)readFromFile;

@end
