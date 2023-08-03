package com.facebook.fresco.animation.backend;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import com.facebook.fresco.animation.backend.a;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import r7.h;

/* compiled from: AnimationBackendDelegateWithInactivityCheck.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c<T extends com.facebook.fresco.animation.backend.a> extends com.facebook.fresco.animation.backend.b<T> {
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    static final long f11669p = 2000;
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    static final long f11670q = 1000;

    /* renamed from: h  reason: collision with root package name */
    private final s0.c f11671h;

    /* renamed from: i  reason: collision with root package name */
    private final ScheduledExecutorService f11672i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f11673j;

    /* renamed from: k  reason: collision with root package name */
    private long f11674k;

    /* renamed from: l  reason: collision with root package name */
    private long f11675l;

    /* renamed from: m  reason: collision with root package name */
    private long f11676m;
    @h

    /* renamed from: n  reason: collision with root package name */
    private b f11677n;

    /* renamed from: o  reason: collision with root package name */
    private final Runnable f11678o;

    /* compiled from: AnimationBackendDelegateWithInactivityCheck.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (c.this) {
                c.this.f11673j = false;
                if (c.this.v()) {
                    if (c.this.f11677n != null) {
                        c.this.f11677n.i();
                    }
                } else {
                    c.this.w();
                }
            }
        }
    }

    /* compiled from: AnimationBackendDelegateWithInactivityCheck.java */
    /* loaded from: classes.dex */
    public interface b {
        void i();
    }

    private c(@h T animationBackend, @h b inactivityListener, s0.c monotonicClock, ScheduledExecutorService scheduledExecutorServiceForUiThread) {
        super(animationBackend);
        this.f11673j = false;
        this.f11675l = 2000L;
        this.f11676m = 1000L;
        this.f11678o = new a();
        this.f11677n = inactivityListener;
        this.f11671h = monotonicClock;
        this.f11672i = scheduledExecutorServiceForUiThread;
    }

    public static <T extends com.facebook.fresco.animation.backend.a> com.facebook.fresco.animation.backend.b<T> r(T backend, b inactivityListener, s0.c monotonicClock, ScheduledExecutorService scheduledExecutorServiceForUiThread) {
        return new c(backend, inactivityListener, monotonicClock, scheduledExecutorServiceForUiThread);
    }

    public static <T extends com.facebook.fresco.animation.backend.a & b> com.facebook.fresco.animation.backend.b<T> s(T backend, s0.c monotonicClock, ScheduledExecutorService scheduledExecutorServiceForUiThread) {
        return r(backend, (b) backend, monotonicClock, scheduledExecutorServiceForUiThread);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean v() {
        return this.f11671h.now() - this.f11674k > this.f11675l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void w() {
        if (!this.f11673j) {
            this.f11673j = true;
            this.f11672i.schedule(this.f11678o, this.f11676m, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.facebook.fresco.animation.backend.b, com.facebook.fresco.animation.backend.a
    public boolean h(Drawable parent, Canvas canvas, int frameNumber) {
        this.f11674k = this.f11671h.now();
        boolean h4 = super.h(parent, canvas, frameNumber);
        w();
        return h4;
    }

    public long t() {
        return this.f11676m;
    }

    public long u() {
        return this.f11675l;
    }

    public void x(long inactivityCheckPollingTimeMs) {
        this.f11676m = inactivityCheckPollingTimeMs;
    }

    public void y(@h b inactivityListener) {
        this.f11677n = inactivityListener;
    }

    public void z(long inactivityThresholdMs) {
        this.f11675l = inactivityThresholdMs;
    }
}
