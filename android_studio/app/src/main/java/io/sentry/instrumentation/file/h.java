package io.sentry.instrumentation.file;

import io.sentry.i0;
import io.sentry.instrumentation.file.a;
import io.sentry.n0;
import io.sentry.v0;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: SentryFileInputStream.java */
/* loaded from: classes4.dex */
public final class h extends FileInputStream {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final FileInputStream f83333a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.instrumentation.file.a f83334b;

    /* compiled from: SentryFileInputStream.java */
    /* loaded from: classes4.dex */
    public static final class b {
        public static FileInputStream a(@m8.g FileInputStream fileInputStream, @m8.h File file) throws FileNotFoundException {
            return new h(h.q(file, fileInputStream, i0.d0()));
        }

        static FileInputStream b(@m8.g FileInputStream fileInputStream, @m8.h File file, @m8.g n0 n0Var) throws FileNotFoundException {
            return new h(h.q(file, fileInputStream, n0Var));
        }

        public static FileInputStream c(@m8.g FileInputStream fileInputStream, @m8.g FileDescriptor fileDescriptor) {
            return new h(h.r(fileDescriptor, fileInputStream, i0.d0()), fileDescriptor);
        }

        public static FileInputStream d(@m8.g FileInputStream fileInputStream, @m8.h String str) throws FileNotFoundException {
            return new h(h.q(str != null ? new File(str) : null, fileInputStream, i0.d0()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer A(byte[] bArr, int i4, int i10) throws IOException {
        return Integer.valueOf(this.f83333a.read(bArr, i4, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long D(long j4) throws IOException {
        return Long.valueOf(this.f83333a.skip(j4));
    }

    private static FileDescriptor p(@m8.g FileInputStream fileInputStream) throws FileNotFoundException {
        try {
            return fileInputStream.getFD();
        } catch (IOException unused) {
            throw new FileNotFoundException("No file descriptor");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static io.sentry.instrumentation.file.b q(@m8.h File file, @m8.h FileInputStream fileInputStream, @m8.g n0 n0Var) throws FileNotFoundException {
        v0 d4 = io.sentry.instrumentation.file.a.d(n0Var, "file.read");
        if (fileInputStream == null) {
            fileInputStream = new FileInputStream(file);
        }
        return new io.sentry.instrumentation.file.b(file, d4, fileInputStream, n0Var.A());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static io.sentry.instrumentation.file.b r(@m8.g FileDescriptor fileDescriptor, @m8.h FileInputStream fileInputStream, @m8.g n0 n0Var) {
        v0 d4 = io.sentry.instrumentation.file.a.d(n0Var, "file.read");
        if (fileInputStream == null) {
            fileInputStream = new FileInputStream(fileDescriptor);
        }
        return new io.sentry.instrumentation.file.b(null, d4, fileInputStream, n0Var.A());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer s(AtomicInteger atomicInteger) throws IOException {
        int read = this.f83333a.read();
        atomicInteger.set(read);
        return Integer.valueOf(read != -1 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer y(byte[] bArr) throws IOException {
        return Integer.valueOf(this.f83333a.read(bArr));
    }

    @Override // java.io.FileInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f83334b.a(this.f83333a);
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public int read() throws IOException {
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        this.f83334b.c(new a.InterfaceC0711a() { // from class: io.sentry.instrumentation.file.e
            @Override // io.sentry.instrumentation.file.a.InterfaceC0711a
            public final Object call() {
                Integer s9;
                s9 = h.this.s(atomicInteger);
                return s9;
            }
        });
        return atomicInteger.get();
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public long skip(final long j4) throws IOException {
        return ((Long) this.f83334b.c(new a.InterfaceC0711a() { // from class: io.sentry.instrumentation.file.d
            @Override // io.sentry.instrumentation.file.a.InterfaceC0711a
            public final Object call() {
                Long D;
                D = h.this.D(j4);
                return D;
            }
        })).longValue();
    }

    public h(@m8.h String str) throws FileNotFoundException {
        this(str != null ? new File(str) : null, i0.d0());
    }

    public h(@m8.h File file) throws FileNotFoundException {
        this(file, i0.d0());
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public int read(final byte[] bArr) throws IOException {
        return ((Integer) this.f83334b.c(new a.InterfaceC0711a() { // from class: io.sentry.instrumentation.file.f
            @Override // io.sentry.instrumentation.file.a.InterfaceC0711a
            public final Object call() {
                Integer y9;
                y9 = h.this.y(bArr);
                return y9;
            }
        })).intValue();
    }

    public h(@m8.g FileDescriptor fileDescriptor) {
        this(fileDescriptor, i0.d0());
    }

    @Override // java.io.FileInputStream, java.io.InputStream
    public int read(final byte[] bArr, final int i4, final int i10) throws IOException {
        return ((Integer) this.f83334b.c(new a.InterfaceC0711a() { // from class: io.sentry.instrumentation.file.g
            @Override // io.sentry.instrumentation.file.a.InterfaceC0711a
            public final Object call() {
                Integer A;
                A = h.this.A(bArr, i4, i10);
                return A;
            }
        })).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(@m8.h File file, @m8.g n0 n0Var) throws FileNotFoundException {
        this(q(file, null, n0Var));
    }

    h(@m8.g FileDescriptor fileDescriptor, @m8.g n0 n0Var) {
        this(r(fileDescriptor, null, n0Var), fileDescriptor);
    }

    private h(@m8.g io.sentry.instrumentation.file.b bVar, @m8.g FileDescriptor fileDescriptor) {
        super(fileDescriptor);
        this.f83334b = new io.sentry.instrumentation.file.a(bVar.f83315b, bVar.f83314a, bVar.f83317d);
        this.f83333a = bVar.f83316c;
    }

    private h(@m8.g io.sentry.instrumentation.file.b bVar) throws FileNotFoundException {
        super(p(bVar.f83316c));
        this.f83334b = new io.sentry.instrumentation.file.a(bVar.f83315b, bVar.f83314a, bVar.f83317d);
        this.f83333a = bVar.f83316c;
    }
}
