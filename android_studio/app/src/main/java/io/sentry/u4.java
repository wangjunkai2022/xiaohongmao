package io.sentry;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SentryThreadFactory.java */
/* loaded from: classes4.dex */
public final class u4 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final t4 f84060a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final SentryOptions f84061b;

    public u4(@m8.g t4 t4Var, @m8.g SentryOptions sentryOptions) {
        this.f84060a = (t4) io.sentry.util.l.c(t4Var, "The SentryStackTraceFactory is required.");
        this.f84061b = (SentryOptions) io.sentry.util.l.c(sentryOptions, "The SentryOptions is required");
    }

    @m8.g
    private io.sentry.protocol.t e(boolean z9, @m8.g StackTraceElement[] stackTraceElementArr, @m8.g Thread thread) {
        io.sentry.protocol.t tVar = new io.sentry.protocol.t();
        tVar.u(thread.getName());
        tVar.v(Integer.valueOf(thread.getPriority()));
        tVar.t(Long.valueOf(thread.getId()));
        tVar.s(Boolean.valueOf(thread.isDaemon()));
        tVar.x(thread.getState().name());
        tVar.q(Boolean.valueOf(z9));
        List<io.sentry.protocol.r> e4 = this.f84060a.e(stackTraceElementArr);
        if (this.f84061b.isAttachStacktrace() && e4 != null && !e4.isEmpty()) {
            io.sentry.protocol.s sVar = new io.sentry.protocol.s(e4);
            sVar.i(Boolean.TRUE);
            tVar.w(sVar);
        }
        return tVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.h
    public List<io.sentry.protocol.t> a() {
        HashMap hashMap = new HashMap();
        Thread currentThread = Thread.currentThread();
        hashMap.put(currentThread, currentThread.getStackTrace());
        return d(hashMap, null, false);
    }

    @m8.h
    List<io.sentry.protocol.t> b(@m8.h List<Long> list) {
        return d(Thread.getAllStackTraces(), list, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.h
    public List<io.sentry.protocol.t> c(@m8.h List<Long> list, boolean z9) {
        return d(Thread.getAllStackTraces(), list, z9);
    }

    @m8.h
    @m8.k
    List<io.sentry.protocol.t> d(@m8.g Map<Thread, StackTraceElement[]> map, @m8.h List<Long> list, boolean z9) {
        Thread currentThread = Thread.currentThread();
        if (map.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!map.containsKey(currentThread)) {
            map.put(currentThread, currentThread.getStackTrace());
        }
        for (Map.Entry<Thread, StackTraceElement[]> entry : map.entrySet()) {
            Thread key = entry.getKey();
            arrayList.add(e((key == currentThread && !z9) || (list != null && list.contains(Long.valueOf(key.getId()))), entry.getValue(), entry.getKey()));
        }
        return arrayList;
    }
}
