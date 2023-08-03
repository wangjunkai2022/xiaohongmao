package com.google.android.exoplayer2.upstream.crypto;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.o;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;

/* compiled from: AesCipherDataSink.java */
/* loaded from: classes2.dex */
public final class a implements k {

    /* renamed from: a  reason: collision with root package name */
    private final k f27208a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f27209b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f27210c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private c f27211d;

    public a(byte[] bArr, k kVar) {
        this(bArr, kVar, null);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void a(o oVar) throws IOException {
        this.f27208a.a(oVar);
        long a10 = d.a(oVar.f27296i);
        this.f27211d = new c(1, this.f27209b, a10, oVar.f27294g + oVar.f27289b);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() throws IOException {
        this.f27211d = null;
        this.f27208a.close();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void write(byte[] bArr, int i4, int i10) throws IOException {
        if (this.f27210c == null) {
            ((c) z0.k(this.f27211d)).d(bArr, i4, i10);
            this.f27208a.write(bArr, i4, i10);
            return;
        }
        int i11 = 0;
        while (i11 < i10) {
            int min = Math.min(i10 - i11, this.f27210c.length);
            ((c) z0.k(this.f27211d)).c(bArr, i4 + i11, min, this.f27210c, 0);
            this.f27208a.write(this.f27210c, 0, min);
            i11 += min;
        }
    }

    public a(byte[] bArr, k kVar, @Nullable byte[] bArr2) {
        this.f27208a = kVar;
        this.f27209b = bArr;
        this.f27210c = bArr2;
    }
}
