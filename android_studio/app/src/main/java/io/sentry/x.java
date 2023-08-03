package io.sentry;

import io.sentry.util.h;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import m8.a;

/* compiled from: EnvelopeSender.java */
@a.c
/* loaded from: classes4.dex */
public final class x extends p implements l0 {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final n0 f84194c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final u0 f84195d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final o0 f84196e;

    public x(@m8.g n0 n0Var, @m8.g u0 u0Var, @m8.g o0 o0Var, long j4) {
        super(o0Var, j4);
        this.f84194c = (n0) io.sentry.util.l.c(n0Var, "Hub is required.");
        this.f84195d = (u0) io.sentry.util.l.c(u0Var, "Serializer is required.");
        this.f84196e = (o0) io.sentry.util.l.c(o0Var, "Logger is required.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(io.sentry.hints.f fVar) {
        if (fVar.d()) {
            return;
        }
        this.f84196e.c(SentryLevel.WARNING, "Timed out waiting for envelope submission.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(Throwable th, File file, io.sentry.hints.h hVar) {
        hVar.c(false);
        this.f84196e.a(SentryLevel.INFO, th, "File '%s' won't retry.", file.getAbsolutePath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(File file, io.sentry.hints.h hVar) {
        if (!hVar.a()) {
            m(file, "after trying to capture it");
            this.f84196e.c(SentryLevel.DEBUG, "Deleted file %s.", file.getAbsolutePath());
            return;
        }
        this.f84196e.c(SentryLevel.INFO, "File not deleted since retry was marked. %s.", file.getAbsolutePath());
    }

    private void m(@m8.g File file, @m8.g String str) {
        try {
            if (file.delete()) {
                return;
            }
            this.f84196e.c(SentryLevel.ERROR, "Failed to delete '%s' %s", file.getAbsolutePath(), str);
        } catch (Throwable th) {
            this.f84196e.a(SentryLevel.ERROR, th, "Failed to delete '%s' %s", file.getAbsolutePath(), str);
        }
    }

    @Override // io.sentry.l0
    public void a(@m8.g String str, @m8.g b0 b0Var) {
        io.sentry.util.l.c(str, "Path is required.");
        f(new File(str), b0Var);
    }

    @Override // io.sentry.p
    protected boolean c(@m8.g String str) {
        return str.endsWith(io.sentry.cache.d.f83058g);
    }

    @Override // io.sentry.p
    public /* bridge */ /* synthetic */ void e(@m8.g File file) {
        super.e(file);
    }

    @Override // io.sentry.p
    protected void f(@m8.g final File file, @m8.g b0 b0Var) {
        o0 o0Var;
        h.a aVar;
        if (!file.isFile()) {
            this.f84196e.c(SentryLevel.DEBUG, "'%s' is not a file.", file.getAbsolutePath());
        } else if (!c(file.getName())) {
            this.f84196e.c(SentryLevel.DEBUG, "File '%s' doesn't match extension expected.", file.getAbsolutePath());
        } else {
            try {
                if (!file.getParentFile().canWrite()) {
                    this.f84196e.c(SentryLevel.WARNING, "File '%s' cannot be deleted so it will not be processed.", file.getAbsolutePath());
                    return;
                }
                try {
                    try {
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                        try {
                            l3 d4 = this.f84195d.d(bufferedInputStream);
                            if (d4 == null) {
                                this.f84196e.c(SentryLevel.ERROR, "Failed to deserialize cached envelope %s", file.getAbsolutePath());
                            } else {
                                this.f84194c.o(d4, b0Var);
                            }
                            io.sentry.util.h.p(b0Var, io.sentry.hints.f.class, this.f84196e, new h.a() { // from class: io.sentry.u
                                @Override // io.sentry.util.h.a
                                public final void accept(Object obj) {
                                    x.this.j((io.sentry.hints.f) obj);
                                }
                            });
                            bufferedInputStream.close();
                            o0Var = this.f84196e;
                            aVar = new h.a() { // from class: io.sentry.v
                                @Override // io.sentry.util.h.a
                                public final void accept(Object obj) {
                                    x.this.l(file, (io.sentry.hints.h) obj);
                                }
                            };
                        } catch (Throwable th) {
                            try {
                                bufferedInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (FileNotFoundException e4) {
                        this.f84196e.a(SentryLevel.ERROR, e4, "File '%s' cannot be found.", file.getAbsolutePath());
                        o0Var = this.f84196e;
                        aVar = new h.a() { // from class: io.sentry.v
                            @Override // io.sentry.util.h.a
                            public final void accept(Object obj) {
                                x.this.l(file, (io.sentry.hints.h) obj);
                            }
                        };
                    }
                } catch (IOException e10) {
                    this.f84196e.a(SentryLevel.ERROR, e10, "I/O on file '%s' failed.", file.getAbsolutePath());
                    o0Var = this.f84196e;
                    aVar = new h.a() { // from class: io.sentry.v
                        @Override // io.sentry.util.h.a
                        public final void accept(Object obj) {
                            x.this.l(file, (io.sentry.hints.h) obj);
                        }
                    };
                }
                io.sentry.util.h.p(b0Var, io.sentry.hints.h.class, o0Var, aVar);
            }
        }
    }
}
