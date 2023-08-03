package io.sentry.instrumentation.file;

import io.sentry.SentryOptions;
import io.sentry.SpanStatus;
import io.sentry.n0;
import io.sentry.t4;
import io.sentry.util.q;
import io.sentry.v0;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FileIOSpanManager.java */
/* loaded from: classes4.dex */
public final class a {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final v0 f83308a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final File f83309b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final SentryOptions f83310c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private SpanStatus f83311d = SpanStatus.OK;

    /* renamed from: e  reason: collision with root package name */
    private long f83312e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final t4 f83313f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FileIOSpanManager.java */
    @FunctionalInterface
    /* renamed from: io.sentry.instrumentation.file.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0711a<T> {
        T call() throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@m8.h v0 v0Var, @m8.h File file, @m8.g SentryOptions sentryOptions) {
        this.f83308a = v0Var;
        this.f83309b = file;
        this.f83310c = sentryOptions;
        this.f83313f = new t4(sentryOptions.getInAppExcludes(), sentryOptions.getInAppIncludes());
    }

    private void b() {
        if (this.f83308a != null) {
            String a10 = q.a(this.f83312e);
            if (this.f83309b != null) {
                this.f83308a.k(this.f83309b.getName() + " (" + a10 + ")");
                if (io.sentry.util.n.a() || this.f83310c.isSendDefaultPii()) {
                    this.f83308a.r("file.path", this.f83309b.getAbsolutePath());
                }
            } else {
                this.f83308a.k(a10);
            }
            this.f83308a.r("file.size", Long.valueOf(this.f83312e));
            boolean a11 = this.f83310c.getMainThreadChecker().a();
            this.f83308a.r("blocked_main_thread", Boolean.valueOf(a11));
            if (a11) {
                this.f83308a.r("call_stack", this.f83313f.c());
            }
            this.f83308a.t(this.f83311d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.h
    public static v0 d(@m8.g n0 n0Var, @m8.g String str) {
        v0 u9 = n0Var.u();
        if (u9 != null) {
            return u9.n(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@m8.g Closeable closeable) throws IOException {
        try {
            try {
                closeable.close();
            } catch (IOException e4) {
                this.f83311d = SpanStatus.INTERNAL_ERROR;
                if (this.f83308a != null) {
                    this.f83308a.s(e4);
                }
                throw e4;
            }
        } finally {
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> T c(@m8.g InterfaceC0711a<T> interfaceC0711a) throws IOException {
        try {
            T call = interfaceC0711a.call();
            if (call instanceof Integer) {
                int intValue = ((Integer) call).intValue();
                if (intValue != -1) {
                    this.f83312e += intValue;
                }
            } else if (call instanceof Long) {
                long longValue = ((Long) call).longValue();
                if (longValue != -1) {
                    this.f83312e += longValue;
                }
            }
            return call;
        } catch (IOException e4) {
            this.f83311d = SpanStatus.INTERNAL_ERROR;
            v0 v0Var = this.f83308a;
            if (v0Var != null) {
                v0Var.s(e4);
            }
            throw e4;
        }
    }
}
