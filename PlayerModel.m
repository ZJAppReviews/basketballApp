//
//  PlayerModel.m
//  Story
//
//  Created by Roman Serga on 7/9/14.
//  Copyright (c) 2014 Roman Serga. All rights reserved.
//

#import "PlayerModel.h"

@implementation PlayerModel

-(id)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self)
    {
        self.name = [dict objectForKey:@"name"];
        self.number = [dict objectForKey:@"number"];
        self.info = [dict objectForKey:@"info"];
        self.scores = [dict objectForKey:@"scores"];
        NSString *path = [[NSBundle mainBundle] pathForResource:[dict objectForKey:@"photo"] ofType:@"png"];
        self.photo = [UIImage imageWithContentsOfFile:path];
    }
    return self;
}

@end
