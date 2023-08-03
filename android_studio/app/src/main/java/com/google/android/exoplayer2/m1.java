package com.google.android.exoplayer2;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.source.h0;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.source.z0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaSourceList.java */
/* loaded from: classes2.dex */
public final class m1 {

    /* renamed from: l  reason: collision with root package name */
    private static final String f23910l = "MediaSourceList";

    /* renamed from: d  reason: collision with root package name */
    private final d f23914d;

    /* renamed from: e  reason: collision with root package name */
    private final h0.a f23915e;

    /* renamed from: f  reason: collision with root package name */
    private final s.a f23916f;

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<c, b> f23917g;

    /* renamed from: h  reason: collision with root package name */
    private final Set<c> f23918h;

    /* renamed from: j  reason: collision with root package name */
    private boolean f23920j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.p0 f23921k;

    /* renamed from: i  reason: collision with root package name */
    private com.google.android.exoplayer2.source.z0 f23919i = new z0.a(0);

    /* renamed from: b  reason: collision with root package name */
    private final IdentityHashMap<com.google.android.exoplayer2.source.w, c> f23912b = new IdentityHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final Map<Object, c> f23913c = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final List<c> f23911a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaSourceList.java */
    /* loaded from: classes2.dex */
    public final class a implements com.google.android.exoplayer2.source.h0, com.google.android.exoplayer2.drm.s {

        /* renamed from: a  reason: collision with root package name */
        private final c f23922a;

        /* renamed from: b  reason: collision with root package name */
        private h0.a f23923b;

        /* renamed from: c  reason: collision with root package name */
        private s.a f23924c;

        public a(c cVar) {
            this.f23923b = m1.this.f23915e;
            this.f23924c = m1.this.f23916f;
            this.f23922a = cVar;
        }

