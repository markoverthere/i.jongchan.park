//
//  Type.m
//  PoketmonsterObjC
//
//  Created by 박종찬 on 2017. 1. 18..
//  Copyright © 2017년 Jongchan Park. All rights reserved.
//

#import "Type.h"
@interface Type()

@property (readwrite)NSDictionary *normal;
@property (readwrite)NSDictionary *fire;
@property (readwrite)NSDictionary *water;
@property (readwrite)NSDictionary *electricity;
@property (readwrite)NSDictionary *leaf;
@property (readwrite)NSDictionary *ice;
@property (readwrite)NSDictionary *combat;
@property (readwrite)NSDictionary *poison;
@property (readwrite)NSDictionary *land;
@property (readwrite)NSDictionary *flying;
@property (readwrite)NSDictionary *esper;
@property (readwrite)NSDictionary *bug;
@property (readwrite)NSDictionary *rock;
@property (readwrite)NSDictionary *ghost;
@property (readwrite)NSDictionary *dragon;
@property (readwrite)NSDictionary *evil;
@property (readwrite)NSDictionary *iron;

@property (readwrite)NSDictionary *index;


@end

@implementation Type

-(instancetype)init {
    self = [super init];
    if (self) {
    self.normal = @{ @"normal" : @1, @"fire" : @1, @"water" : @1, @"electricity" : @1, @"leaf" : @1, @"ice" : @1, @"combat" : @1, @"poison" : @1, @"land" : @1, @"flying" : @1, @"esper" : @1, @"bug" : @1, @"rock" : @0.5, @"ghost" : @0, @"dragon" : @1, @"evil" : @1, @"iron" : @0.5};
    self.fire = @{ @"normal" : @1, @"fire" : @0.5, @"water" : @0.5, @"electricity" : @1, @"leaf" : @2, @"ice" : @2, @"combat" : @1, @"poison" : @1, @"land" : @1, @"flying" : @1, @"esper" : @1, @"bug" : @2, @"rock" : @0.5, @"ghost" : @1, @"dragon" : @0.5, @"evil" : @1, @"iron" : @2};
    self.water = @{ @"normal" : @1, @"fire" : @2, @"water" : @0.5, @"electricity" : @1, @"leaf" : @0.5, @"ice" : @1, @"combat" : @1, @"poison" : @1, @"land" : @2, @"flying" : @1, @"esper" : @1, @"bug" : @1, @"rock" : @2, @"ghost" : @1, @"dragon" : @0.5, @"evil" : @1, @"iron" : @1};
    self.electricity = @{ @"normal" : @1, @"fire" : @1, @"water" : @2, @"electricity" : @0.5, @"leaf" : @0.5, @"ice" : @1, @"combat" : @1, @"poison" : @1, @"land" : @0, @"flying" : @2, @"esper" : @1, @"bug" : @1, @"rock" : @1, @"ghost" : @1, @"dragon" : @0.5, @"evil" : @1, @"iron" : @1};
    self.leaf = @{ @"normal" : @1, @"fire" : @0.5, @"water" : @2, @"electricity" : @1, @"leaf" : @0.5, @"ice" : @1, @"combat" : @1, @"poison" : @0.5, @"land" : @2, @"flying" : @0.5, @"esper" : @1, @"bug" : @0.5, @"rock" : @2, @"ghost" : @1, @"dragon" : @0.5, @"evil" : @1, @"iron" : @0.5};
    self.ice = @{ @"normal" : @1, @"fire" : @0.5, @"water" : @0.5, @"electricity" : @1, @"leaf" : @2, @"ice" : @0.5, @"combat" : @1, @"poison" : @1, @"land" : @2, @"flying" : @2, @"esper" : @1, @"bug" : @1, @"rock" : @1, @"ghost" : @1, @"dragon" : @2, @"evil" : @1, @"iron" : @0.5};
    self.combat = @{ @"normal" : @2, @"fire" : @1, @"water" : @1, @"electricity" : @1, @"leaf" : @1, @"ice" : @2, @"combat" : @1, @"poison" : @0.5, @"land" : @1, @"flying" : @0.5, @"esper" : @0.5, @"bug" : @0.5, @"rock" : @2, @"ghost" : @0, @"dragon" : @1, @"evil" : @2, @"iron" : @2};
    self.poison = @{ @"normal" : @1, @"fire" : @1, @"water" : @1, @"electricity" : @1, @"leaf" : @2, @"ice" : @1, @"combat" : @1, @"poison" : @0.5, @"land" : @0.5, @"flying" : @1, @"esper" : @1, @"bug" : @1, @"rock" : @0.5, @"ghost" : @0.5, @"dragon" : @1, @"evil" : @1, @"iron" : @0};
    self.land = @{ @"normal" : @1, @"fire" : @2, @"water" : @1, @"electricity" : @2, @"leaf" : @0.5, @"ice" : @1, @"combat" : @1, @"poison" : @2, @"land" : @1, @"flying" : @0 , @"esper" : @1, @"bug" : @0.5, @"rock" : @2, @"ghost" : @1, @"dragon" : @1, @"evil" : @1, @"iron" : @2};
    self.flying = @{ @"normal" : @1, @"fire" : @1, @"water" : @1, @"electricity" : @0.5, @"leaf" : @2, @"ice" : @1, @"combat" : @2, @"poison" : @1, @"land" : @1, @"flying" : @1, @"esper" : @1, @"bug" : @2, @"rock" : @0.5, @"ghost" : @1, @"dragon" : @1, @"evil" : @1, @"iron" : @0.5};
    self.esper = @{ @"normal" : @1, @"fire" : @1, @"water" : @1, @"electricity" : @1, @"leaf" : @1, @"ice" : @1, @"combat" : @2, @"poison" : @2, @"land" : @1, @"flying" : @1, @"esper" : @0.5, @"bug" : @1, @"rock" : @1, @"ghost" : @1, @"dragon" : @1, @"evil" : @0, @"iron" : @0.5};
    self.bug = @{ @"normal" : @1, @"fire" : @0.5, @"water" : @1, @"electricity" : @1, @"leaf" : @2, @"ice" : @1, @"combat" : @0.5, @"poison" : @0.5, @"land" : @1, @"flying" : @0.5, @"esper" : @2, @"bug" : @1, @"rock" : @1, @"ghost" : @0.5, @"dragon" : @1, @"evil" : @2, @"iron" : @0.5};
    self.rock = @{ @"normal" : @1, @"fire" : @2, @"water" : @1, @"electricity" : @1, @"leaf" : @1, @"ice" : @2, @"combat" : @0.5, @"poison" : @1, @"land" : @0.5, @"flying" : @2, @"esper" : @1, @"bug" : @2, @"rock" : @1, @"ghost" : @1, @"dragon" : @1, @"evil" : @1, @"iron" : @0.5};
    self.ghost = @{ @"normal" : @0, @"fire" : @1, @"water" : @1, @"electricity" : @1, @"leaf" : @1, @"ice" : @1, @"combat" : @1, @"poison" : @1, @"land" : @1, @"flying" : @1, @"esper" : @2, @"bug" : @1, @"rock" : @1, @"ghost" : @2, @"dragon" : @1, @"evil" : @0.5, @"iron" : @0.5};
    self.dragon = @{ @"normal" : @1, @"fire" : @1, @"water" : @1, @"electricity" : @1, @"leaf" : @1, @"ice" : @1, @"combat" : @1, @"poison" : @1, @"land" : @1, @"flying" : @1, @"esper" : @1, @"bug" : @1, @"rock" : @1, @"ghost" : @1, @"dragon" : @2, @"evil" : @1, @"iron" : @0.5};
    self.evil = @{ @"normal" : @1, @"fire" : @1, @"water" : @1, @"electricity" : @1, @"leaf" : @1, @"ice" : @1, @"combat" : @2, @"poison" : @1, @"land" : @1, @"flying" : @1, @"esper" : @0.5, @"bug" : @1, @"rock" : @1, @"ghost" : @0.5, @"dragon" : @1, @"evil" : @0.5, @"iron" : @0.5};
    self.iron = @{ @"normal" : @1, @"fire" : @0.5, @"water" : @0.5, @"electricity" : @0.5, @"leaf" : @1, @"ice" : @2, @"combat" : @1, @"poison" : @1, @"land" : @1, @"flying" : @1, @"esper" : @1, @"bug" : @1, @"rock" : @2, @"ghost" : @1, @"dragon" : @1, @"evil" : @1, @"iron" : @0.5};
                  
    self.index = @{ @"normal" : self.normal, @"fire" : self.fire, @"water": self.water, @"electricity" : self.electricity, @"leaf" : self.leaf, @"ice" : self.ice, @"combat" : self.combat, @"poison" : self.poison, @"land" : self.land, @"flying" : self.flying, @"esper" : self.esper, @"bug" : self.bug, @"rock" : self.rock, @"ghost" : self.ghost, @"dragon" : self.dragon, @"evil" : self.evil, @"iron" : self.iron};
    }
    
    return self;
}

@end
