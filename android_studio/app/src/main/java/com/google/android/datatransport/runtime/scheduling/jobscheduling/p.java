package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.concurrent.Executor;

/* compiled from: WorkInitializer.java */
/* loaded from: classes2.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f20558a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.scheduling.persistence.c f20559b;

    /* renamed from: c  reason: collision with root package name */
    private final r f20560c;

    /* renamed from: d  reason: collision with root package name */
    private final o2.a f20561d;

    /* JADX INFO: Access modifiers changed from: package-private */
    @u7.a
    public p(Executor executor, com.google.android.datatransport.runtime.scheduling.persistence.c cVar, r rVar, o2.a aVar) {
        this.f20558a = executor;
        this.f20559b = cVar;
        this.f20560c = rVar;
        this.f20561d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object b(p pVar) {
        for (com.google.android.datatransport.runtime.o oVar : pVar.f20559b.v()) {
            pVar.f20560c.a(oVar, 1);
        }
        return null;
    }

    public void a() {
        this.f20558a.execute(n.a(this));
    }
}
