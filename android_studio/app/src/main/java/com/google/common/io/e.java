package com.google.common.io;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;

/* compiled from: ByteSink.java */
@h3.c
/* loaded from: classes2.dex */
public abstract class e {

    /* compiled from: ByteSink.java */
    /* loaded from: classes2.dex */
    private final class b extends i {

        /* renamed from: a  reason: collision with root package name */
        private final Charset f34444a;

        @Override // com.google.common.io.i
        public Writer b() throws IOException {
            return new OutputStreamWriter(e.this.c(), this.f34444a);
        }

        public String toString() {
            return e.this.toString() + ".asCharSink(" + this.f34444a + ")";
        }

        private b(Charset charset) {
            this.f34444a = (Charset) com.google.common.base.a0.E(charset);
        }
    }

    public i a(Charset charset) {
        return new b(charset);
    }

    public OutputStream b() throws IOException {
        OutputStream c10 = c();
        return c10 instanceof BufferedOutputStream ? (BufferedOutputStream) c10 : new BufferedOutputStream(c10);
    }

    public abstract OutputStream c() throws IOException;

    public void d(byte[] bArr) throws IOException {
        com.google.common.base.a0.E(bArr);
        try {
            OutputStream outputStream = (OutputStream) m.a().b(c());
            outputStream.write(bArr);
            outputStream.flush();
        } finally {
        }
    }

    @CanIgnoreReturnValue
    public long e(InputStream inputStream) throws IOException {
        com.google.common.base.a0.E(inputStream);
        try {
            OutputStream outputStream = (OutputStream) m.a().b(c());
            long b10 = g.b(inputStream, outputStream);
            outputStream.flush();
            return b10;
        } finally {
        }
    }
}
