package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: JobScheduler.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a0 {

    /* renamed from: k  reason: collision with root package name */
    static final String f12879k = "queueTime";

    /* renamed from: a  reason: collision with root package name */
    private final Executor f12880a;

    /* renamed from: b  reason: collision with root package name */
    private final d f12881b;

    /* renamed from: e  reason: collision with root package name */
    private final int f12884e;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f12882c = new a();

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f12883d = new b();
    @r7.h
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: f  reason: collision with root package name */
    com.facebook.imagepipeline.image.e f12885f = null;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: g  reason: collision with root package name */
    int f12886g = 0;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: h  reason: collision with root package name */
    f f12887h = f.IDLE;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: i  reason: collision with root package name */
    long f12888i = 0;
    @VisibleForTesting
    @s7.a("this")

    /* renamed from: j  reason: collision with root package name */
    long f12889j = 0;

    /* compiled from: JobScheduler.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.this.d();
        }
    }

    /* compiled from: JobScheduler.java */
    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.this.j();
        }
    }

    /* compiled from: JobScheduler.java */
    /* loaded from: classes.dex */
    static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12892a;

        static {
            int[] iArr = new int[f.values().length];
            f12892a = iArr;
            try {
                iArr[f.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12892a[f.QUEUED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12892a[f.RUNNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12892a[f.RUNNING_AND_PENDING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: JobScheduler.java */
    /* loaded from: classes.dex */
    public interface d {
        void a(com.facebook.imagepipeline.image.e encodedImage, int status);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JobScheduler.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        private static ScheduledExecutorService f12893a;

        e() {
        }

        static ScheduledExecutorService a() {
            if (f12893a == null) {
                f12893a = Executors.newSingleThreadScheduledExecutor();
            }
            return f12893a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JobScheduler.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public enum f {
        IDLE,
        QUEUED,
        RUNNING,
        RUNNING_AND_PENDING
    }

    public a0(Executor executor, d jobRunnable, int minimumJobIntervalMs) {
        this.f12880a = executor;
        this.f12881b = jobRunnable;
        this.f12884e = minimumJobIntervalMs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.facebook.imagepipeline.image.e eVar;
        int i4;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            eVar = this.f12885f;
            i4 = this.f12886g;
            this.f12885f = null;
            this.f12886g = 0;
            this.f12887h = f.RUNNING;
            this.f12889j = uptimeMillis;
        }
        try {
            if (i(eVar, i4)) {
                this.f12881b.a(eVar, i4);
            }
        } finally {
            com.facebook.imagepipeline.image.e.d(eVar);
            g();
        }
    }

    private void e(long delay) {
        Runnable a10 = p1.a.a(this.f12883d, "JobScheduler_enqueueJob");
        if (delay > 0) {
            e.a().schedule(a10, delay, TimeUnit.MILLISECONDS);
        } else {
            a10.run();
        }
    }

    private void g() {
        long j4;
        boolean z9;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            if (this.f12887h == f.RUNNING_AND_PENDING) {
                j4 = Math.max(this.f12889j + this.f12884e, uptimeMillis);
                z9 = true;
                this.f12888i = uptimeMillis;
                this.f12887h = f.QUEUED;
            } else {
                this.f12887h = f.IDLE;
                j4 = 0;
                z9 = false;
            }
        }
        if (z9) {
            e(j4 - uptimeMillis);
        }
    }

    @v1.d
    private static boolean i(@r7.h com.facebook.imagepipeline.image.e encodedImage, int status) {
        return com.facebook.imagepipeline.producers.b.f(status) || com.facebook.imagepipeline.producers.b.o(status, 4) || com.facebook.imagepipeline.image.e.b0(encodedImage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.f12880a.execute(p1.a.a(this.f12882c, "JobScheduler_submitJob"));
    }

    public void c() {
        com.facebook.imagepipeline.image.e eVar;
        synchronized (this) {
            eVar = this.f12885f;
            this.f12885f = null;
            this.f12886g = 0;
        }
        com.facebook.imagepipeline.image.e.d(eVar);
    }

    public synchronized long f() {
        return this.f12889j - this.f12888i;
    }

    public boolean h() {
        long max;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            boolean z9 = false;
            if (i(this.f12885f, this.f12886g)) {
                int i4 = c.f12892a[this.f12887h.ordinal()];
                if (i4 != 1) {
                    if (i4 == 3) {
                        this.f12887h = f.RUNNING_AND_PENDING;
                    }
                    max = 0;
                } else {
                    max = Math.max(this.f12889j + this.f12884e, uptimeMillis);
                    this.f12888i = uptimeMillis;
                    this.f12887h = f.QUEUED;
                    z9 = true;
                }
                if (z9) {
                    e(max - uptimeMillis);
                }
                return true;
            }
            return false;
        }
    }

    public boolean k(@r7.h com.facebook.imagepipeline.image.e encodedImage, int status) {
        com.facebook.imagepipeline.image.e eVar;
        if (i(encodedImage, status)) {
            synchronized (this) {
                eVar = this.f12885f;
                this.f12885f = com.facebook.imagepipeline.image.e.b(encodedImage);
                this.f12886g = status;
            }
            com.facebook.imagepipeline.image.e.d(eVar);
            return true;
        }
        return false;
    }
}
