package io.sentry.instrumentation.file;

import io.sentry.i0;
import io.sentry.instrumentation.file.a;
import io.sentry.n0;
import io.sentry.v0;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* compiled from: SentryFileOutputStream.java */
/* loaded from: classes4.dex */
public final class l extends FileOutputStream {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final FileOutputStream f83343a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.instrumentation.file.a f83344b;

    /* compiled from: SentryFileOutputStream.java */
    /* loaded from: classes4.dex */
    public static final class b {
        public static FileOutputStream a(@m8.g FileOutputStream fileOutputStream, @m8.h File file) throws FileNotFoundException {
            return new l(l.p(file, false, fileOutputStream, i0.d0()));
        }

        public static FileOutputStream b(@m8.g FileOutputStream fileOutputStream, @m8.h File file, boolean z9) throws FileNotFoundException {
            return new l(l.p(file, z9, fileOutputStream, i0.d0()));
        }

        public static FileOutputStream c(@m8.g FileOutputStream fileOutputStream, @m8.g FileDescriptor fileDescriptor) {
            return new l(l.q(fileDescriptor, fileOutputStream, i0.d0()), fileDescriptor);
        }

        public static FileOutputStream d(@m8.g FileOutputStream fileOutputStream, @m8.h String str) throws FileNotFoundException {
            return new l(l.p(str != null ? new File(str) : null, false, fileOutputStream, i0.d0()));
        }

        public static FileOutputStream e(@m8.g FileOutputStream fileOutputStream, @m8.h String str, boolean z9) throws FileNotFoundException {
            return new l(l.p(str != null ? new File(str) : null, z9, fileOutputStream, i0.d0()));
        }
    }

    private static FileDescriptor k(@m8.g FileOutputStream fileOutputStream) throws FileNotFoundException {
        try {
            return fileOutputStream.getFD();
        } catch (IOException unused) {
            throw new FileNotFoundException("No file descriptor");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c p(@m8.h File file, boolean z9, @m8.h FileOutputStream fileOutputStream, @m8.g n0 n0Var) throws FileNotFoundException {
        v0 d4 = io.sentry.instrumentation.file.a.d(n0Var, "file.write");
        if (fileOutputStream == null) {
            fileOutputStream = new FileOutputStream(file, z9);
        }
        return new c(file, z9, d4, fileOutputStream, n0Var.A());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c q(@m8.g FileDescriptor fileDescriptor, @m8.h FileOutputStream fileOutputStream, @m8.g n0 n0Var) {
        v0 d4 = io.sentry.instrumentation.file.a.d(n0Var, "file.write");
        if (fileOutputStream == null) {
            fileOutputStream = new FileOutputStream(fileDescriptor);
        }
        return new c(null, false, d4, fileOutputStream, n0Var.A());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer r(int i4) throws IOException {
        this.f83343a.write(i4);
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer s(byte[] bArr) throws IOException {
        this.f83343a.write(bArr);
        return Integer.valueOf(bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer y(byte[] bArr, int i4, int i10) throws IOException {
        this.f83343a.write(bArr, i4, i10);
        return Integer.valueOf(i10);
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f83344b.a(this.f83343a);
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream
    public void write(final int i4) throws IOException {
        this.f83344b.c(new a.InterfaceC0711a() { // from class: io.sentry.instrumentation.file.i
            @Override // io.sentry.instrumentation.file.a.InterfaceC0711a
            public final Object call() {
                Integer r9;
                r9 = l.this.r(i4);
                return r9;
            }
        });
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream
    public void write(final byte[] bArr) throws IOException {
        this.f83344b.c(new a.InterfaceC0711a() { // from class: io.sentry.instrumentation.file.j
            @Override // io.sentry.instrumentation.file.a.InterfaceC0711a
            public final Object call() {
                Integer s9;
                s9 = l.this.s(bArr);
                return s9;
            }
        });
    }

    public l(@m8.h String str) throws FileNotFoundException {
        this(str != null ? new File(str) : null, false, (n0) i0.d0());
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream
    public void write(final byte[] bArr, final int i4, final int i10) throws IOException {
        this.f83344b.c(new a.InterfaceC0711a() { // from class: io.sentry.instrumentation.file.k
            @Override // io.sentry.instrumentation.file.a.InterfaceC0711a
            public final Object call() {
                Integer y9;
                y9 = l.this.y(bArr, i4, i10);
                return y9;
            }
        });
    }

    public l(@m8.h String str, boolean z9) throws FileNotFoundException {
        this(p(str != null ? new File(str) : null, z9, null, i0.d0()));
    }

    public l(@m8.h File file) throws FileNotFoundException {
        this(file, false, (n0) i0.d0());
    }

    public l(@m8.h File file, boolean z9) throws FileNotFoundException {
        this(p(file, z9, null, i0.d0()));
    }

    public l(@m8.g FileDescriptor fileDescriptor) {
        this(q(fileDescriptor, null, i0.d0()), fileDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(@m8.h File file, boolean z9, @m8.g n0 n0Var) throws FileNotFoundException {
        this(p(file, z9, null, n0Var));
    }

    private l(@m8.g c cVar, @m8.g FileDescriptor fileDescriptor) {
        super(fileDescriptor);
        this.f83344b = new io.sentry.instrumentation.file.a(cVar.f83319b, cVar.f83318a, cVar.f83322e);
        this.f83343a = cVar.f83321d;
    }

    private l(@m8.g c cVar) throws FileNotFoundException {
        super(k(cVar.f83321d));
        this.f83344b = new io.sentry.instrumentation.file.a(cVar.f83319b, cVar.f83318a, cVar.f83322e);
        this.f83343a = cVar.f83321d;
    }
}
