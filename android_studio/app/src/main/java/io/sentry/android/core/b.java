package io.sentry.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import io.sentry.SentryLevel;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ANRWatchDog.java */
/* loaded from: classes4.dex */
public final class b extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f82164a;

    /* renamed from: b  reason: collision with root package name */
    private final a f82165b;

    /* renamed from: c  reason: collision with root package name */
    private final z0 f82166c;

    /* renamed from: d  reason: collision with root package name */
    private final long f82167d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final io.sentry.o0 f82168e;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicLong f82169f;

    /* renamed from: g  reason: collision with root package name */
    private final AtomicBoolean f82170g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final Context f82171h;

    /* renamed from: i  reason: collision with root package name */
    private final Runnable f82172i;

    /* compiled from: ANRWatchDog.java */
    /* loaded from: classes4.dex */
    public interface a {
        void a(@m8.g k0 k0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(long j4, boolean z9, @m8.g a aVar, @m8.g io.sentry.o0 o0Var, @m8.g Context context) {
        this(j4, z9, aVar, o0Var, new z0(), context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        this.f82169f.set(0L);
        this.f82170g.set(false);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean z9;
        setName("|ANR-WatchDog|");
        long j4 = this.f82167d;
        while (!isInterrupted()) {
            boolean z10 = this.f82169f.get() == 0;
            this.f82169f.addAndGet(j4);
            if (z10) {
                this.f82166c.b(this.f82172i);
            }
            try {
                Thread.sleep(j4);
                if (this.f82169f.get() != 0 && !this.f82170g.get()) {
                    if (!this.f82164a && (Debug.isDebuggerConnected() || Debug.waitingForDebugger())) {
                        this.f82168e.c(SentryLevel.DEBUG, "An ANR was detected but ignored because the debugger is connected.", new Object[0]);
                        this.f82170g.set(true);
                    } else {
                        ActivityManager activityManager = (ActivityManager) this.f82171h.getSystemService("activity");
                        if (activityManager != null) {
                            List<ActivityManager.ProcessErrorStateInfo> list = null;
                            try {
                                list = activityManager.getProcessesInErrorState();
                            } catch (Throwable th) {
                                this.f82168e.b(SentryLevel.ERROR, "Error getting ActivityManager#getProcessesInErrorState.", th);
                            }
                            if (list != null) {
                                Iterator<ActivityManager.ProcessErrorStateInfo> it = list.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        z9 = false;
                                        break;
                                    } else if (it.next().condition == 2) {
                                        z9 = true;
                                        break;
                                    }
                                }
                                if (!z9) {
                                }
                            }
                        }
                        this.f82168e.c(SentryLevel.INFO, "Raising ANR", new Object[0]);
                        this.f82165b.a(new k0("Application Not Responding for at least " + this.f82167d + " ms.", this.f82166c.a()));
                        j4 = this.f82167d;
                        this.f82170g.set(true);
                    }
                }
            } catch (InterruptedException e4) {
                try {
                    Thread.currentThread().interrupt();
                    this.f82168e.c(SentryLevel.WARNING, "Interrupted: %s", e4.getMessage());
                    return;
                } catch (SecurityException unused) {
                    this.f82168e.c(SentryLevel.WARNING, "Failed to interrupt due to SecurityException: %s", e4.getMessage());
                    return;
                }
            }
        }
    }

    @m8.k
    b(long j4, boolean z9, @m8.g a aVar, @m8.g io.sentry.o0 o0Var, @m8.g z0 z0Var, @m8.g Context context) {
        this.f82169f = new AtomicLong(0L);
        this.f82170g = new AtomicBoolean(false);
        this.f82172i = new Runnable() { // from class: io.sentry.android.core.a
            @Override // java.lang.Runnable
            public final void run() {
                b.this.b();
            }
        };
        this.f82164a = z9;
        this.f82165b = aVar;
        this.f82167d = j4;
        this.f82168e = o0Var;
        this.f82166c = z0Var;
        this.f82171h = context;
    }
}
