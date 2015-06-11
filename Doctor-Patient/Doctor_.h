//
//  Doctor_.h
//  Doctor-Patient
//
//  Created by Chelsea Liu on 6/11/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient_.h"

@class Patient;
@interface Doctor : NSObject

@property(nonatomic, strong) NSString *doctorName;
@property(nonatomic, strong) NSString *doctorSpecialization;
@property(nonatomic, strong) NSMutableArray *doctorAcceptedPatients;
@property(nonatomic, strong) NSDictionary *symptomsAndMedications;
@property(nonatomic, strong) NSString *patientMedication;


- (void) prescribeMedication:(Patient *) patient;
- (void) updatePrescription: (Patient *) patient;

@end


