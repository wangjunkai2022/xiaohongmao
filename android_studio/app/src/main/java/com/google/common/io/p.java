package com.google.common.io;

import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: FileBackedOutputStream.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class p extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final int f34490a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f34491b;

    /* renamed from: c  reason: collision with root package name */
    private final f f34492c;

    /* renamed from: d  reason: collision with root package name */
    private OutputStream f34493d;

    /* renamed from: e  reason: collision with root package name */
    private c f34494e;
    @NullableDecl

    /* renamed from: f  reason: collision with root package name */
    private File f34495f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FileBackedOutputStream.java */
    /* loaded from: classes2.dex */
    public class a extends f {
        a() {
        }

        protected void finalize() {
            try {
                p.this.i();
            } catch (Throwable th) {
                th.printStackTrace(System.err);
            }
        }

        @Override // com.google.common.io.f
        public InputStream m() throws IOException {
            return p.this.h();
        }
    }

    /* compiled from: FileBackedOutputStream.java */
    /* loaded from: classes2.dex */
    class b extends f {
        b() {
        }

        @Override // com.google.common.io.f
        public InputStream m() throws IOException {
            return p.this.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileBackedOutputStream.java */
    /* loaded from: classes2.dex */
    public static class c extends ByteArrayOutputStream {
        private c() {
        }

        byte[] a() {
            return ((ByteArrayOutputStream) this).buf;
        }

        int getCount() {
            return ((ByteArrayOutputStream) this).count;
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }

    public p(int i4) {
        this(i4, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized InputStream h() throws IOException {
        if (this.f34495f != null) {
            File file = this.f34495f;
            return h.b.a(new FileInputStream(file), file);
        }
        return new ByteArrayInputStream(this.f34494e.a(), 0, this.f34494e.getCount());
    }

    private void k(int i4) throws IOException {
        if (this.f34495f != null || this.f34494e.getCount() + i4 <= this.f34490a) {
            return;
        }
        File createTempFile = File.createTempFile("FileBackedOutputStream", null);
        if (this.f34491b) {
            createTempFile.deleteOnExit();
        }
        FileOutputStream a10 = l.b.a(new FileOutputStream(createTempFile), createTempFile);
        a10.write(this.f34494e.a(), 0, this.f34494e.getCount());
        a10.flush();
        this.f34493d = a10;
        this.f34495f = createTempFile;
        this.f34494e = null;
    }

    public f b() {
        return this.f34492c;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f34493d.close();
    }

    @h3.d
    synchronized File d() {
        return this.f34495f;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public synchronized void flush() throws IOException {
        this.f34493d.flush();
    }

    public synchronized void i() throws IOException {
        close();
        c cVar = this.f34494e;
        if (cVar == null) {
            this.f34494e = new c(null);
        } else {
            cVar.reset();
        }
        this.f34493d = this.f34494e;
        File file = this.f34495f;
        if (file != null) {
            this.f34495f = null;
            if (!file.delete()) {
                throw new IOException("Could not delete: " + file);
            }
        }
    }

    @Override // java.io.OutputStream
    public synchronized void write(int i4) throws IOException {
        k(1);
        this.f34493d.write(i4);
    }

    public p(int i4, boolean z9) {
        this.f34490a = i4;
        this.f34491b = z9;
        c cVar = new c(null);
        this.f34494e = cVar;
        this.f34493d = cVar;
        if (z9) {
            this.f34492c = new a();
        } else {
            this.f34492c = new b();
        }
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr, int i4, int i10) throws IOException {
        k(i10);
        this.f34493d.write(bArr, i4, i10);
    }
}
