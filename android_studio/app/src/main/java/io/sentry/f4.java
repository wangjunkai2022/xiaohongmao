package io.sentry;

import io.sentry.exception.SentryEnvelopeException;
import io.sentry.f4;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.concurrent.Callable;
import m8.a;

/* compiled from: SentryEnvelopeItem.java */
@a.c
/* loaded from: classes4.dex */
public final class f4 {

    /* renamed from: d  reason: collision with root package name */
    private static final Charset f83201d = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final g4 f83202a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final Callable<byte[]> f83203b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private byte[] f83204c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SentryEnvelopeItem.java */
    /* loaded from: classes4.dex */
    public static class a {
        @m8.h

        /* renamed from: a  reason: collision with root package name */
        private byte[] f83205a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private final Callable<byte[]> f83206b;

        public a(@m8.h Callable<byte[]> callable) {
            this.f83206b = callable;
        }

        @m8.g
        private static byte[] b(@m8.h byte[] bArr) {
            return bArr != null ? bArr : new byte[0];
        }

        @m8.g
        public byte[] a() throws Exception {
            Callable<byte[]> callable;
            if (this.f83205a == null && (callable = this.f83206b) != null) {
                this.f83205a = callable.call();
            }
            return b(this.f83205a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f4(@m8.g g4 g4Var, byte[] bArr) {
        this.f83202a = (g4) io.sentry.util.l.c(g4Var, "SentryEnvelopeItemHeader is required.");
        this.f83204c = bArr;
        this.f83203b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer E(a aVar) throws Exception {
        return Integer.valueOf(aVar.a().length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] G(b bVar, long j4, u0 u0Var, o0 o0Var) throws Exception {
        if (bVar.d() != null) {
            byte[] d4 = bVar.d();
            s(d4.length, j4, bVar.f());
            return d4;
        }
        if (bVar.h() != null) {
            byte[] b10 = io.sentry.util.j.b(u0Var, o0Var, bVar.h());
            if (b10 != null) {
                s(b10.length, j4, bVar.f());
                return b10;
            }
        } else if (bVar.g() != null) {
            return W(bVar.g(), j4);
        }
        throw new SentryEnvelopeException(String.format("Couldn't attach the attachment %s.\nPlease check that either bytes, serializable or a path is set.", bVar.f()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] H(u0 u0Var, io.sentry.clientreport.b bVar) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, f83201d));
            u0Var.a(bVar, bufferedWriter);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            bufferedWriter.close();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer I(a aVar) throws Exception {
        return Integer.valueOf(aVar.a().length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] K(u0 u0Var, e3 e3Var) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, f83201d));
            u0Var.a(e3Var, bufferedWriter);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            bufferedWriter.close();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer L(a aVar) throws Exception {
        return Integer.valueOf(aVar.a().length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] N(File file, long j4, m2 m2Var, u0 u0Var) throws Exception {
        if (file.exists()) {
            String f10 = io.sentry.vendor.a.f(W(file.getPath(), j4), 3);
            if (!f10.isEmpty()) {
                m2Var.r0(f10);
                m2Var.b0();
                try {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, f83201d));
                            u0Var.a(m2Var, bufferedWriter);
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            bufferedWriter.close();
                            byteArrayOutputStream.close();
                            return byteArray;
                        } catch (Throwable th) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (IOException e4) {
                        throw new SentryEnvelopeException(String.format("Failed to serialize profiling trace data\n%s", e4.getMessage()));
                    }
                } finally {
                    file.delete();
                }
            }
            throw new SentryEnvelopeException("Profiling trace file is empty");
        }
        throw new SentryEnvelopeException(String.format("Dropping profiling trace data, because the file '%s' doesn't exists", file.getName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer O(a aVar) throws Exception {
        return Integer.valueOf(aVar.a().length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] Q(u0 u0Var, Session session) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, f83201d));
            u0Var.a(session, bufferedWriter);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            bufferedWriter.close();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer R(a aVar) throws Exception {
        return Integer.valueOf(aVar.a().length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] T(u0 u0Var, w5 w5Var) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, f83201d));
            u0Var.a(w5Var, bufferedWriter);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            bufferedWriter.close();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer U(a aVar) throws Exception {
        return Integer.valueOf(aVar.a().length);
    }

    private static byte[] W(String str, long j4) throws SentryEnvelopeException {
        try {
            File file = new File(str);
            if (file.isFile()) {
                if (file.canRead()) {
                    if (file.length() <= j4) {
                        FileInputStream fileInputStream = new FileInputStream(str);
                        try {
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = bufferedInputStream.read(bArr);
                                if (read != -1) {
                                    byteArrayOutputStream.write(bArr, 0, read);
                                } else {
                                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                                    byteArrayOutputStream.close();
                                    bufferedInputStream.close();
                                    fileInputStream.close();
                                    return byteArray;
                                }
                            }
                        } catch (Throwable th) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } else {
                        throw new SentryEnvelopeException(String.format("Dropping item, because its size located at '%s' with %d bytes is bigger than the maximum allowed size of %d bytes.", str, Long.valueOf(file.length()), Long.valueOf(j4)));
                    }
                } else {
                    throw new SentryEnvelopeException(String.format("Reading the item %s failed, because can't read the file.", str));
                }
            } else {
                throw new SentryEnvelopeException(String.format("Reading the item %s failed, because the file located at the path is not a file.", str));
            }
        } catch (IOException | SecurityException e4) {
            throw new SentryEnvelopeException(String.format("Reading the item %s failed.\n%s", str, e4.getMessage()));
        }
    }

    private static void s(long j4, long j10, @m8.g String str) throws SentryEnvelopeException {
        if (j4 > j10) {
            throw new SentryEnvelopeException(String.format("Dropping attachment with filename '%s', because the size of the passed bytes with %d bytes is bigger than the maximum allowed attachment size of %d bytes.", str, Long.valueOf(j4), Long.valueOf(j10)));
        }
    }

    public static f4 t(@m8.g final u0 u0Var, @m8.g final o0 o0Var, @m8.g final b bVar, final long j4) {
        final a aVar = new a(new Callable() { // from class: io.sentry.n3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] G;
                G = f4.G(b.this, j4, u0Var, o0Var);
                return G;
            }
        });
        return new f4(new g4(SentryItemType.Attachment, new Callable() { // from class: io.sentry.c4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer E;
                E = f4.E(f4.a.this);
                return E;
            }
        }, bVar.e(), bVar.f(), bVar.c()), new Callable() { // from class: io.sentry.e4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = f4.a.this.a();
                return a10;
            }
        });
    }

    @m8.g
    public static f4 u(@m8.g final u0 u0Var, @m8.g final io.sentry.clientreport.b bVar) throws IOException {
        io.sentry.util.l.c(u0Var, "ISerializer is required.");
        io.sentry.util.l.c(bVar, "ClientReport is required.");
        final a aVar = new a(new Callable() { // from class: io.sentry.z3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] H;
                H = f4.H(u0.this, bVar);
                return H;
            }
        });
        return new f4(new g4(SentryItemType.resolve(bVar), new Callable() { // from class: io.sentry.a4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer I;
                I = f4.I(f4.a.this);
                return I;
            }
        }, "application/json", null), new Callable() { // from class: io.sentry.d4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = f4.a.this.a();
                return a10;
            }
        });
    }

    @m8.g
    public static f4 v(@m8.g final u0 u0Var, @m8.g final e3 e3Var) throws IOException {
        io.sentry.util.l.c(u0Var, "ISerializer is required.");
        io.sentry.util.l.c(e3Var, "SentryEvent is required.");
        final a aVar = new a(new Callable() { // from class: io.sentry.w3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] K;
                K = f4.K(u0.this, e3Var);
                return K;
            }
        });
        return new f4(new g4(SentryItemType.resolve(e3Var), new Callable() { // from class: io.sentry.s3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer L;
                L = f4.L(f4.a.this);
                return L;
            }
        }, "application/json", null), new Callable() { // from class: io.sentry.q3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = f4.a.this.a();
                return a10;
            }
        });
    }

    @m8.g
    public static f4 w(@m8.g final m2 m2Var, final long j4, @m8.g final u0 u0Var) throws SentryEnvelopeException {
        final File S = m2Var.S();
        final a aVar = new a(new Callable() { // from class: io.sentry.v3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] N;
                N = f4.N(S, j4, m2Var, u0Var);
                return N;
            }
        });
        return new f4(new g4(SentryItemType.Profile, new Callable() { // from class: io.sentry.o3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer O;
                O = f4.O(f4.a.this);
                return O;
            }
        }, "application-json", S.getName()), new Callable() { // from class: io.sentry.b4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = f4.a.this.a();
                return a10;
            }
        });
    }

    @m8.g
    public static f4 x(@m8.g final u0 u0Var, @m8.g final Session session) throws IOException {
        io.sentry.util.l.c(u0Var, "ISerializer is required.");
        io.sentry.util.l.c(session, "Session is required.");
        final a aVar = new a(new Callable() { // from class: io.sentry.x3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] Q;
                Q = f4.Q(u0.this, session);
                return Q;
            }
        });
        return new f4(new g4(SentryItemType.Session, new Callable() { // from class: io.sentry.t3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer R;
                R = f4.R(f4.a.this);
                return R;
            }
        }, "application/json", null), new Callable() { // from class: io.sentry.r3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = f4.a.this.a();
                return a10;
            }
        });
    }

    public static f4 y(@m8.g final u0 u0Var, @m8.g final w5 w5Var) {
        io.sentry.util.l.c(u0Var, "ISerializer is required.");
        io.sentry.util.l.c(w5Var, "UserFeedback is required.");
        final a aVar = new a(new Callable() { // from class: io.sentry.y3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] T;
                T = f4.T(u0.this, w5Var);
                return T;
            }
        });
        return new f4(new g4(SentryItemType.UserFeedback, new Callable() { // from class: io.sentry.u3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer U;
                U = f4.U(f4.a.this);
                return U;
            }
        }, "application/json", null), new Callable() { // from class: io.sentry.p3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                byte[] a10;
                a10 = f4.a.this.a();
                return a10;
            }
        });
    }

    @m8.g
    public byte[] A() throws Exception {
        Callable<byte[]> callable;
        if (this.f83204c == null && (callable = this.f83203b) != null) {
            this.f83204c = callable.call();
        }
        return this.f83204c;
    }

    @m8.h
    public h4 B(@m8.g u0 u0Var) throws Exception {
        g4 g4Var = this.f83202a;
        if (g4Var == null || g4Var.e() != SentryItemType.Event) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(A()), f83201d));
        try {
            h4 h4Var = (h4) u0Var.c(bufferedReader, h4.class);
            bufferedReader.close();
            return h4Var;
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @m8.g
    public g4 C() {
        return this.f83202a;
    }

    @m8.h
    public io.sentry.protocol.u D(@m8.g u0 u0Var) throws Exception {
        g4 g4Var = this.f83202a;
        if (g4Var == null || g4Var.e() != SentryItemType.Transaction) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(A()), f83201d));
        try {
            io.sentry.protocol.u uVar = (io.sentry.protocol.u) u0Var.c(bufferedReader, io.sentry.protocol.u.class);
            bufferedReader.close();
            return uVar;
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @m8.h
    public io.sentry.clientreport.b z(@m8.g u0 u0Var) throws Exception {
        g4 g4Var = this.f83202a;
        if (g4Var == null || g4Var.e() != SentryItemType.ClientReport) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(A()), f83201d));
        try {
            io.sentry.clientreport.b bVar = (io.sentry.clientreport.b) u0Var.c(bufferedReader, io.sentry.clientreport.b.class);
            bufferedReader.close();
            return bVar;
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    f4(@m8.g g4 g4Var, @m8.h Callable<byte[]> callable) {
        this.f83202a = (g4) io.sentry.util.l.c(g4Var, "SentryEnvelopeItemHeader is required.");
        this.f83203b = (Callable) io.sentry.util.l.c(callable, "DataFactory is required.");
        this.f83204c = null;
    }
}
