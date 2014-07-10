//
//  PlayerModel.h
//  Story
//
//  Created by Roman Serga on 7/9/14.
//  Copyright (c) 2014 Roman Serga. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerModel : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *number;
@property (strong, nonatomic) NSString *info;
@property (strong, nonatomic) NSString *scores;
@property (strong, nonatomic) UIImage *photo;

-(id)initWithDictionary:(NSDictionary *)dict;

@end
