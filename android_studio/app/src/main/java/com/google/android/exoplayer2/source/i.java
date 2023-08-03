package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.source.z0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: ConcatenatingMediaSource.java */
/* loaded from: classes2.dex */
public final class i extends com.google.android.exoplayer2.source.e<e> {
    private static final int A = 5;
    private static final com.google.android.exoplayer2.b1 B = new b1.c().F(Uri.EMPTY).a();

    /* renamed from: v  reason: collision with root package name */
    private static final int f24945v = 0;

    /* renamed from: w  reason: collision with root package name */
    private static final int f24946w = 1;

    /* renamed from: x  reason: collision with root package name */
    private static final int f24947x = 2;

    /* renamed from: y  reason: collision with root package name */
    private static final int f24948y = 3;

    /* renamed from: z  reason: collision with root package name */
    private static final int f24949z = 4;
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    private final List<e> f24950j;
    @GuardedBy("this")

    /* renamed from: k  reason: collision with root package name */
    private final Set<d> f24951k;
    @Nullable
    @GuardedBy("this")

    /* renamed from: l  reason: collision with root package name */
    private Handler f24952l;

    /* renamed from: m  reason: collision with root package name */
    private final List<e> f24953m;

    /* renamed from: n  reason: collision with root package name */
    private final IdentityHashMap<w, e> f24954n;

    /* renamed from: o  reason: collision with root package name */
    private final Map<Object, e> f24955o;

    /* renamed from: p  reason: collision with root package name */
    private final Set<e> f24956p;

    /* renamed from: q  reason: collision with root package name */
    private final boolean f24957q;

    /* renamed from: r  reason: collision with root package name */
    private final boolean f24958r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f24959s;

    /* renamed from: t  reason: collision with root package name */
    private Set<d> f24960t;

