package com.google.android.play.core.assetpacks;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class r0 extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f31549a;

    /* renamed from: b  reason: collision with root package name */
    private long f31550b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r0(InputStream inputStream, long j4) {
        this.f31549a = inputStream;
        this.f31550b = j4;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.f31549a.close();
        this.f31550b = 0L;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        long j4 = this.f31550b;
        if (j4 <= 0) {
            return -1;
        }
        this.f31550b = j4 - 1;
        return this.f31549a.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i4, int i10) throws IOException {
        long j4 = this.f31550b;
        if (j4 <= 0) {
            return -1;
        }
        int read = this.f31549a.read(bArr, i4, (int) Math.min(i10, j4));
        if (read != -1) {
            this.f31550b -= read;
        }
        return read;
    }
}
