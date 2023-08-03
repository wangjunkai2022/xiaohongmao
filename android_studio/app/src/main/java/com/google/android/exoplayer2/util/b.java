package com.google.android.exoplayer2.util;

import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: AtomicFile.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    private static final String f27488c = "AtomicFile";

    /* renamed from: a  reason: collision with root package name */
    private final File f27489a;

    /* renamed from: b  reason: collision with root package name */
    private final File f27490b;

    /* compiled from: AtomicFile.java */
    /* loaded from: classes2.dex */
    private static final class a extends OutputStream {

        /* renamed from: a  reason: collision with root package name */
        private final FileOutputStream f27491a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f27492b = false;

        public a(File file) throws FileNotFoundException {
            this.f27491a = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f27492b) {
                return;
            }
            this.f27492b = true;
            flush();
            try {
                this.f27491a.getFD().sync();
            } catch (IOException e4) {
                w.o(b.f27488c, "Failed to sync file descriptor:", e4);
            }
            this.f27491a.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.f27491a.flush();
        }

        @Override // java.io.OutputStream
        public void write(int i4) throws IOException {
            this.f27491a.write(i4);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.f27491a.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i4, int i10) throws IOException {
            this.f27491a.write(bArr, i4, i10);
        }
    }

    public b(File file) {
        this.f27489a = file;
        this.f27490b = new File(String.valueOf(file.getPath()).concat(".bak"));
    }

    private void e() {
        if (this.f27490b.exists()) {
            this.f27489a.delete();
            this.f27490b.renameTo(this.f27489a);
        }
    }

    public void a() {
        this.f27489a.delete();
        this.f27490b.delete();
    }

    public void b(OutputStream outputStream) throws IOException {
        outputStream.close();
        this.f27490b.delete();
    }

    public boolean c() {
        return this.f27489a.exists() || this.f27490b.exists();
    }

    public InputStream d() throws FileNotFoundException {
        e();
        File file = this.f27489a;
        return h.b.a(new FileInputStream(file), file);
    }

    public OutputStream f() throws IOException {
        if (this.f27489a.exists()) {
            if (!this.f27490b.exists()) {
                if (!this.f27489a.renameTo(this.f27490b)) {
                    String valueOf = String.valueOf(this.f27489a);
                    String valueOf2 = String.valueOf(this.f27490b);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 37 + valueOf2.length());
                    sb.append("Couldn't rename file ");
                    sb.append(valueOf);
                    sb.append(" to backup file ");
                    sb.append(valueOf2);
                    w.n(f27488c, sb.toString());
                }
            } else {
                this.f27489a.delete();
            }
        }
        try {
            return new a(this.f27489a);
        } catch (FileNotFoundException e4) {
            File parentFile = this.f27489a.getParentFile();
            if (parentFile != null && parentFile.mkdirs()) {
                try {
                    return new a(this.f27489a);
                } catch (FileNotFoundException e10) {
                    String valueOf3 = String.valueOf(this.f27489a);
                    StringBuilder sb2 = new StringBuilder(valueOf3.length() + 16);
                    sb2.append("Couldn't create ");
                    sb2.append(valueOf3);
                    throw new IOException(sb2.toString(), e10);
                }
            }
            String valueOf4 = String.valueOf(this.f27489a);
            StringBuilder sb3 = new StringBuilder(valueOf4.length() + 16);
            sb3.append("Couldn't create ");
            sb3.append(valueOf4);
            throw new IOException(sb3.toString(), e4);
        }
    }
}
