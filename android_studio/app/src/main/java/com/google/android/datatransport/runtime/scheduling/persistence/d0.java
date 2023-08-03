package com.google.android.datatransport.runtime.scheduling.persistence;

/* compiled from: SQLiteEventStore_Factory.java */
/* loaded from: classes2.dex */
public final class d0 implements com.google.android.datatransport.runtime.dagger.internal.g<c0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.time.a> f20598a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.google.android.datatransport.runtime.time.a> f20599b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<d> f20600c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<i0> f20601d;

    public d0(u7.c<com.google.android.datatransport.runtime.time.a> cVar, u7.c<com.google.android.datatransport.runtime.time.a> cVar2, u7.c<d> cVar3, u7.c<i0> cVar4) {
        this.f20598a = cVar;
        this.f20599b = cVar2;
        this.f20600c = cVar3;
        this.f20601d = cVar4;
    }

    public static d0 a(u7.c<com.google.android.datatransport.runtime.time.a> cVar, u7.c<com.google.android.datatransport.runtime.time.a> cVar2, u7.c<d> cVar3, u7.c<i0> cVar4) {
        return new d0(cVar, cVar2, cVar3, cVar4);
    }

    public static c0 c(com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, Object obj, Object obj2) {
        return new c0(aVar, aVar2, (d) obj, (i0) obj2);
    }

    @Override // u7.c
    /* renamed from: b */
    public c0 get() {
        return c(this.f20598a.get(), this.f20599b.get(), this.f20600c.get(), this.f20601d.get());
    }
}
