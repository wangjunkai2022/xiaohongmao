package io.sentry.exception;

import io.sentry.protocol.f;
import io.sentry.util.l;
import m8.a;
import m8.g;

@a.c
/* loaded from: classes4.dex */
public final class ExceptionMechanismException extends RuntimeException {

    /* renamed from: e  reason: collision with root package name */
    private static final long f83170e = 142345454265713915L;
    @g

    /* renamed from: a  reason: collision with root package name */
    private final f f83171a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f83172b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final Thread f83173c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f83174d;

    public ExceptionMechanismException(@g f fVar, @g Throwable th, @g Thread thread, boolean z9) {
        this.f83171a = (f) l.c(fVar, "Mechanism is required.");
        this.f83172b = (Throwable) l.c(th, "Throwable is required.");
        this.f83173c = (Thread) l.c(thread, "Thread is required.");
        this.f83174d = z9;
    }

    @g
    public f getExceptionMechanism() {
        return this.f83171a;
    }

    @g
    public Thread getThread() {
        return this.f83173c;
    }

    @g
    public Throwable getThrowable() {
        return this.f83172b;
    }

    public boolean isSnapshot() {
        return this.f83174d;
    }

    public ExceptionMechanismException(@g f fVar, @g Throwable th, @g Thread thread) {
        this(fVar, th, thread, false);
    }
}
