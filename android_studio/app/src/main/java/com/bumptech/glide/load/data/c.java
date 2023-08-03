package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: BufferedOutputStream.java */
/* loaded from: classes.dex */
public final class c extends OutputStream {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final OutputStream f8535a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f8536b;

    /* renamed from: c  reason: collision with root package name */
    private com.bumptech.glide.load.engine.bitmap_recycle.b f8537c;

    /* renamed from: d  reason: collision with root package name */
    private int f8538d;

    public c(@NonNull OutputStream outputStream, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this(outputStream, bVar, 65536);
    }

    private void a() throws IOException {
        int i4 = this.f8538d;
        if (i4 > 0) {
            this.f8535a.write(this.f8536b, 0, i4);
            this.f8538d = 0;
        }
    }

    private void b() throws IOException {
        if (this.f8538d == this.f8536b.length) {
            a();
        }
    }

    private void release() {
        byte[] bArr = this.f8536b;
        if (bArr != null) {
            this.f8537c.put(bArr);
            this.f8536b = null;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            this.f8535a.close();
            release();
        } catch (Throwable th) {
            this.f8535a.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        a();
        this.f8535a.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i4) throws IOException {
        byte[] bArr = this.f8536b;
        int i10 = this.f8538d;
        this.f8538d = i10 + 1;
        bArr[i10] = (byte) i4;
        b();
    }

    @VisibleForTesting
    c(@NonNull OutputStream outputStream, com.bumptech.glide.load.engine.bitmap_recycle.b bVar, int i4) {
        this.f8535a = outputStream;
        this.f8537c = bVar;
        this.f8536b = (byte[]) bVar.c(i4, byte[].class);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i4, int i10) throws IOException {
        int i11 = 0;
        do {
            int i12 = i10 - i11;
            int i13 = i4 + i11;
            int i14 = this.f8538d;
            if (i14 == 0 && i12 >= this.f8536b.length) {
                this.f8535a.write(bArr, i13, i12);
                return;
            }
            int min = Math.min(i12, this.f8536b.length - i14);
            System.arraycopy(bArr, i13, this.f8536b, this.f8538d, min);
            this.f8538d += min;
            i11 += min;
            b();
        } while (i11 < i10);
    }
}
