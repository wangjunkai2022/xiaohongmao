package io.sentry;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import m8.a;

/* compiled from: SentrySpanStorage.java */
@a.c
/* loaded from: classes4.dex */
public final class q4 {
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private static volatile q4 f83932b;
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, v0> f83933a = new ConcurrentHashMap();

    private q4() {
    }

    @m8.g
    public static q4 b() {
        if (f83932b == null) {
            synchronized (q4.class) {
                if (f83932b == null) {
                    f83932b = new q4();
                }
            }
        }
        return f83932b;
    }

    @m8.h
    public v0 a(@m8.h String str) {
        return this.f83933a.get(str);
    }

    @m8.h
    public v0 c(@m8.h String str) {
        return this.f83933a.remove(str);
    }

    public void d(@m8.g String str, @m8.g v0 v0Var) {
        this.f83933a.put(str, v0Var);
    }
}
