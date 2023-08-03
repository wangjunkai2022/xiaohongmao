package com.google.android.exoplayer2.analytics;

import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.analytics.j1;
import com.google.android.exoplayer2.analytics.m1;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.z;
import com.google.android.gms.common.internal.x;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: DefaultPlaybackSessionManager.java */
/* loaded from: classes2.dex */
public final class l1 implements m1 {

    /* renamed from: h  reason: collision with root package name */
    public static final com.google.common.base.i0<String> f20844h = k1.f20840a;

    /* renamed from: i  reason: collision with root package name */
    private static final Random f20845i = new Random();

    /* renamed from: j  reason: collision with root package name */
    private static final int f20846j = 12;

    /* renamed from: a  reason: collision with root package name */
    private final s2.d f20847a;

    /* renamed from: b  reason: collision with root package name */
    private final s2.b f20848b;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, a> f20849c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.common.base.i0<String> f20850d;

    /* renamed from: e  reason: collision with root package name */
    private m1.a f20851e;

    /* renamed from: f  reason: collision with root package name */
    private s2 f20852f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f20853g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultPlaybackSessionManager.java */
    /* loaded from: classes2.dex */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f20854a;

        /* renamed from: b  reason: collision with root package name */
        private int f20855b;

        /* renamed from: c  reason: collision with root package name */
        private long f20856c;

        /* renamed from: d  reason: collision with root package name */
        private z.a f20857d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f20858e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f20859f;

        public a(String str, int i4, @Nullable z.a aVar) {
            this.f20854a = str;
            this.f20855b = i4;
            this.f20856c = aVar == null ? -1L : aVar.f25224d;
            if (aVar == null || !aVar.c()) {
                return;
            }
            this.f20857d = aVar;
        }

        private int l(s2 s2Var, s2 s2Var2, int i4) {
            if (i4 >= s2Var.u()) {
                if (i4 < s2Var2.u()) {
                    return i4;
                }
                return -1;
            }
            s2Var.r(i4, l1.this.f20847a);
            for (int i10 = l1.this.f20847a.f24587o; i10 <= l1.this.f20847a.f24588p; i10++) {
                int f10 = s2Var2.f(s2Var.q(i10));
                if (f10 != -1) {
                    return s2Var2.j(f10, l1.this.f20848b).f24555c;
                }
            }
            return -1;
        }

        public boolean i(int i4, @Nullable z.a aVar) {
            if (aVar == null) {
                return i4 == this.f20855b;
            }
            z.a aVar2 = this.f20857d;
            return aVar2 == null ? !aVar.c() && aVar.f25224d == this.f20856c : aVar.f25224d == aVar2.f25224d && aVar.f25222b == aVar2.f25222b && aVar.f25223c == aVar2.f25223c;
        }

        public boolean j(j1.b bVar) {
            long j4 = this.f20856c;
            if (j4 == -1) {
                return false;
            }
            z.a aVar = bVar.f20827d;
            if (aVar == null) {
                return this.f20855b != bVar.f20826c;
            } else if (aVar.f25224d > j4) {
                return true;
            } else {
                if (this.f20857d == null) {
                    return false;
                }
                int f10 = bVar.f20825b.f(aVar.f25221a);
                int f11 = bVar.f20825b.f(this.f20857d.f25221a);
                z.a aVar2 = bVar.f20827d;
                if (aVar2.f25224d < this.f20857d.f25224d || f10 < f11) {
                    return false;
                }
                if (f10 > f11) {
                    return true;
                }
                if (aVar2.c()) {
                    z.a aVar3 = bVar.f20827d;
                    int i4 = aVar3.f25222b;
                    int i10 = aVar3.f25223c;
                    z.a aVar4 = this.f20857d;
                    int i11 = aVar4.f25222b;
                    return i4 > i11 || (i4 == i11 && i10 > aVar4.f25223c);
                }
                int i12 = bVar.f20827d.f25225e;
                return i12 == -1 || i12 > this.f20857d.f25222b;
            }
        }

        public void k(int i4, @Nullable z.a aVar) {
            if (this.f20856c == -1 && i4 == this.f20855b && aVar != null) {
                this.f20856c = aVar.f25224d;
            }
        }

