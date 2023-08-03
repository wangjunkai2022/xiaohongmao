package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.ArrayList;
import java.util.concurrent.Executor;

/* compiled from: Uploader.java */
/* loaded from: classes2.dex */
public class l {

    /* renamed from: h  reason: collision with root package name */
    private static final String f20541h = "Uploader";

    /* renamed from: a  reason: collision with root package name */
    private final Context f20542a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.backends.e f20543b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.scheduling.persistence.c f20544c;

    /* renamed from: d  reason: collision with root package name */
    private final r f20545d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f20546e;

    /* renamed from: f  reason: collision with root package name */
    private final o2.a f20547f;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f20548g;

    @u7.a
    public l(Context context, com.google.android.datatransport.runtime.backends.e eVar, com.google.android.datatransport.runtime.scheduling.persistence.c cVar, r rVar, Executor executor, o2.a aVar, @com.google.android.datatransport.runtime.time.h com.google.android.datatransport.runtime.time.a aVar2) {
        this.f20542a = context;
        this.f20543b = eVar;
        this.f20544c = cVar;
        this.f20545d = rVar;
        this.f20546e = executor;
        this.f20547f = aVar;
        this.f20548g = aVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object c(l lVar, BackendResponse backendResponse, Iterable iterable, com.google.android.datatransport.runtime.o oVar, int i4) {
        if (backendResponse.c() == BackendResponse.Status.TRANSIENT_ERROR) {
            lVar.f20544c.R(iterable);
            lVar.f20545d.a(oVar, i4 + 1);
            return null;
        }
        lVar.f20544c.n(iterable);
        if (backendResponse.c() == BackendResponse.Status.OK) {
            lVar.f20544c.t(oVar, lVar.f20548g.a() + backendResponse.b());
        }
        if (lVar.f20544c.P(oVar)) {
            lVar.f20545d.b(oVar, 1, true);
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e(l lVar, com.google.android.datatransport.runtime.o oVar, int i4, Runnable runnable) {
        try {
            try {
                o2.a aVar = lVar.f20547f;
                com.google.android.datatransport.runtime.scheduling.persistence.c cVar = lVar.f20544c;
                cVar.getClass();
                aVar.a(j.a(cVar));
                if (!lVar.a()) {
                    lVar.f20547f.a(k.a(lVar, oVar, i4));
                } else {
                    lVar.f(oVar, i4);
                }
            } catch (SynchronizationException unused) {
                lVar.f20545d.a(oVar, i4 + 1);
            }
        } finally {
            runnable.run();
        }
    }

    boolean a() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f20542a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    void f(com.google.android.datatransport.runtime.o oVar, int i4) {
        BackendResponse b10;
        com.google.android.datatransport.runtime.backends.m mVar = this.f20543b.get(oVar.b());
        Iterable<com.google.android.datatransport.runtime.scheduling.persistence.i> iterable = (Iterable) this.f20547f.a(h.a(this, oVar));
        if (iterable.iterator().hasNext()) {
            if (mVar == null) {
                m2.a.b(f20541h, "Unknown backend for %s, deleting event batch for it...", oVar);
                b10 = BackendResponse.a();
            } else {
                ArrayList arrayList = new ArrayList();
                for (com.google.android.datatransport.runtime.scheduling.persistence.i iVar : iterable) {
                    arrayList.add(iVar.b());
                }
                b10 = mVar.b(com.google.android.datatransport.runtime.backends.g.a().b(arrayList).c(oVar.c()).a());
            }
            this.f20547f.a(i.a(this, b10, iterable, oVar, i4));
        }
    }

    public void g(com.google.android.datatransport.runtime.o oVar, int i4, Runnable runnable) {
        this.f20546e.execute(g.a(this, oVar, i4, runnable));
    }
}
