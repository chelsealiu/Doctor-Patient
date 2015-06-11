//
//  AllPrescription.m
//  Doctor-Patient
//
//  Created by Chelsea Liu on 6/11/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import "AllPrescription.h"
#import "Patient_.h"
#import "Doctor_.h"


@implementation AllPrescription


- (void) patientDatabase :(Doctor *)doctor :(Patient *)patient{
    
    self.allPrescriptions = [[NSMutableDictionary alloc] init];
    [self.allPrescriptions setObject: doctor.patientMedication forKey:patient.patientName];
    NSLog(@"Updated patient database: %@", self.allPrescriptions);

}

@end
