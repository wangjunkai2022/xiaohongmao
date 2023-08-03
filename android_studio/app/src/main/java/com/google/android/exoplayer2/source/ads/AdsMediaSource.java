package com.google.android.exoplayer2.source.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.ads.AdsMediaSource;
import com.google.android.exoplayer2.source.ads.c;
import com.google.android.exoplayer2.source.ads.e;
import com.google.android.exoplayer2.source.j0;
import com.google.android.exoplayer2.source.q;
import com.google.android.exoplayer2.source.w;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.upstream.o;
import com.google.android.exoplayer2.upstream.p0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public final class AdsMediaSource extends com.google.android.exoplayer2.source.e<z.a> {

    /* renamed from: v  reason: collision with root package name */
    private static final z.a f24665v = new z.a(new Object());

    /* renamed from: j  reason: collision with root package name */
    private final z f24666j;

    /* renamed from: k  reason: collision with root package name */
    private final j0 f24667k;

    /* renamed from: l  reason: collision with root package name */
    private final e f24668l;

    /* renamed from: m  reason: collision with root package name */
    private final com.google.android.exoplayer2.ui.c f24669m;

    /* renamed from: n  reason: collision with root package name */
    private final o f24670n;

    /* renamed from: o  reason: collision with root package name */
    private final Object f24671o;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private c f24674r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private s2 f24675s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private com.google.android.exoplayer2.source.ads.c f24676t;

    /* renamed from: p  reason: collision with root package name */
    private final Handler f24672p = new Handler(Looper.getMainLooper());

    /* renamed from: q  reason: collision with root package name */
    private final s2.b f24673q = new s2.b();

    /* renamed from: u  reason: collision with root package name */
    private a[][] f24677u = new a[0];

    /* loaded from: classes2.dex */
    public static final class AdLoadException extends IOException {
        public static final int TYPE_AD = 0;
        public static final int TYPE_AD_GROUP = 1;
        public static final int TYPE_ALL_ADS = 2;
        public static final int TYPE_UNEXPECTED = 3;
        public final int type;

        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes2.dex */
        public @interface a {
        }

        private AdLoadException(int i4, Exception exc) {
            super(exc);
            this.type = i4;
        }

        public static AdLoadException createForAd(Exception exc) {
            return new AdLoadException(0, exc);
        }

        public static AdLoadException createForAdGroup(Exception exc, int i4) {
            StringBuilder sb = new StringBuilder(35);
            sb.append("Failed to load ad group ");
            sb.append(i4);
            return new AdLoadException(1, new IOException(sb.toString(), exc));
        }

        public static AdLoadException createForAllAds(Exception exc) {
            return new AdLoadException(2, exc);
        }

        public static AdLoadException createForUnexpected(RuntimeException runtimeException) {
            return new AdLoadException(3, runtimeException);
        }

        public RuntimeException getRuntimeExceptionForUnexpected() {
            com.google.android.exoplayer2.util.a.i(this.type == 3);
            return (RuntimeException) com.google.android.exoplayer2.util.a.g(getCause());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        private final z.a f24678a;

        /* renamed from: b  reason: collision with root package name */
        private final List<q> f24679b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private Uri f24680c;

        /* renamed from: d  reason: collision with root package name */
        private z f24681d;

        /* renamed from: e  reason: collision with root package name */
        private s2 f24682e;

        public a(z.a aVar) {
            this.f24678a = aVar;
        }

        public w a(z.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4) {
            q qVar = new q(aVar, bVar, j4);
            this.f24679b.add(qVar);
            z zVar = this.f24681d;
            if (zVar != null) {
                qVar.x(zVar);
                qVar.y(new b((Uri) com.google.android.exoplayer2.util.a.g(this.f24680c)));
            }
            s2 s2Var = this.f24682e;
            if (s2Var != null) {
                qVar.a(new z.a(s2Var.q(0), aVar.f25224d));
            }
            return qVar;
        }

        public long b() {
            s2 s2Var = this.f24682e;
            return s2Var == null ? com.google.android.exoplayer2.i.f23649b : s2Var.j(0, AdsMediaSource.this.f24673q).m();
        }

        public void c(s2 s2Var) {
            com.google.android.exoplayer2.util.a.a(s2Var.m() == 1);
            if (this.f24682e == null) {
                Object q9 = s2Var.q(0);
                for (int i4 = 0; i4 < this.f24679b.size(); i4++) {
                    q qVar = this.f24679b.get(i4);
                    qVar.a(new z.a(q9, qVar.f25120a.f25224d));
                }
            }
            this.f24682e = s2Var;
        }

        public boolean d() {
            return this.f24681d != null;
        }

        public void e(z zVar, Uri uri) {
            this.f24681d = zVar;
            this.f24680c = uri;
            for (int i4 = 0; i4 < this.f24679b.size(); i4++) {
                q qVar = this.f24679b.get(i4);
                qVar.x(zVar);
                qVar.y(new b(uri));
            }
            AdsMediaSource.this.J(this.f24678a, zVar);
        }

        public boolean f() {
            return this.f24679b.isEmpty();
        }

        public void g() {
            if (d()) {
                AdsMediaSource.this.K(this.f24678a);
            }
        }

        public void h(q qVar) {
            this.f24679b.remove(qVar);
            qVar.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class b implements q.a {

        /* renamed from: a  reason: collision with root package name */
        private final Uri f24684a;

        public b(Uri uri) {
            this.f24684a = uri;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(z.a aVar) {
            AdsMediaSource.this.f24668l.a(AdsMediaSource.this, aVar.f25222b, aVar.f25223c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(z.a aVar, IOException iOException) {
            AdsMediaSource.this.f24668l.d(AdsMediaSource.this, aVar.f25222b, aVar.f25223c, iOException);
        }

        @Override // com.google.android.exoplayer2.source.q.a
        public void a(final z.a aVar) {
            AdsMediaSource.this.f24672p.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads.h
                @Override // java.lang.Runnable
                public final void run() {
                    AdsMediaSource.b.this.e(aVar);
                }
            });
        }

        @Override // com.google.android.exoplayer2.source.q.a
        public void b(final z.a aVar, final IOException iOException) {
            AdsMediaSource.this.t(aVar).x(new com.google.android.exoplayer2.source.o(com.google.android.exoplayer2.source.o.a(), new o(this.f24684a), SystemClock.elapsedRealtime()), 6, AdLoadException.createForAd(iOException), true);
            AdsMediaSource.this.f24672p.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads.i
                @Override // java.lang.Runnable
                public final void run() {
                    AdsMediaSource.b.this.f(aVar, iOException);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class c implements e.a {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f24686a = z0.z();

        /* renamed from: b  reason: collision with root package name */
        private volatile boolean f24687b;

        public c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(com.google.android.exoplayer2.source.ads.c cVar) {
            if (this.f24687b) {
                return;
            }
            AdsMediaSource.this.b0(cVar);
        }

        @Override // com.google.android.exoplayer2.source.ads.e.a
        public void a(final com.google.android.exoplayer2.source.ads.c cVar) {
            if (this.f24687b) {
                return;
            }
            this.f24686a.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads.j
                @Override // java.lang.Runnable
                public final void run() {
                    AdsMediaSource.c.this.f(cVar);
                }
            });
        }

        @Override // com.google.android.exoplayer2.source.ads.e.a
        public /* synthetic */ void b() {
            d.a(this);
        }

        @Override // com.google.android.exoplayer2.source.ads.e.a
        public /* synthetic */ void c() {
            d.d(this);
        }

        @Override // com.google.android.exoplayer2.source.ads.e.a
        public void d(AdLoadException adLoadException, o oVar) {
            if (this.f24687b) {
                return;
            }
            AdsMediaSource.this.t(null).x(new com.google.android.exoplayer2.source.o(com.google.android.exoplayer2.source.o.a(), oVar, SystemClock.elapsedRealtime()), 6, adLoadException, true);
        }

        public void g() {
            this.f24687b = true;
            this.f24686a.removeCallbacksAndMessages(null);
        }
    }

    public AdsMediaSource(z zVar, o oVar, Object obj, j0 j0Var, e eVar, com.google.android.exoplayer2.ui.c cVar) {
        this.f24666j = zVar;
        this.f24667k = j0Var;
        this.f24668l = eVar;
        this.f24669m = cVar;
        this.f24670n = oVar;
        this.f24671o = obj;
        eVar.f(j0Var.d());
    }

    private long[][] V() {
        long[][] jArr = new long[this.f24677u.length];
        int i4 = 0;
        while (true) {
            a[][] aVarArr = this.f24677u;
            if (i4 >= aVarArr.length) {
                return jArr;
            }
            jArr[i4] = new long[aVarArr[i4].length];
            int i10 = 0;
            while (true) {
                a[][] aVarArr2 = this.f24677u;
                if (i10 < aVarArr2[i4].length) {
                    a aVar = aVarArr2[i4][i10];
                    jArr[i4][i10] = aVar == null ? com.google.android.exoplayer2.i.f23649b : aVar.b();
                    i10++;
                }
            }
            i4++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X(c cVar) {
        this.f24668l.c(this, this.f24670n, this.f24671o, this.f24669m, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y(c cVar) {
        this.f24668l.e(this, cVar);
    }

    private void Z() {
        Uri uri;
        b1.e eVar;
        com.google.android.exoplayer2.source.ads.c cVar = this.f24676t;
        if (cVar == null) {
            return;
        }
        for (int i4 = 0; i4 < this.f24677u.length; i4++) {
            int i10 = 0;
            while (true) {
                a[][] aVarArr = this.f24677u;
                if (i10 < aVarArr[i4].length) {
                    a aVar = aVarArr[i4][i10];
                    if (aVar != null && !aVar.d()) {
                        c.a[] aVarArr2 = cVar.f24705d;
                        if (aVarArr2[i4] != null && i10 < aVarArr2[i4].f24714b.length && (uri = aVarArr2[i4].f24714b[i10]) != null) {
                            b1.c F = new b1.c().F(uri);
                            b1.g gVar = this.f24666j.e().f21439b;
                            if (gVar != null && (eVar = gVar.f21504c) != null) {
                                F.t(eVar.f21482a);
                                F.l(eVar.a());
                                F.n(eVar.f21483b);
                                F.k(eVar.f21487f);
                                F.m(eVar.f21484c);
                                F.p(eVar.f21485d);
                                F.q(eVar.f21486e);
                                F.s(eVar.f21488g);
                            }
                            aVar.e(this.f24667k.c(F.a()), uri);
                        }
                    }
                    i10++;
                }
            }
        }
    }

    private void a0() {
        s2 s2Var = this.f24675s;
        com.google.android.exoplayer2.source.ads.c cVar = this.f24676t;
        if (cVar == null || s2Var == null) {
            return;
        }
        if (cVar.f24703b == 0) {
            z(s2Var);
            return;
        }
        this.f24676t = cVar.i(V());
        z(new k(s2Var, this.f24676t));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(com.google.android.exoplayer2.source.ads.c cVar) {
        com.google.android.exoplayer2.source.ads.c cVar2 = this.f24676t;
        if (cVar2 == null) {
            a[][] aVarArr = new a[cVar.f24703b];
            this.f24677u = aVarArr;
            Arrays.fill(aVarArr, new a[0]);
        } else {
            com.google.android.exoplayer2.util.a.i(cVar.f24703b == cVar2.f24703b);
        }
        this.f24676t = cVar;
        Z();
        a0();
    }

    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.a
    protected void A() {
        super.A();
        final c cVar = (c) com.google.android.exoplayer2.util.a.g(this.f24674r);
        this.f24674r = null;
        cVar.g();
        this.f24675s = null;
        this.f24676t = null;
        this.f24677u = new a[0];
        this.f24672p.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads.g
            @Override // java.lang.Runnable
            public final void run() {
                AdsMediaSource.this.Y(cVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e
    /* renamed from: W */
    public z.a E(z.a aVar, z.a aVar2) {
        return aVar.c() ? aVar : aVar2;
    }

    @Override // com.google.android.exoplayer2.source.z
    public w a(z.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4) {
        if (((com.google.android.exoplayer2.source.ads.c) com.google.android.exoplayer2.util.a.g(this.f24676t)).f24703b > 0 && aVar.c()) {
            int i4 = aVar.f25222b;
            int i10 = aVar.f25223c;
            a[][] aVarArr = this.f24677u;
            if (aVarArr[i4].length <= i10) {
                aVarArr[i4] = (a[]) Arrays.copyOf(aVarArr[i4], i10 + 1);
            }
            a aVar2 = this.f24677u[i4][i10];
            if (aVar2 == null) {
                aVar2 = new a(aVar);
                this.f24677u[i4][i10] = aVar2;
                Z();
            }
            return aVar2.a(aVar, bVar, j4);
        }
        q qVar = new q(aVar, bVar, j4);
        qVar.x(this.f24666j);
        qVar.a(aVar);
        return qVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e
    /* renamed from: c0 */
    public void I(z.a aVar, z zVar, s2 s2Var) {
        if (aVar.c()) {
            ((a) com.google.android.exoplayer2.util.a.g(this.f24677u[aVar.f25222b][aVar.f25223c])).c(s2Var);
        } else {
            com.google.android.exoplayer2.util.a.a(s2Var.m() == 1);
            this.f24675s = s2Var;
        }
        a0();
    }

    @Override // com.google.android.exoplayer2.source.z
    public b1 e() {
        return this.f24666j.e();
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.z
    @Nullable
    @Deprecated
    public Object f() {
        return this.f24666j.f();
    }

    @Override // com.google.android.exoplayer2.source.z
    public void g(w wVar) {
        q qVar = (q) wVar;
        z.a aVar = qVar.f25120a;
        if (aVar.c()) {
            a aVar2 = (a) com.google.android.exoplayer2.util.a.g(this.f24677u[aVar.f25222b][aVar.f25223c]);
            aVar2.h(qVar);
            if (aVar2.f()) {
                aVar2.g();
                this.f24677u[aVar.f25222b][aVar.f25223c] = null;
                return;
            }
            return;
        }
        qVar.w();
    }

    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.a
    protected void y(@Nullable p0 p0Var) {
        super.y(p0Var);
        final c cVar = new c();
        this.f24674r = cVar;
        J(f24665v, this.f24666j);
        this.f24672p.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads.f
            @Override // java.lang.Runnable
            public final void run() {
                AdsMediaSource.this.X(cVar);
            }
        });
    }
}
