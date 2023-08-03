package io.reactivex.internal.disposables;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.g;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* compiled from: ListCompositeDisposable.java */
/* loaded from: classes.dex */
public final class b implements io.reactivex.disposables.c, a {

    /* renamed from: a  reason: collision with root package name */
    List<io.reactivex.disposables.c> f71125a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f71126b;

    public b() {
    }

    @Override // io.reactivex.internal.disposables.a
    public boolean a(io.reactivex.disposables.c cVar) {
        if (c(cVar)) {
            cVar.dispose();
            return true;
        }
        return false;
    }

    @Override // io.reactivex.internal.disposables.a
    public boolean b(io.reactivex.disposables.c cVar) {
        io.reactivex.internal.functions.b.g(cVar, "d is null");
        if (!this.f71126b) {
            synchronized (this) {
                if (!this.f71126b) {
                    List list = this.f71125a;
                    if (list == null) {
                        list = new LinkedList();
                        this.f71125a = list;
                    }
                    list.add(cVar);
                    return true;
                }
            }
        }
        cVar.dispose();
        return false;
    }

    @Override // io.reactivex.internal.disposables.a
    public boolean c(io.reactivex.disposables.c cVar) {
        io.reactivex.internal.functions.b.g(cVar, "Disposable item is null");
        if (this.f71126b) {
            return false;
        }
        synchronized (this) {
            if (this.f71126b) {
                return false;
            }
            List<io.reactivex.disposables.c> list = this.f71125a;
            if (list != null && list.remove(cVar)) {
                return true;
            }
            return false;
        }
    }

    public boolean d(io.reactivex.disposables.c... cVarArr) {
        io.reactivex.internal.functions.b.g(cVarArr, "ds is null");
        if (!this.f71126b) {
            synchronized (this) {
                if (!this.f71126b) {
                    List list = this.f71125a;
                    if (list == null) {
                        list = new LinkedList();
                        this.f71125a = list;
                    }
                    for (io.reactivex.disposables.c cVar : cVarArr) {
                        io.reactivex.internal.functions.b.g(cVar, "d is null");
                        list.add(cVar);
                    }
                    return true;
                }
            }
        }
        for (io.reactivex.disposables.c cVar2 : cVarArr) {
            cVar2.dispose();
        }
        return false;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        if (this.f71126b) {
            return;
        }
        synchronized (this) {
            if (this.f71126b) {
                return;
            }
            this.f71126b = true;
            List<io.reactivex.disposables.c> list = this.f71125a;
            this.f71125a = null;
            f(list);
        }
    }

    public void e() {
        if (this.f71126b) {
            return;
        }
        synchronized (this) {
            if (this.f71126b) {
                return;
            }
            List<io.reactivex.disposables.c> list = this.f71125a;
            this.f71125a = null;
            f(list);
        }
    }

    void f(List<io.reactivex.disposables.c> list) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = null;
        for (io.reactivex.disposables.c cVar : list) {
            try {
                cVar.dispose();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th);
            }
        }
        if (arrayList != null) {
            if (arrayList.size() == 1) {
                throw g.f((Throwable) arrayList.get(0));
            }
            throw new CompositeException(arrayList);
        }
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this.f71126b;
    }

    public b(io.reactivex.disposables.c... cVarArr) {
        io.reactivex.internal.functions.b.g(cVarArr, "resources is null");
        this.f71125a = new LinkedList();
        for (io.reactivex.disposables.c cVar : cVarArr) {
            io.reactivex.internal.functions.b.g(cVar, "Disposable item is null");
            this.f71125a.add(cVar);
        }
    }

    public b(Iterable<? extends io.reactivex.disposables.c> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "resources is null");
        this.f71125a = new LinkedList();
        for (io.reactivex.disposables.c cVar : iterable) {
            io.reactivex.internal.functions.b.g(cVar, "Disposable item is null");
            this.f71125a.add(cVar);
        }
    }
}
