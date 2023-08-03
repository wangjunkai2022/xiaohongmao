package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;

/* compiled from: ByteArrayDataSource.java */
/* loaded from: classes2.dex */
public final class h extends f {

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f27240f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Uri f27241g;

    /* renamed from: h  reason: collision with root package name */
    private int f27242h;

    /* renamed from: i  reason: collision with root package name */
    private int f27243i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f27244j;

    public h(byte[] bArr) {
        super(false);
        com.google.android.exoplayer2.util.a.g(bArr);
        com.google.android.exoplayer2.util.a.a(bArr.length > 0);
        this.f27240f = bArr;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws IOException {
        this.f27241g = oVar.f27288a;
        v(oVar);
        long j4 = oVar.f27294g;
        byte[] bArr = this.f27240f;
        if (j4 <= bArr.length) {
            this.f27242h = (int) j4;
            int length = bArr.length - ((int) j4);
            this.f27243i = length;
            long j10 = oVar.f27295h;
            if (j10 != -1) {
                this.f27243i = (int) Math.min(length, j10);
            }
            this.f27244j = true;
            w(oVar);
            long j11 = oVar.f27295h;
            return j11 != -1 ? j11 : this.f27243i;
        }
        throw new DataSourceException(0);
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        return this.f27241g;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() {
        if (this.f27244j) {
            this.f27244j = false;
            u();
        }
        this.f27241g = null;
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) {
        if (i10 == 0) {
            return 0;
        }
        int i11 = this.f27243i;
        if (i11 == 0) {
            return -1;
        }
        int min = Math.min(i10, i11);
        System.arraycopy(this.f27240f, this.f27242h, bArr, i4, min);
        this.f27242h += min;
        this.f27243i -= min;
        t(min);
        return min;
    }
}
