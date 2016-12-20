//
// Created by Brandon Kase on 12/19/16.
// Copyright (c) 2016 Pinterest. All rights reserved.
//

#import "PINResult.h"
#import "TestUtil.h"

SpecBegin(PINResultSpec)

describe(@"Result can be created and matched", ^{
    NSNumber * res = [[PINResult2 match:[PINResult succeedWith:@"Yes"]
        success:^NSNumber *(NSString *value){
            return @1;
        }]
     failure:^NSNumber *(NSError *error){
         return @2;
     }];
    expect(res).to.equal(@1);

    NSNumber * res2 = [[PINResult2 match:[PINResult failWith:[NSError errorWithDomain:@"failed" code:1 userInfo: nil]]
                                success:^NSNumber *(NSString *value){
                                    return @1;
                                }]
                      failure:^NSNumber *(NSError *error){
                          return @2;
                      }];
    expect(res2).to.equal(@2);
});

SpecEnd
