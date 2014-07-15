//
//  TeamModel.h
//  Story
//
//  Created by Roman Serga on 7/9/14.
//  Copyright (c) 2014 Roman Serga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerModel.h"

@interface TeamModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *rating;
@property (nonatomic, strong) NSString *logo;
@property (nonatomic, strong) NSMutableArray *players;

-(id) initWithDictionary:(NSDictionary*) dict;

@end
