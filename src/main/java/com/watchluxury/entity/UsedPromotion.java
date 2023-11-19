package com.watchluxury.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UsedPromotion {
    private String couponCode;

    private int discountType;

    private long discountValue;

    private long maximumDiscountValue;
}
