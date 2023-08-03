package com.koushikdutta.async.future;

/* loaded from: classes3.dex */
public class SimpleCancellable implements DependentCancellable {

    /* renamed from: d  reason: collision with root package name */
    public static final Cancellable f44425d = new SimpleCancellable() { // from class: com.koushikdutta.async.future.SimpleCancellable.1
        {
            i();
        }
    };

    /* renamed from: e  reason: collision with root package name */
    public static final Cancellable f44426e = new SimpleCancellable() { // from class: com.koushikdutta.async.future.SimpleCancellable.2
        {
            cancel();
        }
    };

    /* renamed from: a  reason: collision with root package name */
    boolean f44427a;

    /* renamed from: b  reason: collision with root package name */
    boolean f44428b;

    /* renamed from: c  reason: collision with root package name */
    private Cancellable f44429c;

    @Override // com.koushikdutta.async.future.DependentCancellable
    public boolean b(Cancellable cancellable) {
        synchronized (this) {
            if (isDone()) {
                return false;
            }
            this.f44429c = cancellable;
            return true;
        }
    }

    @Override // com.koushikdutta.async.future.Cancellable
    public boolean cancel() {
        synchronized (this) {
            if (this.f44427a) {
                return false;
            }
            if (this.f44428b) {
                return true;
            }
            this.f44428b = true;
            Cancellable cancellable = this.f44429c;
            this.f44429c = null;
            if (cancellable != null) {
                cancellable.cancel();
            }
            e();
            f();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
    }

    protected void g() {
    }

    public Cancellable h() {
        cancel();
        this.f44427a = false;
        this.f44428b = false;
        return this;
    }

    public boolean i() {
        synchronized (this) {
            if (this.f44428b) {
                return false;
            }
            if (this.f44427a) {
                return false;
            }
            this.f44427a = true;
            this.f44429c = null;
            g();
            f();
            return true;
        }
    }

    @Override // com.koushikdutta.async.future.Cancellable
    public boolean isCancelled() {
        boolean z9;
        Cancellable cancellable;
        synchronized (this) {
            z9 = this.f44428b || ((cancellable = this.f44429c) != null && cancellable.isCancelled());
        }
        return z9;
    }

    @Override // com.koushikdutta.async.future.Cancellable
    public boolean isDone() {
        return this.f44427a;
    }
}
