package com.google.android.exoplayer2.source;

import android.content.Context;
import android.net.Uri;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.ads.AdsMediaSource;
import com.google.android.exoplayer2.source.d1;
import com.google.android.exoplayer2.source.q0;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.m;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

/* compiled from: DefaultMediaSourceFactory.java */
/* loaded from: classes2.dex */
public final class k implements j0 {

    /* renamed from: l  reason: collision with root package name */
    private static final String f24980l = "DefaultMediaSourceFactory";

    /* renamed from: a  reason: collision with root package name */
    private final m.a f24981a;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<j0> f24982b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f24983c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private a f24984d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private com.google.android.exoplayer2.ui.c f24985e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.f0 f24986f;

    /* renamed from: g  reason: collision with root package name */
    private long f24987g;

    /* renamed from: h  reason: collision with root package name */
    private long f24988h;

    /* renamed from: i  reason: collision with root package name */
    private long f24989i;

    /* renamed from: j  reason: collision with root package name */
    private float f24990j;

    /* renamed from: k  reason: collision with root package name */
    private float f24991k;

    /* compiled from: DefaultMediaSourceFactory.java */
    /* loaded from: classes2.dex */
    public interface a {
        @Nullable
        com.google.android.exoplayer2.source.ads.e a(b1.b bVar);
    }

    public k(Context context) {
        this(new com.google.android.exoplayer2.upstream.t(context));
    }

