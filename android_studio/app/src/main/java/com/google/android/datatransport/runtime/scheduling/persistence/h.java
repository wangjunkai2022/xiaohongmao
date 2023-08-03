package com.google.android.datatransport.runtime.scheduling.persistence;

/* compiled from: EventStoreModule_StoreConfigFactory.java */
/* loaded from: classes2.dex */
public final class h implements com.google.android.datatransport.runtime.dagger.internal.g<d> {

    /* compiled from: EventStoreModule_StoreConfigFactory.java */
    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final h f20607a = new h();

        private a() {
        }
    }

    public static h a() {
        return a.f20607a;
    }

    public static d c() {
        return (d) com.google.android.datatransport.runtime.dagger.internal.p.c(e.d(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // u7.c
    /* renamed from: b */
    public d get() {
        return c();
    }
}
