package io.reactivex.rxjava3.internal.disposables;

import io.reactivex.rxjava3.disposables.f;
import io.reactivex.rxjava3.disposables.g;
import io.reactivex.rxjava3.exceptions.CompositeException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* compiled from: ListCompositeDisposable.java */
/* loaded from: classes4.dex */
public final class a implements f, g {

    /* renamed from: a  reason: collision with root package name */
    List<f> f76178a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f76179b;

    public a() {
    }

    @Override // io.reactivex.rxjava3.disposables.g
    public boolean a(f d4) {
        if (c(d4)) {
            d4.dispose();
            return true;
        }
        return false;
    }

    @Override // io.reactivex.rxjava3.disposables.g
    public boolean b(f d4) {
        Objects.requireNonNull(d4, "d is null");
        if (!this.f76179b) {
            synchronized (this) {
                if (!this.f76179b) {
                    List list = this.f76178a;
                    if (list == null) {
                        list = new LinkedList();
                        this.f76178a = list;
                    }
                    list.add(d4);
                    return true;
                }
            }
        }
        d4.dispose();
        return false;
    }

    @Override // io.reactivex.rxjava3.disposables.g
    public boolean c(f d4) {
        Objects.requireNonNull(d4, "Disposable item is null");
        if (this.f76179b) {
            return false;
        }
        synchronized (this) {
            if (this.f76179b) {
                return false;
            }
            List<f> list = this.f76178a;
            if (list != null && list.remove(d4)) {
                return true;
            }
            return false;
        }
    }

    public boolean d(f... ds) {
        Objects.requireNonNull(ds, "ds is null");
        if (!this.f76179b) {
            synchronized (this) {
                if (!this.f76179b) {
                    List list = this.f76178a;
                    if (list == null) {
                        list = new LinkedList();
                        this.f76178a = list;
                    }
                    for (f fVar : ds) {
                        Objects.requireNonNull(fVar, "d is null");
                        list.add(fVar);
                    }
                    return true;
                }
            }
        }
        for (f fVar2 : ds) {
            fVar2.dispose();
        }
        return false;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        if (this.f76179b) {
            return;
        }
        synchronized (this) {
            if (this.f76179b) {
                return;
            }
            this.f76179b = true;
            List<f> list = this.f76178a;
            this.f76178a = null;
            f(list);
        }
    }

    public void e() {
        if (this.f76179b) {
            return;
        }
        synchronized (this) {
            if (this.f76179b) {
                return;
            }
            List<f> list = this.f76178a;
            this.f76178a = null;
            f(list);
        }
    }

    void f(List<f> set) {
        if (set == null) {
            return;
        }
        ArrayList arrayList = null;
        for (f fVar : set) {
            try {
                fVar.dispose();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th);
            }
        }
        if (arrayList != null) {
            if (arrayList.size() == 1) {
                throw io.reactivex.rxjava3.internal.util.g.i((Throwable) arrayList.get(0));
            }
            throw new CompositeException(arrayList);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f76179b;
    }

    public a(f... resources) {
        Objects.requireNonNull(resources, "resources is null");
        this.f76178a = new LinkedList();
        for (f fVar : resources) {
            Objects.requireNonNull(fVar, "Disposable item is null");
            this.f76178a.add(fVar);
        }
    }

    public a(Iterable<? extends f> resources) {
        Objects.requireNonNull(resources, "resources is null");
        this.f76178a = new LinkedList();
        for (f fVar : resources) {
            Objects.requireNonNull(fVar, "Disposable item is null");
            this.f76178a.add(fVar);
        }
    }
}
