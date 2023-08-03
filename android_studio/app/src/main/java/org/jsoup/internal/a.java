package org.jsoup.internal;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;

/* compiled from: ConstrainableInputStream.java */
/* loaded from: classes5.dex */
public final class a extends BufferedInputStream {

    /* renamed from: g  reason: collision with root package name */
    private static final int f91791g = 32768;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f91792a;

    /* renamed from: b  reason: collision with root package name */
    private final int f91793b;

    /* renamed from: c  reason: collision with root package name */
    private long f91794c;

    /* renamed from: d  reason: collision with root package name */
    private long f91795d;

    /* renamed from: e  reason: collision with root package name */
    private int f91796e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f91797f;

    private a(InputStream inputStream, int i4, int i10) {
        super(inputStream, i4);
        this.f91795d = 0L;
        org.jsoup.helper.d.d(i10 >= 0);
        this.f91793b = i10;
        this.f91796e = i10;
        this.f91792a = i10 != 0;
        this.f91794c = System.nanoTime();
    }

    private boolean a() {
        return this.f91795d != 0 && System.nanoTime() - this.f91794c > this.f91795d;
    }

    public static a h(InputStream inputStream, int i4, int i10) {
        if (inputStream instanceof a) {
            return (a) inputStream;
        }
        return new a(inputStream, i4, i10);
    }

    public ByteBuffer b(int i4) throws IOException {
        org.jsoup.helper.d.e(i4 >= 0, "maxSize must be 0 (unlimited) or larger");
        boolean z9 = i4 > 0;
        int i10 = 32768;
        if (z9 && i4 < 32768) {
            i10 = i4;
        }
        byte[] bArr = new byte[i10];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i10);
        while (true) {
            int read = read(bArr);
            if (read == -1) {
                break;
            }
            if (z9) {
                if (read >= i4) {
                    byteArrayOutputStream.write(bArr, 0, i4);
                    break;
                }
                i4 -= read;
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
        return ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
    }

    public a d(long j4, long j10) {
        this.f91794c = j4;
        this.f91795d = j10 * 1000000;
        return this;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i4, int i10) throws IOException {
        int i11;
        if (this.f91797f || (this.f91792a && this.f91796e <= 0)) {
            return -1;
        }
        if (Thread.interrupted()) {
            this.f91797f = true;
            return -1;
        } else if (!a()) {
            if (this.f91792a && i10 > (i11 = this.f91796e)) {
                i10 = i11;
            }
            try {
                int read = super.read(bArr, i4, i10);
                this.f91796e -= read;
                return read;
            } catch (SocketTimeoutException unused) {
                return 0;
            }
        } else {
            throw new SocketTimeoutException("Read timeout");
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        this.f91796e = this.f91793b - ((BufferedInputStream) this).markpos;
    }
}
