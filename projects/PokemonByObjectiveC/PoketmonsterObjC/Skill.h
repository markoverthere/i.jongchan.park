//
//  Skill.h
//  PoketmonsterObjC
//
//  Created by 박종찬 on 2017. 1. 17..
//  Copyright © 2017년 Jongchan Park. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Skill : NSObject

@property NSString *name;
@property id type;
@property NSInteger damage;
@property id effect;

-(Skill*)initWithName:(id)name
                 type:(id)type
               damage:(int)damage;


@end