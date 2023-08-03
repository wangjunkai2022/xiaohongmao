package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.backends.m;
import com.google.android.datatransport.runtime.o;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.r;
import com.google.android.datatransport.runtime.t;
import java.util.concurrent.Executor;
import java.util.logging.Logger;

/* compiled from: DefaultScheduler.java */
/* loaded from: classes2.dex */
public class c implements e {

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f20474f = Logger.getLogger(t.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final r f20475a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f20476b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.backends.e f20477c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.scheduling.persistence.c f20478d;

    /* renamed from: e  reason: collision with root package name */
    private final o2.a f20479e;

    @u7.a
    public c(Executor executor, com.google.android.datatransport.runtime.backends.e eVar, r rVar, com.google.android.datatransport.runtime.scheduling.persistence.c cVar, o2.a aVar) {
        this.f20476b = executor;
        this.f20477c = eVar;
        this.f20475a = rVar;
        this.f20478d = cVar;
        this.f20479e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object b(c cVar, o oVar, com.google.android.datatransport.runtime.i iVar) {
        cVar.f20478d.k0(oVar, iVar);
        cVar.f20475a.a(oVar, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(c cVar, o oVar, com.google.android.datatransport.i iVar, com.google.android.datatransport.runtime.i iVar2) {
        try {
            m mVar = cVar.f20477c.get(oVar.b());
            if (mVar == null) {
                String format = String.format("Transport backend '%s' is not registered", oVar.b());
                f20474f.warning(format);
                iVar.a(new IllegalArgumentException(format));
                return;
            }
            cVar.f20479e.a(b.a(cVar, oVar, mVar.a(iVar2)));
            iVar.a(null);
        } catch (Exception e4) {
            Logger logger = f20474f;
            logger.warning("Error scheduling event " + e4.getMessage());
            iVar.a(e4);
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.e
    public void a(o oVar, com.google.android.datatransport.runtime.i iVar, com.google.android.datatransport.i iVar2) {
        this.f20476b.execute(a.a(this, oVar, iVar2, iVar));
    }
}
