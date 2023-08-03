package com.google.android.exoplayer2.source.chunk;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: DataChunk.java */
/* loaded from: classes2.dex */
public abstract class l extends f {

    /* renamed from: l  reason: collision with root package name */
    private static final int f24865l = 16384;

    /* renamed from: j  reason: collision with root package name */
    private byte[] f24866j;

    /* renamed from: k  reason: collision with root package name */
    private volatile boolean f24867k;

    public l(com.google.android.exoplayer2.upstream.m mVar, com.google.android.exoplayer2.upstream.o oVar, int i4, Format format, int i10, @Nullable Object obj, @Nullable byte[] bArr) {
        super(mVar, oVar, i4, format, i10, obj, com.google.android.exoplayer2.i.f23649b, com.google.android.exoplayer2.i.f23649b);
        l lVar;
        byte[] bArr2;
        if (bArr == null) {
            bArr2 = z0.f27748f;
            lVar = this;
        } else {
            lVar = this;
            bArr2 = bArr;
        }
        lVar.f24866j = bArr2;
    }

    private void i(int i4) {
        byte[] bArr = this.f24866j;
        if (bArr.length < i4 + 16384) {
            this.f24866j = Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public final void a() throws IOException {
        try {
            this.f24827i.a(this.f24820b);
            int i4 = 0;
            int i10 = 0;
            while (i4 != -1 && !this.f24867k) {
                i(i10);
                i4 = this.f24827i.read(this.f24866j, i10, 16384);
                if (i4 != -1) {
                    i10 += i4;
                }
            }
            if (!this.f24867k) {
                g(this.f24866j, i10);
            }
        } finally {
            z0.p(this.f24827i);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public final void c() {
        this.f24867k = true;
    }

    protected abstract void g(byte[] bArr, int i4) throws IOException;

    public byte[] h() {
        return this.f24866j;
    }
}
