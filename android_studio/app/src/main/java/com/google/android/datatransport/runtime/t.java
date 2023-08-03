package com.google.android.datatransport.runtime;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Callable;

/* compiled from: TransportRuntime.java */
@u7.f
/* loaded from: classes2.dex */
public class t implements s {

    /* renamed from: e  reason: collision with root package name */
    private static volatile u f20654e;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f20655a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f20656b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.scheduling.e f20657c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.scheduling.jobscheduling.l f20658d;

    /* JADX INFO: Access modifiers changed from: package-private */
    @u7.a
    public t(@com.google.android.datatransport.runtime.time.h com.google.android.datatransport.runtime.time.a aVar, @com.google.android.datatransport.runtime.time.b com.google.android.datatransport.runtime.time.a aVar2, com.google.android.datatransport.runtime.scheduling.e eVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.l lVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.p pVar) {
        this.f20655a = aVar;
        this.f20656b = aVar2;
        this.f20657c = eVar;
        this.f20658d = lVar;
        pVar.a();
    }

    private i b(n nVar) {
        return i.a().i(this.f20655a.a()).k(this.f20656b.a()).j(nVar.g()).h(new h(nVar.b(), nVar.d())).g(nVar.c().a()).d();
    }

    public static t c() {
        u uVar = f20654e;
        if (uVar != null) {
            return uVar.b();
        }
        throw new IllegalStateException("Not initialized!");
    }

    private static Set<com.google.android.datatransport.c> d(f fVar) {
        if (fVar instanceof g) {
            return Collections.unmodifiableSet(((g) fVar).a());
        }
        return Collections.singleton(com.google.android.datatransport.c.b("proto"));
    }

    public static void f(Context context) {
        if (f20654e == null) {
            synchronized (t.class) {
                if (f20654e == null) {
                    f20654e = e.d().a(context).build();
                }
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    static void i(u uVar, Callable<Void> callable) throws Throwable {
        u uVar2;
        synchronized (t.class) {
            uVar2 = f20654e;
            f20654e = uVar;
        }
        try {
            callable.call();
            synchronized (t.class) {
                f20654e = uVar2;
            }
        } catch (Throwable th) {
            synchronized (t.class) {
                f20654e = uVar2;
                throw th;
            }
        }
    }

    @Override // com.google.android.datatransport.runtime.s
    public void a(n nVar, com.google.android.datatransport.i iVar) {
        this.f20657c.a(nVar.f().e(nVar.c().c()), b(nVar), iVar);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public com.google.android.datatransport.runtime.scheduling.jobscheduling.l e() {
        return this.f20658d;
    }

    public com.google.android.datatransport.h g(f fVar) {
        return new p(d(fVar), o.a().b(fVar.getName()).c(fVar.getExtras()).a(), this);
    }

    @Deprecated
    public com.google.android.datatransport.h h(String str) {
        return new p(d(null), o.a().b(str).a(), this);
    }
}
