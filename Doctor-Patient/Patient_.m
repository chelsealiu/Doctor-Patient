//
//  Patient_.m
//  Doctor-Patient
//
//  Created by Chelsea Liu on 6/11/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import "Patient_.h"
#import "Doctor_.h"

@implementation Patient

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.patientPrescriptions = [[NSMutableArray alloc] initWithObjects:@"Xanax", @"Lithium", @"Mushrooms", nil];
            }
    return self;
}

- (BOOL) alreadyPatient: (Doctor *)doctor {
    NSInteger rawLen = doctor.doctorAcceptedPatients.count;
    int len = (int) rawLen;
    int x = 0;
    for (x = 0; x < len; x++) {
        if ([doctor.doctorAcceptedPatients[x] isEqualToString: self.patientName]){
            TRUE;
        }
    }
    return FALSE;
}


- (void) visitDoctor:(Doctor *)doctor {
 
    if (self.patientHealthCard == TRUE) {
        if ([self alreadyPatient:doctor]) {
            NSLog(@"%@ successfully visited doctor. Updated patient list is %@", self.patientName, doctor.doctorAcceptedPatients);
        } else {
            [doctor.doctorAcceptedPatients addObject:self.patientName];
            NSLog(@"%@ successfully visited doctor. Updated patient list is %@", self.patientName, doctor.doctorAcceptedPatients);
        }
    }
    else {
        NSLog(@"%@ does not have a healthcard. %@ cannot visit the doctor.", self.patientName, self.patientName);
    }
}


- (void) requestMedication:(Doctor *)doctor {
    
    NSInteger rawLen = doctor.doctorAcceptedPatients.count;
    int len = (int) rawLen;
    int x = 0;
    for (x = 0; x < len; x++) {
        if ([doctor.doctorAcceptedPatients[x] isEqualToString: self.patientName]){
            [doctor prescribeMedication:self];
            break;
        }
    }
}



@end
