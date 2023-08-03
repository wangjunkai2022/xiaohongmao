package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.u;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: DefaultDataSource.java */
/* loaded from: classes2.dex */
public final class s implements m {

    /* renamed from: m  reason: collision with root package name */
    private static final String f27350m = "DefaultDataSource";

    /* renamed from: n  reason: collision with root package name */
    private static final String f27351n = "asset";

    /* renamed from: o  reason: collision with root package name */
    private static final String f27352o = "content";

    /* renamed from: p  reason: collision with root package name */
    private static final String f27353p = "rtmp";

    /* renamed from: q  reason: collision with root package name */
    private static final String f27354q = "udp";

    /* renamed from: r  reason: collision with root package name */
    private static final String f27355r = "data";

    /* renamed from: s  reason: collision with root package name */
    private static final String f27356s = "rawresource";

    /* renamed from: t  reason: collision with root package name */
    private static final String f27357t = "android.resource";

    /* renamed from: b  reason: collision with root package name */
    private final Context f27358b;

    /* renamed from: c  reason: collision with root package name */
    private final List<p0> f27359c;

    /* renamed from: d  reason: collision with root package name */
    private final m f27360d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private m f27361e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private m f27362f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private m f27363g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private m f27364h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private m f27365i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private m f27366j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private m f27367k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private m f27368l;

    public s(Context context, boolean z9) {
        this(context, null, 8000, 8000, z9);
    }

    private m A() {
        if (this.f27365i == null) {
            UdpDataSource udpDataSource = new UdpDataSource();
            this.f27365i = udpDataSource;
            t(udpDataSource);
        }
        return this.f27365i;
    }

    private void B(@Nullable m mVar, p0 p0Var) {
        if (mVar != null) {
            mVar.e(p0Var);
        }
    }

    private void t(m mVar) {
        for (int i4 = 0; i4 < this.f27359c.size(); i4++) {
            mVar.e(this.f27359c.get(i4));
        }
    }

    private m u() {
        if (this.f27362f == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f27358b);
            this.f27362f = assetDataSource;
            t(assetDataSource);
        }
        return this.f27362f;
    }

    private m v() {
        if (this.f27363g == null) {
            ContentDataSource contentDataSource = new ContentDataSource(this.f27358b);
            this.f27363g = contentDataSource;
            t(contentDataSource);
        }
        return this.f27363g;
    }

    private m w() {
        if (this.f27366j == null) {
            j jVar = new j();
            this.f27366j = jVar;
            t(jVar);
        }
        return this.f27366j;
    }

    private m x() {
        if (this.f27361e == null) {
            FileDataSource fileDataSource = new FileDataSource();
            this.f27361e = fileDataSource;
            t(fileDataSource);
        }
        return this.f27361e;
    }

    private m y() {
        if (this.f27367k == null) {
            RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f27358b);
            this.f27367k = rawResourceDataSource;
            t(rawResourceDataSource);
        }
        return this.f27367k;
    }

    private m z() {
        if (this.f27364h == null) {
            try {
                m mVar = (m) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.f27364h = mVar;
                t(mVar);
            } catch (ClassNotFoundException unused) {
                com.google.android.exoplayer2.util.w.n(f27350m, "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e4) {
                throw new RuntimeException("Error instantiating RTMP extension", e4);
            }
            if (this.f27364h == null) {
                this.f27364h = this.f27360d;
            }
        }
        return this.f27364h;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws IOException {
        com.google.android.exoplayer2.util.a.i(this.f27368l == null);
        String scheme = oVar.f27288a.getScheme();
        if (z0.E0(oVar.f27288a)) {
            String path = oVar.f27288a.getPath();
            if (path != null && path.startsWith("/android_asset/")) {
                this.f27368l = u();
            } else {
                this.f27368l = x();
            }
        } else if ("asset".equals(scheme)) {
            this.f27368l = u();
        } else if ("content".equals(scheme)) {
            this.f27368l = v();
        } else if (f27353p.equals(scheme)) {
            this.f27368l = z();
        } else if (f27354q.equals(scheme)) {
            this.f27368l = A();
        } else if ("data".equals(scheme)) {
            this.f27368l = w();
        } else if (!"rawresource".equals(scheme) && !"android.resource".equals(scheme)) {
            this.f27368l = this.f27360d;
        } else {
            this.f27368l = y();
        }
        return this.f27368l.a(oVar);
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public Map<String, List<String>> b() {
        m mVar = this.f27368l;
        return mVar == null ? Collections.emptyMap() : mVar.b();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        m mVar = this.f27368l;
        if (mVar == null) {
            return null;
        }
        return mVar.c();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() throws IOException {
        m mVar = this.f27368l;
        if (mVar != null) {
            try {
                mVar.close();
            } finally {
                this.f27368l = null;
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void e(p0 p0Var) {
        com.google.android.exoplayer2.util.a.g(p0Var);
        this.f27360d.e(p0Var);
        this.f27359c.add(p0Var);
        B(this.f27361e, p0Var);
        B(this.f27362f, p0Var);
        B(this.f27363g, p0Var);
        B(this.f27364h, p0Var);
        B(this.f27365i, p0Var);
        B(this.f27366j, p0Var);
        B(this.f27367k, p0Var);
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        return ((m) com.google.android.exoplayer2.util.a.g(this.f27368l)).read(bArr, i4, i10);
    }

    public s(Context context, @Nullable String str, boolean z9) {
        this(context, str, 8000, 8000, z9);
    }

    public s(Context context, @Nullable String str, int i4, int i10, boolean z9) {
        this(context, new u.b().k(str).f(i4).i(i10).e(z9).a());
    }

    public s(Context context, m mVar) {
        this.f27358b = context.getApplicationContext();
        this.f27360d = (m) com.google.android.exoplayer2.util.a.g(mVar);
        this.f27359c = new ArrayList();
    }
}
