package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: IcyDataSource.java */
/* loaded from: classes2.dex */
final class n implements com.google.android.exoplayer2.upstream.m {

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.m f25047b;

    /* renamed from: c  reason: collision with root package name */
    private final int f25048c;

    /* renamed from: d  reason: collision with root package name */
    private final a f25049d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f25050e;

    /* renamed from: f  reason: collision with root package name */
    private int f25051f;

    /* compiled from: IcyDataSource.java */
    /* loaded from: classes2.dex */
    public interface a {
        void b(com.google.android.exoplayer2.util.h0 h0Var);
    }

    public n(com.google.android.exoplayer2.upstream.m mVar, int i4, a aVar) {
        com.google.android.exoplayer2.util.a.a(i4 > 0);
        this.f25047b = mVar;
        this.f25048c = i4;
        this.f25049d = aVar;
        this.f25050e = new byte[1];
        this.f25051f = i4;
    }

    private boolean t() throws IOException {
        if (this.f25047b.read(this.f25050e, 0, 1) == -1) {
            return false;
        }
        int i4 = (this.f25050e[0] & 255) << 4;
        if (i4 == 0) {
            return true;
        }
        byte[] bArr = new byte[i4];
        int i10 = i4;
        int i11 = 0;
        while (i10 > 0) {
            int read = this.f25047b.read(bArr, i11, i10);
            if (read == -1) {
                return false;
            }
            i11 += read;
            i10 -= read;
        }
        while (i4 > 0 && bArr[i4 - 1] == 0) {
            i4--;
        }
        if (i4 > 0) {
            this.f25049d.b(new com.google.android.exoplayer2.util.h0(bArr, i4));
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(com.google.android.exoplayer2.upstream.o oVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public Map<String, List<String>> b() {
        return this.f25047b.b();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        return this.f25047b.c();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void e(com.google.android.exoplayer2.upstream.p0 p0Var) {
        com.google.android.exoplayer2.util.a.g(p0Var);
        this.f25047b.e(p0Var);
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        if (this.f25051f == 0) {
            if (!t()) {
                return -1;
            }
            this.f25051f = this.f25048c;
        }
        int read = this.f25047b.read(bArr, i4, Math.min(this.f25051f, i10));
        if (read != -1) {
            this.f25051f -= read;
        }
        return read;
    }
}
