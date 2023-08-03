package io.sentry.exception;

import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public final class InvalidSentryTraceHeaderException extends Exception {

    /* renamed from: b  reason: collision with root package name */
    private static final long f83175b = 1;
    @g

    /* renamed from: a  reason: collision with root package name */
    private final String f83176a;

    public InvalidSentryTraceHeaderException(@g String str) {
        this(str, null);
    }

    @g
    public String getSentryTraceHeader() {
        return this.f83176a;
    }

    public InvalidSentryTraceHeaderException(@g String str, @h Throwable th) {
        super("sentry-trace header does not conform to expected format: " + str, th);
        this.f83176a = str;
    }
}
