//
//  GrainsOfRice.m
//  ExponentialGrowthObjC
//
//  Created by joshua kaunert on 7/24/19.
//  Copyright © 2019 joshua kaunert. All rights reserved.
//

#import "GrainsOfRice.h"

@implementation GrainsOfRice

// Test your logic with the unit tests (Command + U)

- (unsigned long long)grainsOnSquareNumber:(NSInteger)number {

    if (number <= 0) {
        return -1;
    } else if (number > 64) {
        return -1;
    } else {
        return pow(2, number - 1);
    }
}


- (unsigned long long)grainsOnBoard {

    unsigned long long totalGrains = 0;
    
    for (int i = 1; i <= 64; i++) {
        totalGrains += [self grainsOnSquareNumber:i];
    }
    return totalGrains;
}

@end