    /* renamed from: u  reason: collision with root package name */
    private z0 f24961u;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConcatenatingMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class b extends com.google.android.exoplayer2.a {

        /* renamed from: i  reason: collision with root package name */
        private final int f24962i;

        /* renamed from: j  reason: collision with root package name */
        private final int f24963j;

        /* renamed from: k  reason: collision with root package name */
        private final int[] f24964k;

        /* renamed from: l  reason: collision with root package name */
        private final int[] f24965l;

        /* renamed from: m  reason: collision with root package name */
        private final s2[] f24966m;

        /* renamed from: n  reason: collision with root package name */
        private final Object[] f24967n;

        /* renamed from: o  reason: collision with root package name */
        private final HashMap<Object, Integer> f24968o;

        public b(Collection<e> collection, z0 z0Var, boolean z9) {
            super(z9, z0Var);
            int size = collection.size();
            this.f24964k = new int[size];
            this.f24965l = new int[size];
            this.f24966m = new s2[size];
            this.f24967n = new Object[size];
            this.f24968o = new HashMap<>();
            int i4 = 0;
            int i10 = 0;
            int i11 = 0;
            for (e eVar : collection) {
                this.f24966m[i11] = eVar.f24971a.P();
                this.f24965l[i11] = i4;
                this.f24964k[i11] = i10;
                i4 += this.f24966m[i11].u();
                i10 += this.f24966m[i11].m();
                Object[] objArr = this.f24967n;
                objArr[i11] = eVar.f24972b;
                this.f24968o.put(objArr[i11], Integer.valueOf(i11));
                i11++;
            }
            this.f24962i = i4;
            this.f24963j = i10;
        }

        @Override // com.google.android.exoplayer2.a
        protected int A(int i4) {
            return com.google.android.exoplayer2.util.z0.i(this.f24965l, i4 + 1, false, false);
        }

        @Override // com.google.android.exoplayer2.a
        protected Object D(int i4) {
            return this.f24967n[i4];
        }

        @Override // com.google.android.exoplayer2.a
        protected int F(int i4) {
            return this.f24964k[i4];
        }

        @Override // com.google.android.exoplayer2.a
        protected int G(int i4) {
            return this.f24965l[i4];
        }

        @Override // com.google.android.exoplayer2.a
        protected s2 J(int i4) {
            return this.f24966m[i4];
        }

        @Override // com.google.android.exoplayer2.s2
        public int m() {
            return this.f24963j;
        }

        @Override // com.google.android.exoplayer2.s2
        public int u() {
            return this.f24962i;
        }

        @Override // com.google.android.exoplayer2.a
        protected int y(Object obj) {
            Integer num = this.f24968o.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // com.google.android.exoplayer2.a
        protected int z(int i4) {
            return com.google.android.exoplayer2.util.z0.i(this.f24964k, i4 + 1, false, false);
        }
    }

    /* compiled from: ConcatenatingMediaSource.java */
    /* loaded from: classes2.dex */
    private static final class c extends com.google.android.exoplayer2.source.a {
        private c() {
        }

        @Override // com.google.android.exoplayer2.source.a
        protected void A() {
        }

        @Override // com.google.android.exoplayer2.source.z
        public w a(z.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.source.z
        public com.google.android.exoplayer2.b1 e() {
            return i.B;
        }

        @Override // com.google.android.exoplayer2.source.z
        public void g(w wVar) {
        }

        @Override // com.google.android.exoplayer2.source.z
        public void n() {
        }

        @Override // com.google.android.exoplayer2.source.a
        protected void y(@Nullable com.google.android.exoplayer2.upstream.p0 p0Var) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConcatenatingMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f24969a;

        /* renamed from: b  reason: collision with root package name */
        private final Runnable f24970b;

        public d(Handler handler, Runnable runnable) {
            this.f24969a = handler;
            this.f24970b = runnable;
        }

        public void a() {
            this.f24969a.post(this.f24970b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ConcatenatingMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final r f24971a;

        /* renamed from: d  reason: collision with root package name */
        public int f24974d;

        /* renamed from: e  reason: collision with root package name */
        public int f24975e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f24976f;

        /* renamed from: c  reason: collision with root package name */
        public final List<z.a> f24973c = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public final Object f24972b = new Object();

        public e(z zVar, boolean z9) {
            this.f24971a = new r(zVar, z9);
        }

        public void a(int i4, int i10) {
            this.f24974d = i4;
            this.f24975e = i10;
            this.f24976f = false;
            this.f24973c.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConcatenatingMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class f<T> {

        /* renamed from: a  reason: collision with root package name */
        public final int f24977a;

        /* renamed from: b  reason: collision with root package name */
        public final T f24978b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final d f24979c;

        public f(int i4, T t9, @Nullable d dVar) {
            this.f24977a = i4;
            this.f24978b = t9;
            this.f24979c = dVar;
        }
    }

    public i(z... zVarArr) {
        this(false, zVarArr);
    }

    private void A0() {
        B0(null);
    }

    private void B0(@Nullable d dVar) {
        if (!this.f24959s) {
            k0().obtainMessage(4).sendToTarget();
            this.f24959s = true;
        }
        if (dVar != null) {
            this.f24960t.add(dVar);
        }
    }

    @GuardedBy("this")
    private void C0(z0 z0Var, @Nullable Handler handler, @Nullable Runnable runnable) {
        com.google.android.exoplayer2.util.a.a((handler == null) == (runnable == null));
        Handler handler2 = this.f24952l;
        if (handler2 != null) {
            int l02 = l0();
            if (z0Var.getLength() != l02) {
                z0Var = z0Var.e().g(0, l02);
            }
            handler2.obtainMessage(3, new f(0, z0Var, b0(handler, runnable))).sendToTarget();
            return;
        }
        if (z0Var.getLength() > 0) {
            z0Var = z0Var.e();
        }
        this.f24961u = z0Var;
        if (runnable == null || handler == null) {
            return;
        }
        handler.post(runnable);
    }

    private void F0(e eVar, s2 s2Var) {
        int u9;
        if (eVar.f24974d + 1 < this.f24953m.size() && (u9 = s2Var.u() - (this.f24953m.get(eVar.f24974d + 1).f24975e - eVar.f24975e)) != 0) {
            a0(eVar.f24974d + 1, 0, u9);
        }
        A0();
    }

    private void G0() {
        this.f24959s = false;
        Set<d> set = this.f24960t;
        this.f24960t = new HashSet();
        z(new b(this.f24953m, this.f24961u, this.f24957q));
        k0().obtainMessage(5, set).sendToTarget();
    }

    private void R(int i4, e eVar) {
        if (i4 > 0) {
            e eVar2 = this.f24953m.get(i4 - 1);
            eVar.a(i4, eVar2.f24975e + eVar2.f24971a.P().u());
        } else {
            eVar.a(i4, 0);
        }
        a0(i4, 1, eVar.f24971a.P().u());
        this.f24953m.add(i4, eVar);
        this.f24955o.put(eVar.f24972b, eVar);
        J(eVar, eVar.f24971a);
        if (x() && this.f24954n.isEmpty()) {
            this.f24956p.add(eVar);
        } else {
            C(eVar);
        }
    }

    private void W(int i4, Collection<e> collection) {
        for (e eVar : collection) {
            R(i4, eVar);
            i4++;
        }
    }

    @GuardedBy("this")
    private void X(int i4, Collection<z> collection, @Nullable Handler handler, @Nullable Runnable runnable) {
        com.google.android.exoplayer2.util.a.a((handler == null) == (runnable == null));
        Handler handler2 = this.f24952l;
        for (z zVar : collection) {
            com.google.android.exoplayer2.util.a.g(zVar);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (z zVar2 : collection) {
            arrayList.add(new e(zVar2, this.f24958r));
        }
        this.f24950j.addAll(i4, arrayList);
        if (handler2 != null && !collection.isEmpty()) {
            handler2.obtainMessage(0, new f(i4, arrayList, b0(handler, runnable))).sendToTarget();
        } else if (runnable != null && handler != null) {
            handler.post(runnable);
        }
    }

    private void a0(int i4, int i10, int i11) {
        while (i4 < this.f24953m.size()) {
            e eVar = this.f24953m.get(i4);
            eVar.f24974d += i10;
            eVar.f24975e += i11;
            i4++;
        }
    }

    @Nullable
    @GuardedBy("this")
    private d b0(@Nullable Handler handler, @Nullable Runnable runnable) {
        if (handler == null || runnable == null) {
            return null;
        }
        d dVar = new d(handler, runnable);
        this.f24951k.add(dVar);
        return dVar;
    }

    private void c0() {
        Iterator<e> it = this.f24956p.iterator();
        while (it.hasNext()) {
            e next = it.next();
            if (next.f24973c.isEmpty()) {
                C(next);
                it.remove();
            }
        }
    }

    private synchronized void d0(Set<d> set) {
        for (d dVar : set) {
            dVar.a();
        }
        this.f24951k.removeAll(set);
    }

    private void e0(e eVar) {
        this.f24956p.add(eVar);
        D(eVar);
    }

    private static Object f0(Object obj) {
        return com.google.android.exoplayer2.a.B(obj);
    }

    private static Object i0(Object obj) {
        return com.google.android.exoplayer2.a.C(obj);
    }

    private static Object j0(e eVar, Object obj) {
        return com.google.android.exoplayer2.a.E(eVar.f24972b, obj);
    }

    private Handler k0() {
        return (Handler) com.google.android.exoplayer2.util.a.g(this.f24952l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n0(Message message) {
        int i4 = message.what;
        if (i4 == 0) {
            f fVar = (f) com.google.android.exoplayer2.util.z0.k(message.obj);
            this.f24961u = this.f24961u.g(fVar.f24977a, ((Collection) fVar.f24978b).size());
            W(fVar.f24977a, (Collection) fVar.f24978b);
            B0(fVar.f24979c);
        } else if (i4 == 1) {
            f fVar2 = (f) com.google.android.exoplayer2.util.z0.k(message.obj);
            int i10 = fVar2.f24977a;
            int intValue = ((Integer) fVar2.f24978b).intValue();
            if (i10 == 0 && intValue == this.f24961u.getLength()) {
                this.f24961u = this.f24961u.e();
            } else {
                this.f24961u = this.f24961u.a(i10, intValue);
            }
            for (int i11 = intValue - 1; i11 >= i10; i11--) {
                w0(i11);
            }
            B0(fVar2.f24979c);
        } else if (i4 == 2) {
            f fVar3 = (f) com.google.android.exoplayer2.util.z0.k(message.obj);
            z0 z0Var = this.f24961u;
            int i12 = fVar3.f24977a;
            z0 a10 = z0Var.a(i12, i12 + 1);
            this.f24961u = a10;
            this.f24961u = a10.g(((Integer) fVar3.f24978b).intValue(), 1);
            r0(fVar3.f24977a, ((Integer) fVar3.f24978b).intValue());
            B0(fVar3.f24979c);
        } else if (i4 == 3) {
            f fVar4 = (f) com.google.android.exoplayer2.util.z0.k(message.obj);
            this.f24961u = (z0) fVar4.f24978b;
            B0(fVar4.f24979c);
        } else if (i4 == 4) {
            G0();
        } else if (i4 == 5) {
            d0((Set) com.google.android.exoplayer2.util.z0.k(message.obj));
        } else {
            throw new IllegalStateException();
        }
        return true;
    }

    private void o0(e eVar) {
        if (eVar.f24976f && eVar.f24973c.isEmpty()) {
            this.f24956p.remove(eVar);
            K(eVar);
        }
    }

    private void r0(int i4, int i10) {
        int min = Math.min(i4, i10);
        int max = Math.max(i4, i10);
        int i11 = this.f24953m.get(min).f24975e;
        List<e> list = this.f24953m;
        list.add(i10, list.remove(i4));
        while (min <= max) {
            e eVar = this.f24953m.get(min);
            eVar.f24974d = min;
            eVar.f24975e = i11;
            i11 += eVar.f24971a.P().u();
            min++;
        }
    }

    @GuardedBy("this")
    private void s0(int i4, int i10, @Nullable Handler handler, @Nullable Runnable runnable) {
        com.google.android.exoplayer2.util.a.a((handler == null) == (runnable == null));
        Handler handler2 = this.f24952l;
        List<e> list = this.f24950j;
        list.add(i10, list.remove(i4));
        if (handler2 != null) {
            handler2.obtainMessage(2, new f(i4, Integer.valueOf(i10), b0(handler, runnable))).sendToTarget();
        } else if (runnable == null || handler == null) {
        } else {
            handler.post(runnable);
        }
    }

    private void w0(int i4) {
        e remove = this.f24953m.remove(i4);
        this.f24955o.remove(remove.f24972b);
        a0(i4, -1, -remove.f24971a.P().u());
        remove.f24976f = true;
        o0(remove);
    }

    @GuardedBy("this")
    private void z0(int i4, int i10, @Nullable Handler handler, @Nullable Runnable runnable) {
        com.google.android.exoplayer2.util.a.a((handler == null) == (runnable == null));
        Handler handler2 = this.f24952l;
        com.google.android.exoplayer2.util.z0.d1(this.f24950j, i4, i10);
        if (handler2 != null) {
            handler2.obtainMessage(1, new f(i4, Integer.valueOf(i10), b0(handler, runnable))).sendToTarget();
        } else if (runnable == null || handler == null) {
        } else {
            handler.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.a
    public synchronized void A() {
        super.A();
        this.f24953m.clear();
        this.f24956p.clear();
        this.f24955o.clear();
        this.f24961u = this.f24961u.e();
        Handler handler = this.f24952l;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f24952l = null;
        }
        this.f24959s = false;
        this.f24960t.clear();
        d0(this.f24951k);
    }

    public synchronized void D0(z0 z0Var) {
        C0(z0Var, null, null);
    }

    public synchronized void E0(z0 z0Var, Handler handler, Runnable runnable) {
        C0(z0Var, handler, runnable);
    }

    public synchronized void N(int i4, z zVar) {
        X(i4, Collections.singletonList(zVar), null, null);
    }

    public synchronized void O(int i4, z zVar, Handler handler, Runnable runnable) {
        X(i4, Collections.singletonList(zVar), handler, runnable);
    }

    public synchronized void P(z zVar) {
        N(this.f24950j.size(), zVar);
    }

    public synchronized void Q(z zVar, Handler handler, Runnable runnable) {
        O(this.f24950j.size(), zVar, handler, runnable);
    }

    public synchronized void S(int i4, Collection<z> collection) {
        X(i4, collection, null, null);
    }

    public synchronized void T(int i4, Collection<z> collection, Handler handler, Runnable runnable) {
        X(i4, collection, handler, runnable);
    }

    public synchronized void U(Collection<z> collection) {
        X(this.f24950j.size(), collection, null, null);
    }

    public synchronized void V(Collection<z> collection, Handler handler, Runnable runnable) {
        X(this.f24950j.size(), collection, handler, runnable);
    }

    public synchronized void Y() {
        x0(0, l0());
    }

    public synchronized void Z(Handler handler, Runnable runnable) {
        y0(0, l0(), handler, runnable);
    }

    @Override // com.google.android.exoplayer2.source.z
    public w a(z.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j4) {
        Object i02 = i0(aVar.f25221a);
        z.a a10 = aVar.a(f0(aVar.f25221a));
        e eVar = this.f24955o.get(i02);
        if (eVar == null) {
            eVar = new e(new c(), this.f24958r);
            eVar.f24976f = true;
            J(eVar, eVar.f24971a);
        }
        e0(eVar);
        eVar.f24973c.add(a10);
        q a11 = eVar.f24971a.a(a10, bVar, j4);
        this.f24954n.put(a11, eVar);
        c0();
        return a11;
    }

    @Override // com.google.android.exoplayer2.source.z
    public com.google.android.exoplayer2.b1 e() {
        return B;
    }

    @Override // com.google.android.exoplayer2.source.z
    public void g(w wVar) {
        e eVar = (e) com.google.android.exoplayer2.util.a.g(this.f24954n.remove(wVar));
        eVar.f24971a.g(wVar);
        eVar.f24973c.remove(((q) wVar).f25120a);
        if (!this.f24954n.isEmpty()) {
            c0();
        }
        o0(eVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e
    @Nullable
    /* renamed from: g0 */
    public z.a E(e eVar, z.a aVar) {
        for (int i4 = 0; i4 < eVar.f24973c.size(); i4++) {
            if (eVar.f24973c.get(i4).f25224d == aVar.f25224d) {
                return aVar.a(j0(eVar, aVar.f25221a));
            }
        }
        return null;
    }

    public synchronized z h0(int i4) {
        return this.f24950j.get(i4).f24971a;
    }

    public synchronized int l0() {
        return this.f24950j.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e
    /* renamed from: m0 */
    public int G(e eVar, int i4) {
        return i4 + eVar.f24975e;
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.z
    public boolean o() {
        return false;
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.z
    public synchronized s2 p() {
        z0 z0Var;
        if (this.f24961u.getLength() != this.f24950j.size()) {
            z0Var = this.f24961u.e().g(0, this.f24950j.size());
        } else {
            z0Var = this.f24961u;
        }
        return new b(this.f24950j, z0Var, this.f24957q);
    }

    public synchronized void p0(int i4, int i10) {
        s0(i4, i10, null, null);
    }

    public synchronized void q0(int i4, int i10, Handler handler, Runnable runnable) {
        s0(i4, i10, handler, runnable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e
    /* renamed from: t0 */
    public void I(e eVar, z zVar, s2 s2Var) {
        F0(eVar, s2Var);
    }

    public synchronized z u0(int i4) {
        z h02;
        h02 = h0(i4);
        z0(i4, i4 + 1, null, null);
        return h02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.a
    public void v() {
        super.v();
        this.f24956p.clear();
    }

    public synchronized z v0(int i4, Handler handler, Runnable runnable) {
        z h02;
        h02 = h0(i4);
        z0(i4, i4 + 1, handler, runnable);
        return h02;
    }

    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.a
    protected void w() {
    }

    public synchronized void x0(int i4, int i10) {
        z0(i4, i10, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.e, com.google.android.exoplayer2.source.a
    public synchronized void y(@Nullable com.google.android.exoplayer2.upstream.p0 p0Var) {
        super.y(p0Var);
        this.f24952l = new Handler(new Handler.Callback() { // from class: com.google.android.exoplayer2.source.h
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean n02;
                n02 = i.this.n0(message);
                return n02;
            }
        });
        if (this.f24950j.isEmpty()) {
            G0();
        } else {
            this.f24961u = this.f24961u.g(0, this.f24950j.size());
            W(0, this.f24950j);
            A0();
        }
    }

    public synchronized void y0(int i4, int i10, Handler handler, Runnable runnable) {
        z0(i4, i10, handler, runnable);
    }

    public i(boolean z9, z... zVarArr) {
        this(z9, new z0.a(0), zVarArr);
    }

    public i(boolean z9, z0 z0Var, z... zVarArr) {
        this(z9, false, z0Var, zVarArr);
    }

    public i(boolean z9, boolean z10, z0 z0Var, z... zVarArr) {
        for (z zVar : zVarArr) {
            com.google.android.exoplayer2.util.a.g(zVar);
        }
        this.f24961u = z0Var.getLength() > 0 ? z0Var.e() : z0Var;
        this.f24954n = new IdentityHashMap<>();
        this.f24955o = new HashMap();
        this.f24950j = new ArrayList();
        this.f24953m = new ArrayList();
        this.f24960t = new HashSet();
        this.f24951k = new HashSet();
        this.f24956p = new HashSet();
        this.f24957q = z9;
        this.f24958r = z10;
        U(Arrays.asList(zVarArr));
    }
}
