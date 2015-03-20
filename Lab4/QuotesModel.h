//
//  QuotesModel.h
//  Lab3
//
//  Created by Adrian on 2/24/15.
//  Copyright (c) 2015 Adrian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuotesModel : NSObject

+ (instancetype) sharedModel;- (NSDictionary *) randomQuote;
- (NSUInteger) numberOfQuotes;
- (NSDictionary *) quoteAtIndex: (NSUInteger) index;
- (void) removeQuoteAtIndex: (NSUInteger) index;
- (void) insertQuote: (NSString *) quote author: (NSString *) author atIndex: (NSUInteger) index;
- (void) insertQuote: (NSDictionary *) quote atIndex: (NSUInteger) index;
- (NSDictionary *) nextQuote;
- (NSDictionary *) prevQuote;
@end
