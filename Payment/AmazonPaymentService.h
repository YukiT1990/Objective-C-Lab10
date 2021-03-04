//
//  AmazonPaymentService.h
//  Payment
//
//  Created by Yuki Tsukada on 2021/03/04.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface AmazonPaymentService : NSObject <PaymentDelegate>;

@end

NS_ASSUME_NONNULL_END
