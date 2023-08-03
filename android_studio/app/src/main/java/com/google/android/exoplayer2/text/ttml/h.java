package com.google.android.exoplayer2.text.ttml;

import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.util.z0;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: TtmlSubtitle.java */
/* loaded from: classes2.dex */
final class h implements com.google.android.exoplayer2.text.e {

    /* renamed from: a  reason: collision with root package name */
    private final d f25798a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f25799b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, g> f25800c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, e> f25801d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, String> f25802e;

    public h(d dVar, Map<String, g> map, Map<String, e> map2, Map<String, String> map3) {
        this.f25798a = dVar;
        this.f25801d = map2;
        this.f25802e = map3;
        this.f25800c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f25799b = dVar.j();
    }

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j4) {
        int f10 = z0.f(this.f25799b, j4, false, false);
        if (f10 < this.f25799b.length) {
            return f10;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<com.google.android.exoplayer2.text.a> b(long j4) {
        return this.f25798a.h(j4, this.f25800c, this.f25801d, this.f25802e);
    }

    @Override // com.google.android.exoplayer2.text.e
    public long c(int i4) {
        return this.f25799b[i4];
    }

    @Override // com.google.android.exoplayer2.text.e
    public int d() {
        return this.f25799b.length;
    }

    @VisibleForTesting
    Map<String, g> e() {
        return this.f25800c;
    }

    @VisibleForTesting
    d f() {
        return this.f25798a;
    }
}
