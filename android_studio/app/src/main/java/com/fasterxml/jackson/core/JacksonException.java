package com.fasterxml.jackson.core;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class JacksonException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private static final long f13671a = 123;

    /* JADX INFO: Access modifiers changed from: protected */
    public JacksonException(String str) {
        super(str);
    }

    public abstract JsonLocation getLocation();

    public abstract String getOriginalMessage();

    public abstract Object getProcessor();

    protected JacksonException(Throwable th) {
        super(th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JacksonException(String str, Throwable th) {
        super(str, th);
    }
}
