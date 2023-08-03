package com.google.android.exoplayer2.upstream;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: DataSourceInputStream.java */
/* loaded from: classes2.dex */
public final class n extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final m f27271a;

    /* renamed from: b  reason: collision with root package name */
    private final o f27272b;

    /* renamed from: f  reason: collision with root package name */
    private long f27276f;

    /* renamed from: d  reason: collision with root package name */
    private boolean f27274d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f27275e = false;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f27273c = new byte[1];

    public n(m mVar, o oVar) {
        this.f27271a = mVar;
        this.f27272b = oVar;
    }

    private void b() throws IOException {
        if (this.f27274d) {
            return;
        }
        this.f27271a.a(this.f27272b);
        this.f27274d = true;
    }

    public long a() {
        return this.f27276f;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f27275e) {
            return;
        }
        this.f27271a.close();
        this.f27275e = true;
    }

    public void d() throws IOException {
        b();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f27273c) == -1) {
            return -1;
        }
        return this.f27273c[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        com.google.android.exoplayer2.util.a.i(!this.f27275e);
        b();
        int read = this.f27271a.read(bArr, i4, i10);
        if (read == -1) {
            return -1;
        }
        this.f27276f += read;
        return read;
    }
}
