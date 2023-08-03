package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.z0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* compiled from: ByteArrayDataSink.java */
/* loaded from: classes2.dex */
public final class g implements k {

    /* renamed from: a  reason: collision with root package name */
    private ByteArrayOutputStream f27239a;

    @Override // com.google.android.exoplayer2.upstream.k
    public void a(o oVar) {
        long j4 = oVar.f27295h;
        if (j4 == -1) {
            this.f27239a = new ByteArrayOutputStream();
            return;
        }
        com.google.android.exoplayer2.util.a.a(j4 <= 2147483647L);
        this.f27239a = new ByteArrayOutputStream((int) oVar.f27295h);
    }

    @Nullable
    public byte[] b() {
        ByteArrayOutputStream byteArrayOutputStream = this.f27239a;
        if (byteArrayOutputStream == null) {
            return null;
        }
        return byteArrayOutputStream.toByteArray();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() throws IOException {
        ((ByteArrayOutputStream) z0.k(this.f27239a)).close();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void write(byte[] bArr, int i4, int i10) {
        ((ByteArrayOutputStream) z0.k(this.f27239a)).write(bArr, i4, i10);
    }
}
