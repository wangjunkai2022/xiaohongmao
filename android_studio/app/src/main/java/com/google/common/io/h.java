package com.google.common.io;

import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;

/* compiled from: CharSequenceReader.java */
@h3.c
/* loaded from: classes2.dex */
final class h extends Reader {

    /* renamed from: a  reason: collision with root package name */
    private CharSequence f34466a;

    /* renamed from: b  reason: collision with root package name */
    private int f34467b;

    /* renamed from: c  reason: collision with root package name */
    private int f34468c;

    public h(CharSequence charSequence) {
        this.f34466a = (CharSequence) com.google.common.base.a0.E(charSequence);
    }

    private void a() throws IOException {
        if (this.f34466a == null) {
            throw new IOException("reader closed");
        }
    }

    private boolean b() {
        return d() > 0;
    }

    private int d() {
        return this.f34466a.length() - this.f34467b;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f34466a = null;
    }

    @Override // java.io.Reader
    public synchronized void mark(int i4) throws IOException {
        com.google.common.base.a0.k(i4 >= 0, "readAheadLimit (%s) may not be negative", i4);
        a();
        this.f34468c = this.f34467b;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader, java.lang.Readable
    public synchronized int read(CharBuffer charBuffer) throws IOException {
        com.google.common.base.a0.E(charBuffer);
        a();
        if (b()) {
            int min = Math.min(charBuffer.remaining(), d());
            for (int i4 = 0; i4 < min; i4++) {
                CharSequence charSequence = this.f34466a;
                int i10 = this.f34467b;
                this.f34467b = i10 + 1;
                charBuffer.put(charSequence.charAt(i10));
            }
            return min;
        }
        return -1;
    }

    @Override // java.io.Reader
    public synchronized boolean ready() throws IOException {
        a();
        return true;
    }

    @Override // java.io.Reader
    public synchronized void reset() throws IOException {
        a();
        this.f34467b = this.f34468c;
    }

    @Override // java.io.Reader
    public synchronized long skip(long j4) throws IOException {
        int min;
        com.google.common.base.a0.p(j4 >= 0, "n (%s) may not be negative", j4);
        a();
        min = (int) Math.min(d(), j4);
        this.f34467b += min;
        return min;
    }

    @Override // java.io.Reader
    public synchronized int read() throws IOException {
        char c10;
        a();
        if (b()) {
            CharSequence charSequence = this.f34466a;
            int i4 = this.f34467b;
            this.f34467b = i4 + 1;
            c10 = charSequence.charAt(i4);
        } else {
            c10 = 65535;
        }
        return c10;
    }

    @Override // java.io.Reader
    public synchronized int read(char[] cArr, int i4, int i10) throws IOException {
        com.google.common.base.a0.f0(i4, i4 + i10, cArr.length);
        a();
        if (b()) {
            int min = Math.min(i10, d());
            for (int i11 = 0; i11 < min; i11++) {
                CharSequence charSequence = this.f34466a;
                int i12 = this.f34467b;
                this.f34467b = i12 + 1;
                cArr[i4 + i11] = charSequence.charAt(i12);
            }
            return min;
        }
        return -1;
    }
}
