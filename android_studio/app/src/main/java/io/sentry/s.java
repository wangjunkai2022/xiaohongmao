package io.sentry;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: DuplicateEventDetectionEventProcessor.java */
/* loaded from: classes4.dex */
public final class s implements z {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Map<Throwable, Object> f83964a = Collections.synchronizedMap(new WeakHashMap());
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final SentryOptions f83965b;

    public s(@m8.g SentryOptions sentryOptions) {
        this.f83965b = (SentryOptions) io.sentry.util.l.c(sentryOptions, "options are required");
    }

    @m8.g
    private static List<Throwable> c(@m8.g Throwable th) {
        ArrayList arrayList = new ArrayList();
        while (th.getCause() != null) {
            arrayList.add(th.getCause());
            th = th.getCause();
        }
        return arrayList;
    }

    private static <T> boolean d(@m8.g Map<T, Object> map, @m8.g List<T> list) {
        for (T t9 : list) {
            if (map.containsKey(t9)) {
                return true;
            }
        }
        return false;
    }

    @Override // io.sentry.z
    @m8.h
    public h4 a(@m8.g h4 h4Var, @m8.g b0 b0Var) {
        if (this.f83965b.isEnableDeduplication()) {
            Throwable S = h4Var.S();
            if (S != null) {
                if (!this.f83964a.containsKey(S) && !d(this.f83964a, c(S))) {
                    this.f83964a.put(S, null);
                } else {
                    this.f83965b.getLogger().c(SentryLevel.DEBUG, "Duplicate Exception detected. Event %s will be discarded.", h4Var.I());
                    return null;
                }
            }
        } else {
            this.f83965b.getLogger().c(SentryLevel.DEBUG, "Event deduplication is disabled.", new Object[0]);
        }
        return h4Var;
    }

    @Override // io.sentry.z
    public /* synthetic */ io.sentry.protocol.u b(io.sentry.protocol.u uVar, b0 b0Var) {
        return y.b(this, uVar, b0Var);
    }
}
