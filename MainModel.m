//
//  MainModel.m
//  Story
//
//  Created by Roman Serga on 7/8/14.
//  Copyright (c) 2014 Roman Serga. All rights reserved.
//

#import "MainModel.h"

@implementation MainModel

-(void)readFromFile
{
    NSString *path = [[NSBundle mainBundle]pathForResource:@"teams" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSLog(@"%@", [dict objectForKey:@"Teams"]);
    NSArray *teamsFromDict = [dict objectForKey:@"Teams"];
    self.teams = [[NSMutableArray alloc]init];
    for (NSDictionary *t in teamsFromDict)
    {
        TeamModel *model = [[TeamModel alloc]initWithDictionary:t];
        [self.teams addObject:model];
    }
}

@end
