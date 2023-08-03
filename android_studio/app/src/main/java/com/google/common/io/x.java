package com.google.common.io;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: MultiInputStream.java */
@h3.c
/* loaded from: classes2.dex */
final class x extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private Iterator<? extends f> f34518a;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    private InputStream f34519b;

    public x(Iterator<? extends f> it) throws IOException {
        this.f34518a = (Iterator) com.google.common.base.a0.E(it);
        a();
    }

    private void a() throws IOException {
        close();
        if (this.f34518a.hasNext()) {
            this.f34519b = this.f34518a.next().m();
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        InputStream inputStream = this.f34519b;
        if (inputStream == null) {
            return 0;
        }
        return inputStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.f34519b;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f34519b = null;
            }
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        while (true) {
            InputStream inputStream = this.f34519b;
            if (inputStream == null) {
                return -1;
            }
            int read = inputStream.read();
            if (read != -1) {
                return read;
            }
            a();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j4) throws IOException {
        InputStream inputStream = this.f34519b;
        if (inputStream == null || j4 <= 0) {
            return 0L;
        }
        long skip = inputStream.skip(j4);
        if (skip != 0) {
            return skip;
        }
        if (read() == -1) {
            return 0L;
        }
        return this.f34519b.skip(j4 - 1) + 1;
    }

    @Override // java.io.InputStream
    public int read(@NullableDecl byte[] bArr, int i4, int i10) throws IOException {
        while (true) {
            InputStream inputStream = this.f34519b;
            if (inputStream == null) {
                return -1;
            }
            int read = inputStream.read(bArr, i4, i10);
            if (read != -1) {
                return read;
            }
            a();
        }
    }
}
