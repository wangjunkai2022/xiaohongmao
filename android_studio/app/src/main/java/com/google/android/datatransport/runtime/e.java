package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.persistence.c0;
import com.google.android.datatransport.runtime.scheduling.persistence.d0;
import com.google.android.datatransport.runtime.scheduling.persistence.j0;
import com.google.android.datatransport.runtime.u;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DaggerTransportRuntimeComponent.java */
/* loaded from: classes2.dex */
public final class e extends u {

    /* renamed from: a  reason: collision with root package name */
    private u7.c<Executor> f20440a;

    /* renamed from: b  reason: collision with root package name */
    private u7.c<Context> f20441b;

    /* renamed from: c  reason: collision with root package name */
    private u7.c f20442c;

    /* renamed from: d  reason: collision with root package name */
    private u7.c f20443d;

    /* renamed from: e  reason: collision with root package name */
    private u7.c f20444e;

    /* renamed from: f  reason: collision with root package name */
    private u7.c<c0> f20445f;

    /* renamed from: g  reason: collision with root package name */
    private u7.c<SchedulerConfig> f20446g;

    /* renamed from: h  reason: collision with root package name */
    private u7.c<com.google.android.datatransport.runtime.scheduling.jobscheduling.r> f20447h;

    /* renamed from: i  reason: collision with root package name */
    private u7.c<com.google.android.datatransport.runtime.scheduling.c> f20448i;

    /* renamed from: j  reason: collision with root package name */
    private u7.c<com.google.android.datatransport.runtime.scheduling.jobscheduling.l> f20449j;

    /* renamed from: k  reason: collision with root package name */
    private u7.c<com.google.android.datatransport.runtime.scheduling.jobscheduling.p> f20450k;

    /* renamed from: l  reason: collision with root package name */
    private u7.c<t> f20451l;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DaggerTransportRuntimeComponent.java */
    /* loaded from: classes2.dex */
    public static final class b implements u.a {

        /* renamed from: a  reason: collision with root package name */
        private Context f20452a;

        private b() {
        }

        @Override // com.google.android.datatransport.runtime.u.a
        /* renamed from: b */
        public b a(Context context) {
            this.f20452a = (Context) com.google.android.datatransport.runtime.dagger.internal.p.b(context);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.u.a
        public u build() {
            com.google.android.datatransport.runtime.dagger.internal.p.a(this.f20452a, Context.class);
            return new e(this.f20452a);
        }
    }

    public static u.a d() {
        return new b();
    }

    private void h(Context context) {
        this.f20440a = com.google.android.datatransport.runtime.dagger.internal.f.b(k.a());
        com.google.android.datatransport.runtime.dagger.internal.g a10 = com.google.android.datatransport.runtime.dagger.internal.j.a(context);
        this.f20441b = a10;
        com.google.android.datatransport.runtime.backends.j a11 = com.google.android.datatransport.runtime.backends.j.a(a10, com.google.android.datatransport.runtime.time.e.a(), com.google.android.datatransport.runtime.time.f.a());
        this.f20442c = a11;
        this.f20443d = com.google.android.datatransport.runtime.dagger.internal.f.b(com.google.android.datatransport.runtime.backends.l.a(this.f20441b, a11));
        this.f20444e = j0.a(this.f20441b, com.google.android.datatransport.runtime.scheduling.persistence.f.a(), com.google.android.datatransport.runtime.scheduling.persistence.g.a());
        this.f20445f = com.google.android.datatransport.runtime.dagger.internal.f.b(d0.a(com.google.android.datatransport.runtime.time.e.a(), com.google.android.datatransport.runtime.time.f.a(), com.google.android.datatransport.runtime.scheduling.persistence.h.a(), this.f20444e));
        com.google.android.datatransport.runtime.scheduling.g b10 = com.google.android.datatransport.runtime.scheduling.g.b(com.google.android.datatransport.runtime.time.e.a());
        this.f20446g = b10;
        com.google.android.datatransport.runtime.scheduling.i a12 = com.google.android.datatransport.runtime.scheduling.i.a(this.f20441b, this.f20445f, b10, com.google.android.datatransport.runtime.time.f.a());
        this.f20447h = a12;
        u7.c<Executor> cVar = this.f20440a;
        u7.c cVar2 = this.f20443d;
        u7.c<c0> cVar3 = this.f20445f;
        this.f20448i = com.google.android.datatransport.runtime.scheduling.d.a(cVar, cVar2, a12, cVar3, cVar3);
        u7.c<Context> cVar4 = this.f20441b;
        u7.c cVar5 = this.f20443d;
        u7.c<c0> cVar6 = this.f20445f;
        this.f20449j = com.google.android.datatransport.runtime.scheduling.jobscheduling.m.a(cVar4, cVar5, cVar6, this.f20447h, this.f20440a, cVar6, com.google.android.datatransport.runtime.time.e.a());
        u7.c<Executor> cVar7 = this.f20440a;
        u7.c<c0> cVar8 = this.f20445f;
        this.f20450k = com.google.android.datatransport.runtime.scheduling.jobscheduling.q.a(cVar7, cVar8, this.f20447h, cVar8);
        this.f20451l = com.google.android.datatransport.runtime.dagger.internal.f.b(v.a(com.google.android.datatransport.runtime.time.e.a(), com.google.android.datatransport.runtime.time.f.a(), this.f20448i, this.f20449j, this.f20450k));
    }

    @Override // com.google.android.datatransport.runtime.u
    com.google.android.datatransport.runtime.scheduling.persistence.c a() {
        return this.f20445f.get();
    }

    @Override // com.google.android.datatransport.runtime.u
    t b() {
        return this.f20451l.get();
    }

    private e(Context context) {
        h(context);
    }
}
