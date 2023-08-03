package com.google.android.datatransport.runtime.time;

import com.google.android.datatransport.runtime.dagger.internal.p;

/* compiled from: TimeModule_UptimeClockFactory.java */
/* loaded from: classes2.dex */
public final class f implements com.google.android.datatransport.runtime.dagger.internal.g<com.google.android.datatransport.runtime.time.a> {

    /* compiled from: TimeModule_UptimeClockFactory.java */
    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final f f20661a = new f();

        private a() {
        }
    }

    public static f a() {
        return a.f20661a;
    }

    public static com.google.android.datatransport.runtime.time.a c() {
        return (com.google.android.datatransport.runtime.time.a) p.c(d.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // u7.c
    /* renamed from: b */
    public com.google.android.datatransport.runtime.time.a get() {
        return c();
    }
}
