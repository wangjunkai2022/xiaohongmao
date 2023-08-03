package com.google.android.exoplayer2.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.v0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public final class Loader implements g0 {

    /* renamed from: d  reason: collision with root package name */
    private static final String f26971d = "ExoPlayer:Loader:";

    /* renamed from: e  reason: collision with root package name */
    private static final int f26972e = 0;

    /* renamed from: f  reason: collision with root package name */
    private static final int f26973f = 1;

    /* renamed from: g  reason: collision with root package name */
    private static final int f26974g = 2;

    /* renamed from: h  reason: collision with root package name */
    private static final int f26975h = 3;

    /* renamed from: i  reason: collision with root package name */
    public static final c f26976i = i(false, com.google.android.exoplayer2.i.f23649b);

    /* renamed from: j  reason: collision with root package name */
    public static final c f26977j = i(true, com.google.android.exoplayer2.i.f23649b);

    /* renamed from: k  reason: collision with root package name */
    public static final c f26978k = new c(2, com.google.android.exoplayer2.i.f23649b);

    /* renamed from: l  reason: collision with root package name */
    public static final c f26979l = new c(3, com.google.android.exoplayer2.i.f23649b);

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f26980a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private d<? extends e> f26981b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private IOException f26982c;

    /* loaded from: classes2.dex */
    public static final class UnexpectedLoaderException extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public UnexpectedLoaderException(java.lang.Throwable r5) {
            /*
                r4 = this;
                java.lang.Class r0 = r5.getClass()
                java.lang.String r0 = r0.getSimpleName()
                java.lang.String r1 = r5.getMessage()
                int r2 = r0.length()
                int r2 = r2 + 13
                java.lang.String r3 = java.lang.String.valueOf(r1)
                int r3 = r3.length()
                int r2 = r2 + r3
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>(r2)
                java.lang.String r2 = "Unexpected "
                r3.append(r2)
                r3.append(r0)
                java.lang.String r0 = ": "
                r3.append(r0)
                r3.append(r1)
                java.lang.String r0 = r3.toString()
                r4.<init>(r0, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.Loader.UnexpectedLoaderException.<init>(java.lang.Throwable):void");
        }
    }

    /* loaded from: classes2.dex */
    public interface b<T extends e> {
        void i(T t9, long j4, long j10, boolean z9);

        void k(T t9, long j4, long j10);

        c p(T t9, long j4, long j10, IOException iOException, int i4);
    }

    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final int f26983a;

        /* renamed from: b  reason: collision with root package name */
        private final long f26984b;

        public boolean c() {
            int i4 = this.f26983a;
            return i4 == 0 || i4 == 1;
        }

        private c(int i4, long j4) {
            this.f26983a = i4;
            this.f26984b = j4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes2.dex */
    public final class d<T extends e> extends Handler implements Runnable {

        /* renamed from: k  reason: collision with root package name */
        private static final String f26985k = "LoadTask";

        /* renamed from: l  reason: collision with root package name */
        private static final int f26986l = 0;

        /* renamed from: m  reason: collision with root package name */
        private static final int f26987m = 1;

        /* renamed from: n  reason: collision with root package name */
        private static final int f26988n = 2;

        /* renamed from: o  reason: collision with root package name */
        private static final int f26989o = 3;

        /* renamed from: a  reason: collision with root package name */
        public final int f26990a;

        /* renamed from: b  reason: collision with root package name */
        private final T f26991b;

        /* renamed from: c  reason: collision with root package name */
        private final long f26992c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private b<T> f26993d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private IOException f26994e;

        /* renamed from: f  reason: collision with root package name */
        private int f26995f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private Thread f26996g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f26997h;

        /* renamed from: i  reason: collision with root package name */
        private volatile boolean f26998i;

        public d(Looper looper, T t9, b<T> bVar, int i4, long j4) {
            super(looper);
            this.f26991b = t9;
            this.f26993d = bVar;
            this.f26990a = i4;
            this.f26992c = j4;
        }

        private void b() {
            this.f26994e = null;
            Loader.this.f26980a.execute((Runnable) com.google.android.exoplayer2.util.a.g(Loader.this.f26981b));
        }

        private void c() {
            Loader.this.f26981b = null;
        }

        private long d() {
            return Math.min((this.f26995f - 1) * 1000, 5000);
        }

        public void a(boolean z9) {
            this.f26998i = z9;
            this.f26994e = null;
            if (hasMessages(0)) {
                this.f26997h = true;
                removeMessages(0);
                if (!z9) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    this.f26997h = true;
                    this.f26991b.c();
                    Thread thread = this.f26996g;
                    if (thread != null) {
                        thread.interrupt();
                    }
                }
            }
            if (z9) {
                c();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                ((b) com.google.android.exoplayer2.util.a.g(this.f26993d)).i(this.f26991b, elapsedRealtime, elapsedRealtime - this.f26992c, true);
                this.f26993d = null;
            }
        }

        public void e(int i4) throws IOException {
            IOException iOException = this.f26994e;
            if (iOException != null && this.f26995f > i4) {
                throw iOException;
            }
        }

        public void f(long j4) {
            com.google.android.exoplayer2.util.a.i(Loader.this.f26981b == null);
            Loader.this.f26981b = this;
            if (j4 > 0) {
                sendEmptyMessageDelayed(0, j4);
            } else {
                b();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            long d4;
            if (this.f26998i) {
                return;
            }
            int i4 = message.what;
            if (i4 == 0) {
                b();
            } else if (i4 != 3) {
                c();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j4 = elapsedRealtime - this.f26992c;
                b bVar = (b) com.google.android.exoplayer2.util.a.g(this.f26993d);
                if (this.f26997h) {
                    bVar.i(this.f26991b, elapsedRealtime, j4, false);
                    return;
                }
                int i10 = message.what;
                if (i10 == 1) {
                    try {
                        bVar.k(this.f26991b, elapsedRealtime, j4);
                    } catch (RuntimeException e4) {
                        com.google.android.exoplayer2.util.w.e(f26985k, "Unexpected exception handling load completed", e4);
                        Loader.this.f26982c = new UnexpectedLoaderException(e4);
                    }
                } else if (i10 != 2) {
                } else {
                    IOException iOException = (IOException) message.obj;
                    this.f26994e = iOException;
                    int i11 = this.f26995f + 1;
                    this.f26995f = i11;
                    c p9 = bVar.p(this.f26991b, elapsedRealtime, j4, iOException, i11);
                    if (p9.f26983a == 3) {
                        Loader.this.f26982c = this.f26994e;
                    } else if (p9.f26983a != 2) {
                        if (p9.f26983a == 1) {
                            this.f26995f = 1;
                        }
                        if (p9.f26984b != com.google.android.exoplayer2.i.f23649b) {
                            d4 = p9.f26984b;
                        } else {
                            d4 = d();
                        }
                        f(d4);
                    }
                }
            } else {
                throw ((Error) message.obj);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z9;
            try {
                synchronized (this) {
                    z9 = !this.f26997h;
                    this.f26996g = Thread.currentThread();
                }
                if (z9) {
                    String simpleName = this.f26991b.getClass().getSimpleName();
                    v0.a(simpleName.length() != 0 ? "load:".concat(simpleName) : new String("load:"));
                    try {
                        this.f26991b.a();
                        v0.c();
                    } catch (Throwable th) {
                        v0.c();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.f26996g = null;
                    Thread.interrupted();
                }
                if (this.f26998i) {
                    return;
                }
                sendEmptyMessage(1);
            } catch (IOException e4) {
                if (this.f26998i) {
                    return;
                }
                obtainMessage(2, e4).sendToTarget();
            } catch (Exception e10) {
                if (this.f26998i) {
                    return;
                }
                com.google.android.exoplayer2.util.w.e(f26985k, "Unexpected exception loading stream", e10);
                obtainMessage(2, new UnexpectedLoaderException(e10)).sendToTarget();
            } catch (OutOfMemoryError e11) {
                if (this.f26998i) {
                    return;
                }
                com.google.android.exoplayer2.util.w.e(f26985k, "OutOfMemory error loading stream", e11);
                obtainMessage(2, new UnexpectedLoaderException(e11)).sendToTarget();
            } catch (Error e12) {
                if (!this.f26998i) {
                    com.google.android.exoplayer2.util.w.e(f26985k, "Unexpected error loading stream", e12);
                    obtainMessage(3, e12).sendToTarget();
                }
                throw e12;
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a() throws IOException;

        void c();
    }

    /* loaded from: classes2.dex */
    public interface f {
        void r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final f f27000a;

        public g(f fVar) {
            this.f27000a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f27000a.r();
        }
    }

    public Loader(String str) {
        String valueOf = String.valueOf(str);
        this.f26980a = z0.P0(valueOf.length() != 0 ? f26971d.concat(valueOf) : new String(f26971d));
    }

    public static c i(boolean z9, long j4) {
        return new c(z9 ? 1 : 0, j4);
    }

    @Override // com.google.android.exoplayer2.upstream.g0
    public void a() throws IOException {
        b(Integer.MIN_VALUE);
    }

    @Override // com.google.android.exoplayer2.upstream.g0
    public void b(int i4) throws IOException {
        IOException iOException = this.f26982c;
        if (iOException == null) {
            d<? extends e> dVar = this.f26981b;
            if (dVar != null) {
                if (i4 == Integer.MIN_VALUE) {
                    i4 = dVar.f26990a;
                }
                dVar.e(i4);
                return;
            }
            return;
        }
        throw iOException;
    }

    public void g() {
        ((d) com.google.android.exoplayer2.util.a.k(this.f26981b)).a(false);
    }

    public void h() {
        this.f26982c = null;
    }

    public boolean j() {
        return this.f26982c != null;
    }

    public boolean k() {
        return this.f26981b != null;
    }

    public void l() {
        m(null);
    }

    public void m(@Nullable f fVar) {
        d<? extends e> dVar = this.f26981b;
        if (dVar != null) {
            dVar.a(true);
        }
        if (fVar != null) {
            this.f26980a.execute(new g(fVar));
        }
        this.f26980a.shutdown();
    }

    public <T extends e> long n(T t9, b<T> bVar, int i4) {
        this.f26982c = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new d((Looper) com.google.android.exoplayer2.util.a.k(Looper.myLooper()), t9, bVar, i4, elapsedRealtime).f(0L);
        return elapsedRealtime;
    }
}
