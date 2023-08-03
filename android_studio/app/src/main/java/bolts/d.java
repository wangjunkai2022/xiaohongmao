package bolts;

import java.io.Closeable;

/* compiled from: CancellationTokenRegistration.java */
/* loaded from: classes.dex */
public class d implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Object f3029a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private e f3030b;

    /* renamed from: c  reason: collision with root package name */
    private Runnable f3031c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3032d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(e eVar, Runnable runnable) {
        this.f3030b = eVar;
        this.f3031c = runnable;
    }

    private void b() {
        if (this.f3032d) {
            throw new IllegalStateException("Object already closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        synchronized (this.f3029a) {
            b();
            this.f3031c.run();
            close();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f3029a) {
            if (this.f3032d) {
                return;
            }
            this.f3032d = true;
            this.f3030b.D(this);
            this.f3030b = null;
            this.f3031c = null;
        }
    }
}
