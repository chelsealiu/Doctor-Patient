//
//  main.m
//  Doctor-Patient
//
//  Created by Chelsea Liu on 6/11/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient_.h"
#import "Doctor_.h"
#import "AllPrescription.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *doctor = [[Doctor alloc] init];
        Patient *patient = [[Patient alloc] init];
        AllPrescription *database = [[AllPrescription alloc] init];
        
        //Doctor information:
        doctor.doctorName = @"High Sparrow";
        doctor.doctorSpecialization = @"magic stuff";
        doctor.doctorAcceptedPatients = [[NSMutableArray alloc] initWithObjects:@"Cersei",@"Arya",@"Sansa",@"Tommen",@"Khaleesi",@"Tyrion", nil];
        NSLog(@"Doctor name is Dr. %@.", doctor.doctorName);
        NSLog(@"Doctor specialization is %@.", doctor.doctorSpecialization);
        
        //patient information:
        patient.patientAge = @99;
        patient.patientHealthCard = YES;
        patient.patientName = @"Snoopy";
        patient.patientSymptom = @"fever";
        NSLog(@"Patient name is %@.", patient.patientName);
        NSLog(@"Patient age is %@.", patient.patientAge);
        
        //Patient visits doctor (Task 2)
        [patient visitDoctor:doctor];
        
        //Patient requests medication (Task 3)
        [patient requestMedication:doctor];
        
        //Doctor updates patient prescription list (Task 4)
        [doctor updatePrescription:patient];
        
        //Database for all patient prescriptions are updated (Task 4)
        [database patientDatabase: doctor: patient];
        
    }
    return 0;
}