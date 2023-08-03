package io.sentry.android.core;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import io.sentry.SentryLevel;
import io.sentry.Session;
import io.sentry.protocol.t;
import io.sentry.r2;
import io.sentry.s2;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class LifecycleWatcher implements DefaultLifecycleObserver {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicLong f82101a;

    /* renamed from: b  reason: collision with root package name */
    private final long f82102b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private TimerTask f82103c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private final Timer f82104d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Object f82105e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final io.sentry.n0 f82106f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f82107g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f82108h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final io.sentry.transport.o f82109i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            LifecycleWatcher.this.e(com.google.android.exoplayer2.text.ttml.d.f25727p0);
            LifecycleWatcher.this.f82106f.H();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LifecycleWatcher(@m8.g io.sentry.n0 n0Var, long j4, boolean z9, boolean z10) {
        this(n0Var, j4, z9, z10, io.sentry.transport.m.b());
    }

    private void d(@m8.g String str) {
        if (this.f82108h) {
            io.sentry.f fVar = new io.sentry.f();
            fVar.y(NotificationCompat.CATEGORY_NAVIGATION);
            fVar.v(t.b.f83859d, str);
            fVar.u("app.lifecycle");
            fVar.w(SentryLevel.INFO);
            this.f82106f.g(fVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(@m8.g String str) {
        this.f82106f.g(io.sentry.android.core.internal.util.c.a(str));
    }

    private void f() {
        synchronized (this.f82105e) {
            TimerTask timerTask = this.f82103c;
            if (timerTask != null) {
                timerTask.cancel();
                this.f82103c = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(long j4, r2 r2Var) {
        Session t9;
        long j10 = this.f82101a.get();
        if (j10 == 0 && (t9 = r2Var.t()) != null && t9.p() != null) {
            j10 = t9.p().getTime();
        }
        if (j10 == 0 || j10 + this.f82102b <= j4) {
            e(com.google.android.exoplayer2.text.ttml.d.f25725o0);
            this.f82106f.b0();
        }
        this.f82101a.set(j4);
    }

    private void j() {
        synchronized (this.f82105e) {
            f();
            if (this.f82104d != null) {
                a aVar = new a();
                this.f82103c = aVar;
                this.f82104d.schedule(aVar, this.f82102b);
            }
        }
    }

    private void k() {
        if (this.f82107g) {
            f();
            final long a10 = this.f82109i.a();
            this.f82106f.V(new s2() { // from class: io.sentry.android.core.x0
                @Override // io.sentry.s2
                public final void a(r2 r2Var) {
                    LifecycleWatcher.this.i(a10, r2Var);
                }
            });
        }
    }

    @m8.h
    @m8.k
    Timer g() {
        return this.f82104d;
    }

    @m8.h
    @m8.k
    TimerTask h() {
        return this.f82103c;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.b.a(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.b.b(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.b.c(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.b.d(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public void onStart(@m8.g LifecycleOwner lifecycleOwner) {
        k();
        d(com.google.android.exoplayer2.offline.v.f24444x);
        j0.a().d(false);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public void onStop(@m8.g LifecycleOwner lifecycleOwner) {
        if (this.f82107g) {
            this.f82101a.set(this.f82109i.a());
            j();
        }
        j0.a().d(true);
        d("background");
    }

    LifecycleWatcher(@m8.g io.sentry.n0 n0Var, long j4, boolean z9, boolean z10, @m8.g io.sentry.transport.o oVar) {
        this.f82101a = new AtomicLong(0L);
        this.f82105e = new Object();
        this.f82102b = j4;
        this.f82107g = z9;
        this.f82108h = z10;
        this.f82106f = n0Var;
        this.f82109i = oVar;
        if (z9) {
            this.f82104d = new Timer(true);
        } else {
            this.f82104d = null;
        }
    }
}
