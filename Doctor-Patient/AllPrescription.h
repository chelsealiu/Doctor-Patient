//
//  AllPrescription.h
//  Doctor-Patient
//
//  Created by Chelsea Liu on 6/11/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;
@class Patient;

@interface AllPrescription : NSObject

@property (nonatomic, strong) NSMutableDictionary *allPrescriptions;
- (void) patientDatabase :(Doctor*)doctor :(Patient*)patient;


@end
