//
//  Doctor_.m
//  Doctor-Patient
//
//  Created by Chelsea Liu on 6/11/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import "Doctor_.h"
#import "Patient_.h"

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        _symptomsAndMedications = @{@"fever":@"IceBath",@"psychosis":@"Lithium",@"cold":@"Kleenex",@"concussion":@"IcePack"};

    }
    return self;
}

- (void) prescribeMedication: (Patient *)patient {
    
    BOOL hasVisited = [self.doctorAcceptedPatients containsObject:patient.patientName];
    if (hasVisited) {
        self.patientMedication = [self.symptomsAndMedications objectForKey:patient.patientSymptom];
        NSLog(@"%@ will be prescribed %@ for symptom(s) of %@.", patient.patientName, self.patientMedication, patient.patientSymptom);
    }
    else {
        NSLog(@"%@ has not been accepted by Dr. %@ before. Dr. %@ cannot prescribe medication to %@.", patient.patientName, self.doctorName, self.doctorName, patient.patientName);
    }
}

- (void) updatePrescription: (Patient *)patient{
    BOOL hasVisited = [self.doctorAcceptedPatients containsObject:patient.patientName];
    if (hasVisited) {
        NSString *patientMedication = [self.symptomsAndMedications objectForKey:patient.patientSymptom];
        [patient.patientPrescriptions addObject:patientMedication];
        NSLog(@"The updated prescription list of %@ is %@.", patient.patientName, patient.patientPrescriptions);
    }
}


@end
