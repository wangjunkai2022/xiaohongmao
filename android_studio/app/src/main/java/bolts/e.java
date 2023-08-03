package bolts;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: CancellationTokenSource.java */
/* loaded from: classes.dex */
public class e implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Object f3033a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final List<d> f3034b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f3035c = b.d();

    /* renamed from: d  reason: collision with root package name */
    private ScheduledFuture<?> f3036d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3037e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f3038f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CancellationTokenSource.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (e.this.f3033a) {
                e.this.f3036d = null;
            }
            e.this.d();
        }
    }

    private void A() {
        if (this.f3038f) {
            throw new IllegalStateException("Object already closed");
        }
    }

    private void i(long j4, TimeUnit timeUnit) {
        int i4 = (j4 > (-1L) ? 1 : (j4 == (-1L) ? 0 : -1));
        if (i4 < 0) {
            throw new IllegalArgumentException("Delay must be >= -1");
        }
        if (j4 == 0) {
            d();
            return;
        }
        synchronized (this.f3033a) {
            if (this.f3037e) {
                return;
            }
            k();
            if (i4 != 0) {
                this.f3036d = this.f3035c.schedule(new a(), j4, timeUnit);
            }
        }
    }

    private void k() {
        ScheduledFuture<?> scheduledFuture = this.f3036d;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f3036d = null;
        }
    }

    private void r(List<d> list) {
        for (d dVar : list) {
            dVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D(d dVar) {
        synchronized (this.f3033a) {
            A();
            this.f3034b.remove(dVar);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f3033a) {
            if (this.f3038f) {
                return;
            }
            k();
            for (d dVar : this.f3034b) {
                dVar.close();
            }
            this.f3034b.clear();
            this.f3038f = true;
        }
    }

    public void d() {
        synchronized (this.f3033a) {
            A();
            if (this.f3037e) {
                return;
            }
            k();
            this.f3037e = true;
            r(new ArrayList(this.f3034b));
        }
    }

    public void h(long j4) {
        i(j4, TimeUnit.MILLISECONDS);
    }

    public c p() {
        c cVar;
        synchronized (this.f3033a) {
            A();
            cVar = new c(this);
        }
        return cVar;
    }

    public boolean q() {
        boolean z9;
        synchronized (this.f3033a) {
            A();
            z9 = this.f3037e;
        }
        return z9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d s(Runnable runnable) {
        d dVar;
        synchronized (this.f3033a) {
            A();
            dVar = new d(this, runnable);
            if (this.f3037e) {
                dVar.a();
            } else {
                this.f3034b.add(dVar);
            }
        }
        return dVar;
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(q()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y() throws CancellationException {
        synchronized (this.f3033a) {
            A();
            if (this.f3037e) {
                throw new CancellationException();
            }
        }
    }
}
