package io.sentry;

import io.sentry.exception.ExceptionMechanismException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashSet;
import java.util.List;

/* compiled from: SentryExceptionFactory.java */
/* loaded from: classes4.dex */
final class i4 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final t4 f83302a;

    public i4(@m8.g t4 t4Var) {
        this.f83302a = (t4) io.sentry.util.l.c(t4Var, "The SentryStackTraceFactory is required.");
    }

    @m8.g
    private io.sentry.protocol.m b(@m8.g Throwable th, @m8.h io.sentry.protocol.f fVar, @m8.h Thread thread, boolean z9) {
        Package r02 = th.getClass().getPackage();
        String name = th.getClass().getName();
        io.sentry.protocol.m mVar = new io.sentry.protocol.m();
        String message = th.getMessage();
        if (r02 != null) {
            name = name.replace(r02.getName() + ".", "");
        }
        String name2 = r02 != null ? r02.getName() : null;
        List<io.sentry.protocol.r> e4 = this.f83302a.e(th.getStackTrace());
        if (e4 != null && !e4.isEmpty()) {
            io.sentry.protocol.s sVar = new io.sentry.protocol.s(e4);
            if (z9) {
                sVar.i(Boolean.TRUE);
            }
            mVar.o(sVar);
        }
        if (thread != null) {
            mVar.p(Long.valueOf(thread.getId()));
        }
        mVar.q(name);
        mVar.m(fVar);
        mVar.n(name2);
        mVar.r(message);
        return mVar;
    }

    @m8.g
    private List<io.sentry.protocol.m> d(@m8.g Deque<io.sentry.protocol.m> deque) {
        return new ArrayList(deque);
    }

    @m8.g
    @m8.k
    Deque<io.sentry.protocol.m> a(@m8.g Throwable th) {
        Thread currentThread;
        io.sentry.protocol.f fVar;
        boolean z9;
        ArrayDeque arrayDeque = new ArrayDeque();
        HashSet hashSet = new HashSet();
        while (th != null && hashSet.add(th)) {
            if (th instanceof ExceptionMechanismException) {
                ExceptionMechanismException exceptionMechanismException = (ExceptionMechanismException) th;
                fVar = exceptionMechanismException.getExceptionMechanism();
                Throwable throwable = exceptionMechanismException.getThrowable();
                currentThread = exceptionMechanismException.getThread();
                z9 = exceptionMechanismException.isSnapshot();
                th = throwable;
            } else {
                currentThread = Thread.currentThread();
                fVar = null;
                z9 = false;
            }
            arrayDeque.addFirst(b(th, fVar, currentThread, z9));
            th = th.getCause();
        }
        return arrayDeque;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public List<io.sentry.protocol.m> c(@m8.g Throwable th) {
        return d(a(th));
    }
}
