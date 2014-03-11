//
//  main.m
//  PracticeKVC
//
//  Created by el1ven on 14-3-11.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        Person *person  = [[Person alloc]init];
        [person setValue:@"SteveJobs" forKey:@"pName"];
        
        Device *device1 = [[Device alloc]init];
        [device1 setValue:@"macbook" forKey:@"dName"];
        [device1 setValue:[NSNumber numberWithFloat:8000] forKey:@"price"];
        Device *device2 = [[Device alloc]init];
        [device2 setValue:@"iPhone" forKey:@"dName"];
        [device2 setValue:[NSNumber numberWithFloat:5000] forKey:@"price"];
        Device *device3 = [[Device alloc]init];
        [device3 setValue:@"iPad" forKey:@"dName"];
        [device3 setValue:[NSNumber numberWithFloat:3800] forKey:@"price"];
        
        NSMutableArray *arr = [NSMutableArray arrayWithCapacity:3];
        [arr addObject:device1];
        [arr addObject:device2];
        [arr addObject:device3];
        
        [person setValue:arr forKey:@"ownDev"];
        
        NSNumber *sumUp = [person valueForKeyPath:@"ownDev.@sum.price"];
        NSLog(@"设备总价格为:%@",sumUp);
        
    }
    return 0;
}