    private static SparseArray<j0> j(m.a aVar, com.google.android.exoplayer2.extractor.q qVar) {
        SparseArray<j0> sparseArray = new SparseArray<>();
        try {
            sparseArray.put(0, (j0) Class.forName("com.google.android.exoplayer2.source.dash.DashMediaSource$Factory").asSubclass(j0.class).getConstructor(m.a.class).newInstance(aVar));
        } catch (Exception unused) {
        }
        try {
            sparseArray.put(1, (j0) Class.forName("com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory").asSubclass(j0.class).getConstructor(m.a.class).newInstance(aVar));
        } catch (Exception unused2) {
        }
        try {
            sparseArray.put(2, (j0) Class.forName("com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory").asSubclass(j0.class).getConstructor(m.a.class).newInstance(aVar));
        } catch (Exception unused3) {
        }
        try {
            sparseArray.put(3, (j0) Class.forName("com.google.android.exoplayer2.source.rtsp.RtspMediaSource$Factory").asSubclass(j0.class).getConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Exception unused4) {
        }
        sparseArray.put(4, new q0.b(aVar, qVar));
        return sparseArray;
    }

    private static z k(com.google.android.exoplayer2.b1 b1Var, z zVar) {
        b1.d dVar = b1Var.f21442e;
        long j4 = dVar.f21477a;
        if (j4 == 0 && dVar.f21478b == Long.MIN_VALUE && !dVar.f21480d) {
            return zVar;
        }
        long c10 = com.google.android.exoplayer2.i.c(j4);
        long c11 = com.google.android.exoplayer2.i.c(b1Var.f21442e.f21478b);
        b1.d dVar2 = b1Var.f21442e;
        return new ClippingMediaSource(zVar, c10, c11, !dVar2.f21481e, dVar2.f21479c, dVar2.f21480d);
    }

    private z l(com.google.android.exoplayer2.b1 b1Var, z zVar) {
        com.google.android.exoplayer2.util.a.g(b1Var.f21439b);
        b1.b bVar = b1Var.f21439b.f21505d;
        if (bVar == null) {
            return zVar;
        }
        a aVar = this.f24984d;
        com.google.android.exoplayer2.ui.c cVar = this.f24985e;
        if (aVar != null && cVar != null) {
            com.google.android.exoplayer2.source.ads.e a10 = aVar.a(bVar);
            if (a10 == null) {
                com.google.android.exoplayer2.util.w.n(f24980l, "Playing media without ads, as no AdsLoader was provided.");
                return zVar;
            }
            com.google.android.exoplayer2.upstream.o oVar = new com.google.android.exoplayer2.upstream.o(bVar.f21443a);
            Object obj = bVar.f21444b;
            return new AdsMediaSource(zVar, oVar, obj != null ? obj : ImmutableList.of((Uri) b1Var.f21438a, b1Var.f21439b.f21502a, bVar.f21443a), this, a10, cVar);
        }
        com.google.android.exoplayer2.util.w.n(f24980l, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider.");
        return zVar;
    }

    @Override // com.google.android.exoplayer2.source.j0
    public z c(com.google.android.exoplayer2.b1 b1Var) {
        com.google.android.exoplayer2.util.a.g(b1Var.f21439b);
        b1.g gVar = b1Var.f21439b;
        int z02 = com.google.android.exoplayer2.util.z0.z0(gVar.f21502a, gVar.f21503b);
        j0 j0Var = this.f24982b.get(z02);
        StringBuilder sb = new StringBuilder(68);
        sb.append("No suitable media source factory found for content type: ");
        sb.append(z02);
        com.google.android.exoplayer2.util.a.h(j0Var, sb.toString());
        b1.f fVar = b1Var.f21440c;
        if ((fVar.f21497a == com.google.android.exoplayer2.i.f23649b && this.f24987g != com.google.android.exoplayer2.i.f23649b) || ((fVar.f21500d == -3.4028235E38f && this.f24990j != -3.4028235E38f) || ((fVar.f21501e == -3.4028235E38f && this.f24991k != -3.4028235E38f) || ((fVar.f21498b == com.google.android.exoplayer2.i.f23649b && this.f24988h != com.google.android.exoplayer2.i.f23649b) || (fVar.f21499c == com.google.android.exoplayer2.i.f23649b && this.f24989i != com.google.android.exoplayer2.i.f23649b))))) {
            b1.c b10 = b1Var.b();
            long j4 = b1Var.f21440c.f21497a;
            if (j4 == com.google.android.exoplayer2.i.f23649b) {
                j4 = this.f24987g;
            }
            b1.c y9 = b10.y(j4);
            float f10 = b1Var.f21440c.f21500d;
            if (f10 == -3.4028235E38f) {
                f10 = this.f24990j;
            }
            b1.c x9 = y9.x(f10);
            float f11 = b1Var.f21440c.f21501e;
            if (f11 == -3.4028235E38f) {
                f11 = this.f24991k;
            }
            b1.c v9 = x9.v(f11);
            long j10 = b1Var.f21440c.f21498b;
            if (j10 == com.google.android.exoplayer2.i.f23649b) {
                j10 = this.f24988h;
            }
            b1.c w9 = v9.w(j10);
            long j11 = b1Var.f21440c.f21499c;
            if (j11 == com.google.android.exoplayer2.i.f23649b) {
                j11 = this.f24989i;
            }
            b1Var = w9.u(j11).a();
        }
        z c10 = j0Var.c(b1Var);
        List<b1.h> list = ((b1.g) com.google.android.exoplayer2.util.z0.k(b1Var.f21439b)).f21508g;
        if (!list.isEmpty()) {
            z[] zVarArr = new z[list.size() + 1];
            int i4 = 0;
            zVarArr[0] = c10;
            d1.b c11 = new d1.b(this.f24981a).c(this.f24986f);
            while (i4 < list.size()) {
                int i10 = i4 + 1;
                zVarArr[i10] = c11.b(list.get(i4), com.google.android.exoplayer2.i.f23649b);
                i4 = i10;
            }
            c10 = new MergingMediaSource(zVarArr);
        }
        return l(b1Var, k(b1Var, c10));
    }

    @Override // com.google.android.exoplayer2.source.j0
    public int[] d() {
        int[] iArr = this.f24983c;
        return Arrays.copyOf(iArr, iArr.length);
    }

    @Override // com.google.android.exoplayer2.source.j0
    public /* synthetic */ z f(Uri uri) {
        return i0.a(this, uri);
    }

    public k m(@Nullable com.google.android.exoplayer2.ui.c cVar) {
        this.f24985e = cVar;
        return this;
    }

    public k n(@Nullable a aVar) {
        this.f24984d = aVar;
        return this;
    }

    @Override // com.google.android.exoplayer2.source.j0
    /* renamed from: o */
    public k h(@Nullable HttpDataSource.b bVar) {
        for (int i4 = 0; i4 < this.f24982b.size(); i4++) {
            this.f24982b.valueAt(i4).h(bVar);
        }
        return this;
    }

    @Override // com.google.android.exoplayer2.source.j0
    /* renamed from: p */
    public k i(@Nullable com.google.android.exoplayer2.drm.u uVar) {
        for (int i4 = 0; i4 < this.f24982b.size(); i4++) {
            this.f24982b.valueAt(i4).i(uVar);
        }
        return this;
    }

    @Override // com.google.android.exoplayer2.source.j0
    /* renamed from: q */
    public k e(@Nullable com.google.android.exoplayer2.drm.x xVar) {
        for (int i4 = 0; i4 < this.f24982b.size(); i4++) {
            this.f24982b.valueAt(i4).e(xVar);
        }
        return this;
    }

    @Override // com.google.android.exoplayer2.source.j0
    /* renamed from: r */
    public k a(@Nullable String str) {
        for (int i4 = 0; i4 < this.f24982b.size(); i4++) {
            this.f24982b.valueAt(i4).a(str);
        }
        return this;
    }

    public k s(long j4) {
        this.f24989i = j4;
        return this;
    }

    public k t(float f10) {
        this.f24991k = f10;
        return this;
    }

    public k u(long j4) {
        this.f24988h = j4;
        return this;
    }

    public k v(float f10) {
        this.f24990j = f10;
        return this;
    }

    public k w(long j4) {
        this.f24987g = j4;
        return this;
    }

    @Override // com.google.android.exoplayer2.source.j0
    /* renamed from: x */
    public k g(@Nullable com.google.android.exoplayer2.upstream.f0 f0Var) {
        this.f24986f = f0Var;
        for (int i4 = 0; i4 < this.f24982b.size(); i4++) {
            this.f24982b.valueAt(i4).g(f0Var);
        }
        return this;
    }

    @Override // com.google.android.exoplayer2.source.j0
    @Deprecated
    /* renamed from: y */
    public k b(@Nullable List<StreamKey> list) {
        for (int i4 = 0; i4 < this.f24982b.size(); i4++) {
            this.f24982b.valueAt(i4).b(list);
        }
        return this;
    }

    public k(Context context, com.google.android.exoplayer2.extractor.q qVar) {
        this(new com.google.android.exoplayer2.upstream.t(context), qVar);
    }

    public k(m.a aVar) {
        this(aVar, new com.google.android.exoplayer2.extractor.h());
    }

    public k(m.a aVar, com.google.android.exoplayer2.extractor.q qVar) {
        this.f24981a = aVar;
        SparseArray<j0> j4 = j(aVar, qVar);
        this.f24982b = j4;
        this.f24983c = new int[j4.size()];
        for (int i4 = 0; i4 < this.f24982b.size(); i4++) {
            this.f24983c[i4] = this.f24982b.keyAt(i4);
        }
        this.f24987g = com.google.android.exoplayer2.i.f23649b;
        this.f24988h = com.google.android.exoplayer2.i.f23649b;
        this.f24989i = com.google.android.exoplayer2.i.f23649b;
        this.f24990j = -3.4028235E38f;
        this.f24991k = -3.4028235E38f;
    }
}
