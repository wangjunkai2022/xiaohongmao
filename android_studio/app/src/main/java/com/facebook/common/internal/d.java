package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: CountingOutputStream.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d extends FilterOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private long f10976a;

    public d(OutputStream out) {
        super(out);
        this.f10976a = 0L;
    }

    public long a() {
        return this.f10976a;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterOutputStream) this).out.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] b10, int off, int len) throws IOException {
        ((FilterOutputStream) this).out.write(b10, off, len);
        this.f10976a += len;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int b10) throws IOException {
        ((FilterOutputStream) this).out.write(b10);
        this.f10976a++;
    }
}
