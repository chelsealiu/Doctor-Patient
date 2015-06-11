//
//  Doctor.h
//  Doctor Patient
//
//  Created by Chelsea Liu on 6/11/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Doctor : NSObject

@property(nonatomic, strong) NSString *doctorName;
@property(nonatomic, strong) NSString *doctorSpecialization;
@property(nonatomic, strong) NSMutableArray *doctorAcceptedPatients;

-(instancetype) initWithName: (NSString *)docNameString;
-(instancetype) initWithSpec: (NSString *)docSpec;

@end


