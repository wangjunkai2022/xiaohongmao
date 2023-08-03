package com.facebook.common.util;

import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class ExceptionWithNoStacktrace extends Exception {
    public ExceptionWithNoStacktrace(String detailMessage) {
        super(detailMessage);
    }

    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        return this;
    }
}