        public boolean m(s2 s2Var, s2 s2Var2) {
            int l10 = l(s2Var, s2Var2, this.f20855b);
            this.f20855b = l10;
            if (l10 == -1) {
                return false;
            }
            z.a aVar = this.f20857d;
            return aVar == null || s2Var2.f(aVar.f25221a) != -1;
        }
    }

    public l1() {
        this(f20844h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String l() {
        byte[] bArr = new byte[12];
        f20845i.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    private a m(int i4, @Nullable z.a aVar) {
        int i10;
        a aVar2 = null;
        long j4 = Long.MAX_VALUE;
        for (a aVar3 : this.f20849c.values()) {
            aVar3.k(i4, aVar);
            if (aVar3.i(i4, aVar)) {
                long j10 = aVar3.f20856c;
                if (j10 == -1 || j10 < j4) {
                    aVar2 = aVar3;
                    j4 = j10;
                } else if (i10 == 0 && ((a) com.google.android.exoplayer2.util.z0.k(aVar2)).f20857d != null && aVar3.f20857d != null) {
                    aVar2 = aVar3;
                }
            }
        }
        if (aVar2 == null) {
            String str = this.f20850d.get();
            a aVar4 = new a(str, i4, aVar);
            this.f20849c.put(str, aVar4);
            return aVar4;
        }
        return aVar2;
    }

    @RequiresNonNull({x.a.f29212a})
    private void n(j1.b bVar) {
        if (bVar.f20825b.v()) {
            this.f20853g = null;
            return;
        }
        a aVar = this.f20849c.get(this.f20853g);
        a m9 = m(bVar.f20826c, bVar.f20827d);
        this.f20853g = m9.f20854a;
        d(bVar);
        z.a aVar2 = bVar.f20827d;
        if (aVar2 == null || !aVar2.c()) {
            return;
        }
        if (aVar != null && aVar.f20856c == bVar.f20827d.f25224d && aVar.f20857d != null && aVar.f20857d.f25222b == bVar.f20827d.f25222b && aVar.f20857d.f25223c == bVar.f20827d.f25223c) {
            return;
        }
        z.a aVar3 = bVar.f20827d;
        this.f20851e.v0(bVar, m(bVar.f20826c, new z.a(aVar3.f25221a, aVar3.f25224d)).f20854a, m9.f20854a);
    }

    @Override // com.google.android.exoplayer2.analytics.m1
    @Nullable
    public synchronized String a() {
        return this.f20853g;
    }

    @Override // com.google.android.exoplayer2.analytics.m1
    public void b(m1.a aVar) {
        this.f20851e = aVar;
    }

    @Override // com.google.android.exoplayer2.analytics.m1
    public synchronized void c(j1.b bVar) {
        m1.a aVar;
        this.f20853g = null;
        Iterator<a> it = this.f20849c.values().iterator();
        while (it.hasNext()) {
            a next = it.next();
            it.remove();
            if (next.f20858e && (aVar = this.f20851e) != null) {
                aVar.a0(bVar, next.f20854a, false);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00e1 A[Catch: all -> 0x0118, TryCatch #0 {, blocks: (B:4:0x0005, B:8:0x0014, B:11:0x0025, B:13:0x0030, B:16:0x003a, B:23:0x004b, B:25:0x0057, B:26:0x005d, B:28:0x0061, B:30:0x0067, B:32:0x0080, B:34:0x00db, B:36:0x00e1, B:38:0x00f7, B:40:0x0103, B:42:0x0109), top: B:48:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f3  */
    @Override // com.google.android.exoplayer2.analytics.m1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void d(com.google.android.exoplayer2.analytics.j1.b r25) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.analytics.l1.d(com.google.android.exoplayer2.analytics.j1$b):void");
    }

    @Override // com.google.android.exoplayer2.analytics.m1
    public synchronized boolean e(j1.b bVar, String str) {
        a aVar = this.f20849c.get(str);
        if (aVar == null) {
            return false;
        }
        aVar.k(bVar.f20826c, bVar.f20827d);
        return aVar.i(bVar.f20826c, bVar.f20827d);
    }

    @Override // com.google.android.exoplayer2.analytics.m1
    public synchronized void f(j1.b bVar, int i4) {
        com.google.android.exoplayer2.util.a.g(this.f20851e);
        boolean z9 = i4 == 0;
        Iterator<a> it = this.f20849c.values().iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next.j(bVar)) {
                it.remove();
                if (next.f20858e) {
                    boolean equals = next.f20854a.equals(this.f20853g);
                    boolean z10 = z9 && equals && next.f20859f;
                    if (equals) {
                        this.f20853g = null;
                    }
                    this.f20851e.a0(bVar, next.f20854a, z10);
                }
            }
        }
        n(bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.m1
    public synchronized void g(j1.b bVar) {
        com.google.android.exoplayer2.util.a.g(this.f20851e);
        s2 s2Var = this.f20852f;
        this.f20852f = bVar.f20825b;
        Iterator<a> it = this.f20849c.values().iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!next.m(s2Var, this.f20852f)) {
                it.remove();
                if (next.f20858e) {
                    if (next.f20854a.equals(this.f20853g)) {
                        this.f20853g = null;
                    }
                    this.f20851e.a0(bVar, next.f20854a, false);
                }
            }
        }
        n(bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.m1
    public synchronized String h(s2 s2Var, z.a aVar) {
        return m(s2Var.l(aVar.f25221a, this.f20848b).f24555c, aVar).f20854a;
    }

    public l1(com.google.common.base.i0<String> i0Var) {
        this.f20850d = i0Var;
        this.f20847a = new s2.d();
        this.f20848b = new s2.b();
        this.f20849c = new HashMap<>();
        this.f20852f = s2.f24542a;
    }
}
