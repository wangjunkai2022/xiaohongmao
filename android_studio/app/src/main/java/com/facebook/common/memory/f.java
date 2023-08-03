package com.facebook.common.memory;

import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: PooledByteArrayBufferedInputStream.java */
@s7.c
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class f extends InputStream {

    /* renamed from: g  reason: collision with root package name */
    private static final String f10990g = "PooledByteInputStream";

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f10991a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f10992b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.common.references.h<byte[]> f10993c;

    /* renamed from: d  reason: collision with root package name */
    private int f10994d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f10995e = 0;

    /* renamed from: f  reason: collision with root package name */
    private boolean f10996f = false;

    public f(InputStream inputStream, byte[] byteArray, com.facebook.common.references.h<byte[]> resourceReleaser) {
        this.f10991a = (InputStream) com.facebook.common.internal.j.i(inputStream);
        this.f10992b = (byte[]) com.facebook.common.internal.j.i(byteArray);
        this.f10993c = (com.facebook.common.references.h) com.facebook.common.internal.j.i(resourceReleaser);
    }

    private boolean a() throws IOException {
        if (this.f10995e < this.f10994d) {
            return true;
        }
        int read = this.f10991a.read(this.f10992b);
        if (read <= 0) {
            return false;
        }
        this.f10994d = read;
        this.f10995e = 0;
        return true;
    }

    private void b() throws IOException {
        if (this.f10996f) {
            throw new IOException("stream already closed");
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        com.facebook.common.internal.j.o(this.f10995e <= this.f10994d);
        b();
        return (this.f10994d - this.f10995e) + this.f10991a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f10996f) {
            return;
        }
        this.f10996f = true;
        this.f10993c.release(this.f10992b);
        super.close();
    }

    protected void finalize() throws Throwable {
        if (!this.f10996f) {
            p0.a.u(f10990g, "Finalized without closing");
            close();
        }
        super.finalize();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        com.facebook.common.internal.j.o(this.f10995e <= this.f10994d);
        b();
        if (a()) {
            byte[] bArr = this.f10992b;
            int i4 = this.f10995e;
            this.f10995e = i4 + 1;
            return bArr[i4] & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public long skip(long byteCount) throws IOException {
        com.facebook.common.internal.j.o(this.f10995e <= this.f10994d);
        b();
        int i4 = this.f10994d;
        int i10 = this.f10995e;
        long j4 = i4 - i10;
        if (j4 >= byteCount) {
            this.f10995e = (int) (i10 + byteCount);
            return byteCount;
        }
        this.f10995e = i4;
        return j4 + this.f10991a.skip(byteCount - j4);
    }

    @Override // java.io.InputStream
    public int read(byte[] buffer, int offset, int length) throws IOException {
        com.facebook.common.internal.j.o(this.f10995e <= this.f10994d);
        b();
        if (a()) {
            int min = Math.min(this.f10994d - this.f10995e, length);
            System.arraycopy(this.f10992b, this.f10995e, buffer, offset, min);
            this.f10995e += min;
            return min;
        }
        return -1;
    }
}
