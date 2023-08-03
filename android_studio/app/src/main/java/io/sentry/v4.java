package io.sentry;

import io.sentry.exception.InvalidSentryTraceHeaderException;

/* compiled from: SentryTraceHeader.java */
/* loaded from: classes4.dex */
public final class v4 {

    /* renamed from: d  reason: collision with root package name */
    public static final String f84090d = "sentry-trace";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.protocol.n f84091a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final h5 f84092b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private final Boolean f84093c;

    public v4(@m8.g io.sentry.protocol.n nVar, @m8.g h5 h5Var, @m8.h Boolean bool) {
        this.f84091a = nVar;
        this.f84092b = h5Var;
        this.f84093c = bool;
    }

    @m8.g
    public String a() {
        return f84090d;
    }

    @m8.g
    public h5 b() {
        return this.f84092b;
    }

    @m8.g
    public io.sentry.protocol.n c() {
        return this.f84091a;
    }

    @m8.g
    public String d() {
        Boolean bool = this.f84093c;
        if (bool != null) {
            Object[] objArr = new Object[3];
            objArr[0] = this.f84091a;
            objArr[1] = this.f84092b;
            objArr[2] = bool.booleanValue() ? "1" : "0";
            return String.format("%s-%s-%s", objArr);
        }
        return String.format("%s-%s", this.f84091a, this.f84092b);
    }

    @m8.h
    public Boolean e() {
        return this.f84093c;
    }

    public v4(@m8.g String str) throws InvalidSentryTraceHeaderException {
        String[] split = str.split("-", -1);
        if (split.length >= 2) {
            if (split.length == 3) {
                this.f84093c = Boolean.valueOf("1".equals(split[2]));
            } else {
                this.f84093c = null;
            }
            try {
                this.f84091a = new io.sentry.protocol.n(split[0]);
                this.f84092b = new h5(split[1]);
                return;
            } catch (Throwable th) {
                throw new InvalidSentryTraceHeaderException(str, th);
            }
        }
        throw new InvalidSentryTraceHeaderException(str);
    }
}
