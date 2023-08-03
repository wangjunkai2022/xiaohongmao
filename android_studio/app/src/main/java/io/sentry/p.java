package io.sentry;

import java.io.File;
import java.io.FilenameFilter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DirectoryProcessor.java */
/* loaded from: classes4.dex */
public abstract class p {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final o0 f83509a;

    /* renamed from: b  reason: collision with root package name */
    private final long f83510b;

    /* compiled from: DirectoryProcessor.java */
    /* loaded from: classes4.dex */
    private static final class a implements io.sentry.hints.d, io.sentry.hints.h, io.sentry.hints.m, io.sentry.hints.f {

        /* renamed from: a  reason: collision with root package name */
        boolean f83511a = false;

        /* renamed from: b  reason: collision with root package name */
        boolean f83512b = false;

        /* renamed from: c  reason: collision with root package name */
        private final CountDownLatch f83513c = new CountDownLatch(1);

        /* renamed from: d  reason: collision with root package name */
        private final long f83514d;
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        private final o0 f83515e;

        public a(long j4, @m8.g o0 o0Var) {
            this.f83514d = j4;
            this.f83515e = o0Var;
        }

        @Override // io.sentry.hints.h
        public boolean a() {
            return this.f83511a;
        }

        @Override // io.sentry.hints.m
        public void b(boolean z9) {
            this.f83512b = z9;
            this.f83513c.countDown();
        }

        @Override // io.sentry.hints.h
        public void c(boolean z9) {
            this.f83511a = z9;
        }

        @Override // io.sentry.hints.f
        public boolean d() {
            try {
                return this.f83513c.await(this.f83514d, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e4) {
                Thread.currentThread().interrupt();
                this.f83515e.b(SentryLevel.ERROR, "Exception while awaiting on lock.", e4);
                return false;
            }
        }

        @Override // io.sentry.hints.m
        public boolean e() {
            return this.f83512b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(@m8.g o0 o0Var, long j4) {
        this.f83509a = o0Var;
        this.f83510b = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean d(File file, String str) {
        return c(str);
    }

    protected abstract boolean c(String str);

    public void e(@m8.g File file) {
        try {
            o0 o0Var = this.f83509a;
            SentryLevel sentryLevel = SentryLevel.DEBUG;
            o0Var.c(sentryLevel, "Processing dir. %s", file.getAbsolutePath());
            if (!file.exists()) {
                this.f83509a.c(SentryLevel.WARNING, "Directory '%s' doesn't exist. No cached events to send.", file.getAbsolutePath());
            } else if (!file.isDirectory()) {
                this.f83509a.c(SentryLevel.ERROR, "Cache dir %s is not a directory.", file.getAbsolutePath());
            } else {
                File[] listFiles = file.listFiles();
                if (listFiles == null) {
                    this.f83509a.c(SentryLevel.ERROR, "Cache dir %s is null.", file.getAbsolutePath());
                    return;
                }
                File[] listFiles2 = file.listFiles(new FilenameFilter() { // from class: io.sentry.o
                    @Override // java.io.FilenameFilter
                    public final boolean accept(File file2, String str) {
                        boolean d4;
                        d4 = p.this.d(file2, str);
                        return d4;
                    }
                });
                o0 o0Var2 = this.f83509a;
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(listFiles2 != null ? listFiles2.length : 0);
                objArr[1] = file.getAbsolutePath();
                o0Var2.c(sentryLevel, "Processing %d items from cache dir %s", objArr);
                for (File file2 : listFiles) {
                    if (!file2.isFile()) {
                        this.f83509a.c(SentryLevel.DEBUG, "File %s is not a File.", file2.getAbsolutePath());
                    } else {
                        this.f83509a.c(SentryLevel.DEBUG, "Processing file: %s", file2.getAbsolutePath());
                        f(file2, io.sentry.util.h.e(new a(this.f83510b, this.f83509a)));
                    }
                }
            }
        } catch (Throwable th) {
            this.f83509a.a(SentryLevel.ERROR, th, "Failed processing '%s'", file.getAbsolutePath());
        }
    }

    protected abstract void f(@m8.g File file, @m8.g b0 b0Var);
}
