//
//  Patient_.h
//  Doctor-Patient
//
//  Created by Chelsea Liu on 6/11/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Doctor_.h"

@class Doctor;

@interface Patient : NSObject

@property(nonatomic, strong) NSNumber *patientAge;
@property BOOL patientHealthCard;
@property(nonatomic, strong) NSString *patientName;
@property(nonatomic, strong) NSString *patientSymptom;
@property(nonatomic, strong) NSMutableArray *patientPrescriptions;

-(void) visitDoctor:(Doctor *)doctor;
- (void) requestMedication:(Doctor *)doctor;


//....
//methods are actions

@end


//look up custom initializer in .h