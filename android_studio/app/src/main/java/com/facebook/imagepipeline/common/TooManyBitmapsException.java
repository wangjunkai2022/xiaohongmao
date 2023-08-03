package com.facebook.imagepipeline.common;

import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class TooManyBitmapsException extends RuntimeException {
    public TooManyBitmapsException() {
    }

    public TooManyBitmapsException(String detailMessage) {
        super(detailMessage);
    }
}
