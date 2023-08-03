package io.reactivex.rxjava3.disposables;

import io.reactivex.rxjava3.exceptions.CompositeException;
import java.util.ArrayList;
import java.util.Objects;

/* compiled from: CompositeDisposable.java */
/* loaded from: classes4.dex */
public final class c implements f, g {

    /* renamed from: a  reason: collision with root package name */
    io.reactivex.rxjava3.internal.util.l<f> f76152a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f76153b;

    public c() {
    }

    @Override // io.reactivex.rxjava3.disposables.g
    public boolean a(@p7.e f disposable) {
        if (c(disposable)) {
            disposable.dispose();
            return true;
        }
        return false;
    }

    @Override // io.reactivex.rxjava3.disposables.g
    public boolean b(@p7.e f disposable) {
        Objects.requireNonNull(disposable, "disposable is null");
        if (!this.f76153b) {
            synchronized (this) {
                if (!this.f76153b) {
                    io.reactivex.rxjava3.internal.util.l<f> lVar = this.f76152a;
                    if (lVar == null) {
                        lVar = new io.reactivex.rxjava3.internal.util.l<>();
                        this.f76152a = lVar;
                    }
                    lVar.a(disposable);
                    return true;
                }
            }
        }
        disposable.dispose();
        return false;
    }

    @Override // io.reactivex.rxjava3.disposables.g
    public boolean c(@p7.e f disposable) {
        Objects.requireNonNull(disposable, "disposable is null");
        if (this.f76153b) {
            return false;
        }
        synchronized (this) {
            if (this.f76153b) {
                return false;
            }
            io.reactivex.rxjava3.internal.util.l<f> lVar = this.f76152a;
            if (lVar != null && lVar.e(disposable)) {
                return true;
            }
            return false;
        }
    }

    public boolean d(@p7.e f... disposables) {
        Objects.requireNonNull(disposables, "disposables is null");
        if (!this.f76153b) {
            synchronized (this) {
                if (!this.f76153b) {
                    io.reactivex.rxjava3.internal.util.l<f> lVar = this.f76152a;
                    if (lVar == null) {
                        lVar = new io.reactivex.rxjava3.internal.util.l<>(disposables.length + 1);
                        this.f76152a = lVar;
                    }
                    for (f fVar : disposables) {
                        Objects.requireNonNull(fVar, "A Disposable in the disposables array is null");
                        lVar.a(fVar);
                    }
                    return true;
                }
            }
        }
        for (f fVar2 : disposables) {
            fVar2.dispose();
        }
        return false;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        if (this.f76153b) {
            return;
        }
        synchronized (this) {
            if (this.f76153b) {
                return;
            }
            this.f76153b = true;
            io.reactivex.rxjava3.internal.util.l<f> lVar = this.f76152a;
            this.f76152a = null;
            f(lVar);
        }
    }

    public void e() {
        if (this.f76153b) {
            return;
        }
        synchronized (this) {
            if (this.f76153b) {
                return;
            }
            io.reactivex.rxjava3.internal.util.l<f> lVar = this.f76152a;
            this.f76152a = null;
            f(lVar);
        }
    }

    void f(@p7.f io.reactivex.rxjava3.internal.util.l<f> set) {
        Object[] b10;
        if (set == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : set.b()) {
            if (obj instanceof f) {
                try {
                    ((f) obj).dispose();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th);
                }
            }
        }
        if (arrayList != null) {
            if (arrayList.size() == 1) {
                throw io.reactivex.rxjava3.internal.util.g.i((Throwable) arrayList.get(0));
            }
            throw new CompositeException(arrayList);
        }
    }

    public int g() {
        if (this.f76153b) {
            return 0;
        }
        synchronized (this) {
            if (this.f76153b) {
                return 0;
            }
            io.reactivex.rxjava3.internal.util.l<f> lVar = this.f76152a;
            return lVar != null ? lVar.g() : 0;
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f76153b;
    }

    public c(@p7.e f... disposables) {
        Objects.requireNonNull(disposables, "disposables is null");
        this.f76152a = new io.reactivex.rxjava3.internal.util.l<>(disposables.length + 1);
        for (f fVar : disposables) {
            Objects.requireNonNull(fVar, "A Disposable in the disposables array is null");
            this.f76152a.a(fVar);
        }
    }

    public c(@p7.e Iterable<? extends f> disposables) {
        Objects.requireNonNull(disposables, "disposables is null");
        this.f76152a = new io.reactivex.rxjava3.internal.util.l<>();
        for (f fVar : disposables) {
            Objects.requireNonNull(fVar, "A Disposable item in the disposables sequence is null");
            this.f76152a.a(fVar);
        }
    }
}
