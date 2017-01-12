//
//  TestUtil.h
//  PINFuture
//
//  Created by Chris Danford on 12/4/16.
//  Copyright (c) 2016 Pinterest. All rights reserved.
//

#import "PINFuture.h"
#import "PINTask.h"

void expectFutureToFullfillWith(id testCase, PINFuture *future, id expectedValue);
void expectFutureToRejectWith(id testCase, PINFuture *future, NSError *expectedError);

void runTaskAndExpectToFulfillWith(id testCase, PINTask *future, id expectedValue);
void runTaskAndExpectToRejectWith(id testCase, PINTask *future, NSError *expectedError);

NSNumber *numberFixture();
NSString *stringFixture();
NSError *errorFixture();
