package com.google.android.datatransport.runtime.scheduling.persistence;

/* compiled from: EventStoreModule_DbNameFactory.java */
/* loaded from: classes2.dex */
public final class f implements com.google.android.datatransport.runtime.dagger.internal.g<String> {

    /* compiled from: EventStoreModule_DbNameFactory.java */
    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final f f20603a = new f();

        private a() {
        }
    }

    public static f a() {
        return a.f20603a;
    }

    public static String b() {
        return (String) com.google.android.datatransport.runtime.dagger.internal.p.c(e.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // u7.c
    /* renamed from: c */
    public String get() {
        return b();
    }
}
