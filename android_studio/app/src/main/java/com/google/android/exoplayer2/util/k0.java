package com.google.android.exoplayer2.util;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: ReusableBufferedOutputStream.java */
/* loaded from: classes2.dex */
public final class k0 extends BufferedOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private boolean f27569a;

    public k0(OutputStream outputStream) {
        super(outputStream);
    }

    public void a(OutputStream outputStream) {
        a.i(this.f27569a);
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.f27569a = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f27569a = true;
        try {
            flush();
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            ((BufferedOutputStream) this).out.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        if (th != null) {
            z0.j1(th);
        }
    }

    public k0(OutputStream outputStream, int i4) {
        super(outputStream, i4);
    }
}
