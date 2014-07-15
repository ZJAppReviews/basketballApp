//
//  TeamModel.m
//  Story
//
//  Created by Roman Serga on 7/9/14.
//  Copyright (c) 2014 Roman Serga. All rights reserved.
//

#import "TeamModel.h"

@implementation TeamModel

-(id) initWithDictionary:(NSDictionary*) dict
{
    self = [super init];
    if (self)
    {
        self.name = [dict objectForKey:@"name"];
        self.rating = [dict objectForKey:@"rating"];
        self.logo = [dict objectForKey:@"logo"];
        self.players = [[NSMutableArray alloc]init];
        for (NSDictionary* p in [dict objectForKey:@"players"])
        {
            PlayerModel *player = [[PlayerModel alloc]initWithDictionary:p];
            [self.players addObject:player];
        }
    }
    return self;
}

@end