        private boolean a(int i4, @Nullable z.a aVar) {
            z.a aVar2;
            if (aVar != null) {
                aVar2 = m1.o(this.f23922a, aVar);
                if (aVar2 == null) {
                    return false;
                }
            } else {
                aVar2 = null;
            }
            int s9 = m1.s(this.f23922a, i4);
            h0.a aVar3 = this.f23923b;
            if (aVar3.f24939a != s9 || !com.google.android.exoplayer2.util.z0.c(aVar3.f24940b, aVar2)) {
                this.f23923b = m1.this.f23915e.F(s9, aVar2, 0L);
            }
            s.a aVar4 = this.f23924c;
            if (aVar4.f21813a == s9 && com.google.android.exoplayer2.util.z0.c(aVar4.f21814b, aVar2)) {
                return true;
            }
            this.f23924c = m1.this.f23916f.u(s9, aVar2);
            return true;
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void H(int i4, @Nullable z.a aVar, com.google.android.exoplayer2.source.s sVar) {
            if (a(i4, aVar)) {
                this.f23923b.j(sVar);
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void I(int i4, @Nullable z.a aVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar) {
            if (a(i4, aVar)) {
                this.f23923b.s(oVar, sVar);
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void J(int i4, @Nullable z.a aVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar) {
            if (a(i4, aVar)) {
                this.f23923b.B(oVar, sVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void N(int i4, @Nullable z.a aVar) {
            if (a(i4, aVar)) {
                this.f23924c.i();
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public /* synthetic */ void O(int i4, z.a aVar) {
            com.google.android.exoplayer2.drm.l.d(this, i4, aVar);
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void W(int i4, @Nullable z.a aVar, com.google.android.exoplayer2.source.s sVar) {
            if (a(i4, aVar)) {
                this.f23923b.E(sVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void Y(int i4, @Nullable z.a aVar, Exception exc) {
            if (a(i4, aVar)) {
                this.f23924c.l(exc);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void g0(int i4, @Nullable z.a aVar) {
            if (a(i4, aVar)) {
                this.f23924c.h();
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void j0(int i4, @Nullable z.a aVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar) {
            if (a(i4, aVar)) {
                this.f23923b.v(oVar, sVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void k0(int i4, @Nullable z.a aVar, int i10) {
            if (a(i4, aVar)) {
                this.f23924c.k(i10);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void l0(int i4, @Nullable z.a aVar) {
            if (a(i4, aVar)) {
                this.f23924c.m();
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void n0(int i4, @Nullable z.a aVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar, IOException iOException, boolean z9) {
            if (a(i4, aVar)) {
                this.f23923b.y(oVar, sVar, iOException, z9);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void p0(int i4, @Nullable z.a aVar) {
            if (a(i4, aVar)) {
                this.f23924c.j();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaSourceList.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final com.google.android.exoplayer2.source.z f23926a;

        /* renamed from: b  reason: collision with root package name */
        public final z.b f23927b;

        /* renamed from: c  reason: collision with root package name */
        public final a f23928c;

        public b(com.google.android.exoplayer2.source.z zVar, z.b bVar, a aVar) {
            this.f23926a = zVar;
            this.f23927b = bVar;
            this.f23928c = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MediaSourceList.java */
    /* loaded from: classes2.dex */
    public static final class c implements k1 {

        /* renamed from: a  reason: collision with root package name */
        public final com.google.android.exoplayer2.source.r f23929a;

        /* renamed from: d  reason: collision with root package name */
        public int f23932d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f23933e;

        /* renamed from: c  reason: collision with root package name */
        public final List<z.a> f23931c = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public final Object f23930b = new Object();

        public c(com.google.android.exoplayer2.source.z zVar, boolean z9) {
            this.f23929a = new com.google.android.exoplayer2.source.r(zVar, z9);
        }

        @Override // com.google.android.exoplayer2.k1
        public s2 a() {
            return this.f23929a.P();
        }

        public void b(int i4) {
            this.f23932d = i4;
            this.f23933e = false;
            this.f23931c.clear();
        }

        @Override // com.google.android.exoplayer2.k1
        public Object getUid() {
            return this.f23930b;
        }
    }

    /* compiled from: MediaSourceList.java */
    /* loaded from: classes2.dex */
    public interface d {
        void b();
    }

    public m1(d dVar, @Nullable com.google.android.exoplayer2.analytics.h1 h1Var, Handler handler) {
        this.f23914d = dVar;
        h0.a aVar = new h0.a();
        this.f23915e = aVar;
        s.a aVar2 = new s.a();
        this.f23916f = aVar2;
        this.f23917g = new HashMap<>();
        this.f23918h = new HashSet();
        if (h1Var != null) {
            aVar.g(handler, h1Var);
            aVar2.g(handler, h1Var);
        }
    }

    private void D(int i4, int i10) {
        for (int i11 = i10 - 1; i11 >= i4; i11--) {
            c remove = this.f23911a.remove(i11);
            this.f23913c.remove(remove.f23930b);
            h(i11, -remove.f23929a.P().u());
            remove.f23933e = true;
            if (this.f23920j) {
                v(remove);
            }
        }
    }

    private void h(int i4, int i10) {
        while (i4 < this.f23911a.size()) {
            this.f23911a.get(i4).f23932d += i10;
            i4++;
        }
    }

    private void k(c cVar) {
        b bVar = this.f23917g.get(cVar);
        if (bVar != null) {
            bVar.f23926a.j(bVar.f23927b);
        }
    }

    private void l() {
        Iterator<c> it = this.f23918h.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next.f23931c.isEmpty()) {
                k(next);
                it.remove();
            }
        }
    }

    private void m(c cVar) {
        this.f23918h.add(cVar);
        b bVar = this.f23917g.get(cVar);
        if (bVar != null) {
            bVar.f23926a.i(bVar.f23927b);
        }
    }

    private static Object n(Object obj) {
        return com.google.android.exoplayer2.a.B(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static z.a o(c cVar, z.a aVar) {
        for (int i4 = 0; i4 < cVar.f23931c.size(); i4++) {
            if (cVar.f23931c.get(i4).f25224d == aVar.f25224d) {
                return aVar.a(q(cVar, aVar.f25221a));
            }
        }
        return null;
    }

    private static Object p(Object obj) {
        return com.google.android.exoplayer2.a.C(obj);
    }

    private static Object q(c cVar, Object obj) {
        return com.google.android.exoplayer2.a.E(cVar.f23930b, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int s(c cVar, int i4) {
        return i4 + cVar.f23932d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(com.google.android.exoplayer2.source.z zVar, s2 s2Var) {
        this.f23914d.b();
    }

    private void v(c cVar) {
        if (cVar.f23933e && cVar.f23931c.isEmpty()) {
            b bVar = (b) com.google.android.exoplayer2.util.a.g(this.f23917g.remove(cVar));
            bVar.f23926a.b(bVar.f23927b);
            bVar.f23926a.d(bVar.f23928c);
            bVar.f23926a.m(bVar.f23928c);
            this.f23918h.remove(cVar);
        }
    }

    private void z(c cVar) {
        com.google.android.exoplayer2.source.r rVar = cVar.f23929a;
        z.b bVar = new z.b() { // from class: com.google.android.exoplayer2.l1
            @Override // com.google.android.exoplayer2.source.z.b
            public final void a(com.google.android.exoplayer2.source.z zVar, s2 s2Var) {
                m1.this.u(zVar, s2Var);
            }
        };
        a aVar = new a(cVar);
        this.f23917g.put(cVar, new b(rVar, bVar, aVar));
        rVar.c(com.google.android.exoplayer2.util.z0.B(), aVar);
        rVar.l(com.google.android.exoplayer2.util.z0.B(), aVar);
        rVar.h(bVar, this.f23921k);
    }

    public void A() {
        for (b bVar : this.f23917g.values()) {
            try {
                bVar.f23926a.b(bVar.f23927b);
            } catch (RuntimeException e4) {
                com.google.android.exoplayer2.util.w.e(f23910l, "Failed to release child source.", e4);
            }
            bVar.f23926a.d(bVar.f23928c);
            bVar.f23926a.m(bVar.f23928c);
        }
        this.f23917g.clear();
        this.f23918h.clear();
        this.f23920j = false;
    }

    public void B(com.google.android.exoplayer2.source.w wVar) {
        c cVar = (c) com.google.android.exoplayer2.util.a.g(this.f23912b.remove(wVar));
        cVar.f23929a.g(wVar);
        cVar.f23931c.remove(((com.google.android.exoplayer2.source.q) wVar).f25120a);
        if (!this.f23912b.isEmpty()) {
            l();
        }
        v(cVar);
    }

    public s2 C(int i4, int i10, com.google.android.exoplayer2.source.z0 z0Var) {
        com.google.android.exoplayer2.util.a.a(i4 >= 0 && i4 <= i10 && i10 <= r());
        this.f23919i = z0Var;
        D(i4, i10);
        return j();
    }

    public s2 E(List<c> list, com.google.android.exoplayer2.source.z0 z0Var) {
        D(0, this.f23911a.size());
        return f(this.f23911a.size(), list, z0Var);
    }

    public s2 F(com.google.android.exoplayer2.source.z0 z0Var) {
        int r9 = r();
        if (z0Var.getLength() != r9) {
            z0Var = z0Var.e().g(0, r9);
        }
        this.f23919i = z0Var;
        return j();
    }

    public s2 f(int i4, List<c> list, com.google.android.exoplayer2.source.z0 z0Var) {
        if (!list.isEmpty()) {
            this.f23919i = z0Var;
            for (int i10 = i4; i10 < list.size() + i4; i10++) {
                c cVar = list.get(i10 - i4);
                if (i10 > 0) {
                    c cVar2 = this.f23911a.get(i10 - 1);
                    cVar.b(cVar2.f23932d + cVar2.f23929a.P().u());
                } else {
                    cVar.b(0);
                }
                h(i10, cVar.f23929a.P().u());
                this.f23911a.add(i10, cVar);
                this.f23913c.put(cVar.f23930b, cVar);
                if (this.f23920j) {
                    z(cVar);
                    if (this.f23912b.isEmpty()) {
                        this.f23918h.add(cVar);
                    } else {
                        k(cVar);
                    }
                }
            }
        }
        return j();
    }

    public s2 g(@Nullable com.google.android.exoplayer2.source.z0 z0Var) {
        if (z0Var == null) {
            z0Var = this.f23919i.e();
        }
        this.f23919i = z0Var;
        D(0, r());
        return j();
    }

    public com.google.android.exoplayer2.source.w i(z.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4) {
        Object p9 = p(aVar.f25221a);
        z.a a10 = aVar.a(n(aVar.f25221a));
        c cVar = (c) com.google.android.exoplayer2.util.a.g(this.f23913c.get(p9));
        m(cVar);
        cVar.f23931c.add(a10);
        com.google.android.exoplayer2.source.q a11 = cVar.f23929a.a(a10, bVar, j4);
        this.f23912b.put(a11, cVar);
        l();
        return a11;
    }

    public s2 j() {
        if (this.f23911a.isEmpty()) {
            return s2.f24542a;
        }
        int i4 = 0;
        for (int i10 = 0; i10 < this.f23911a.size(); i10++) {
            c cVar = this.f23911a.get(i10);
            cVar.f23932d = i4;
            i4 += cVar.f23929a.P().u();
        }
        return new a2(this.f23911a, this.f23919i);
    }

    public int r() {
        return this.f23911a.size();
    }

    public boolean t() {
        return this.f23920j;
    }

    public s2 w(int i4, int i10, com.google.android.exoplayer2.source.z0 z0Var) {
        return x(i4, i4 + 1, i10, z0Var);
    }

    public s2 x(int i4, int i10, int i11, com.google.android.exoplayer2.source.z0 z0Var) {
        com.google.android.exoplayer2.util.a.a(i4 >= 0 && i4 <= i10 && i10 <= r() && i11 >= 0);
        this.f23919i = z0Var;
        if (i4 != i10 && i4 != i11) {
            int min = Math.min(i4, i11);
            int max = Math.max(((i10 - i4) + i11) - 1, i10 - 1);
            int i12 = this.f23911a.get(min).f23932d;
            com.google.android.exoplayer2.util.z0.O0(this.f23911a, i4, i10, i11);
            while (min <= max) {
                c cVar = this.f23911a.get(min);
                cVar.f23932d = i12;
                i12 += cVar.f23929a.P().u();
                min++;
            }
            return j();
        }
        return j();
    }

    public void y(@Nullable com.google.android.exoplayer2.upstream.p0 p0Var) {
        com.google.android.exoplayer2.util.a.i(!this.f23920j);
        this.f23921k = p0Var;
        for (int i4 = 0; i4 < this.f23911a.size(); i4++) {
            c cVar = this.f23911a.get(i4);
            z(cVar);
            this.f23918h.add(cVar);
        }
        this.f23920j = true;
    }
}
