package com.google.android.datatransport.runtime.scheduling.persistence;

/* compiled from: EventStoreModule.java */
@k2.h
/* loaded from: classes2.dex */
public abstract class e {
    /* JADX INFO: Access modifiers changed from: package-private */
    @u7.b("SQLITE_DB_NAME")
    @k2.i
    public static String a() {
        return "com.google.android.datatransport.events";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @u7.b("SCHEMA_VERSION")
    @k2.i
    public static int c() {
        return i0.f20620n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @k2.i
    public static d d() {
        return d.f20597f;
    }

    @k2.a
    abstract c b(c0 c0Var);

    @k2.a
    abstract o2.a e(c0 c0Var);
}
