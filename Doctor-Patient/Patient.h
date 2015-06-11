//
//  Patient.h
//  Doctor Patient
//
//  Created by Chelsea Liu on 6/11/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property(nonatomic, strong) NSNumber *patientAge;
@property(nonatomic, strong) NSNumber *patientHealthCard;
@property(nonatomic, strong) NSString *patientName;
@property(nonatomic, strong) NSMutableArray *patientSubscriptions;

//properties describe data stored



//....
//methods are actions


@end


//look up custom initializer in .h 