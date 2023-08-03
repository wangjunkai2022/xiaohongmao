package io.reactivex.disposables;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.l;
import java.util.ArrayList;

/* compiled from: CompositeDisposable.java */
/* loaded from: classes3.dex */
public final class b implements c, io.reactivex.internal.disposables.a {

    /* renamed from: a  reason: collision with root package name */
    l<c> f71084a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f71085b;

    public b() {
    }

    @Override // io.reactivex.internal.disposables.a
    public boolean a(@m7.e c cVar) {
        if (c(cVar)) {
            cVar.dispose();
            return true;
        }
        return false;
    }

    @Override // io.reactivex.internal.disposables.a
    public boolean b(@m7.e c cVar) {
        io.reactivex.internal.functions.b.g(cVar, "disposable is null");
        if (!this.f71085b) {
            synchronized (this) {
                if (!this.f71085b) {
                    l<c> lVar = this.f71084a;
                    if (lVar == null) {
                        lVar = new l<>();
                        this.f71084a = lVar;
                    }
                    lVar.a(cVar);
                    return true;
                }
            }
        }
        cVar.dispose();
        return false;
    }

    @Override // io.reactivex.internal.disposables.a
    public boolean c(@m7.e c cVar) {
        io.reactivex.internal.functions.b.g(cVar, "disposables is null");
        if (this.f71085b) {
            return false;
        }
        synchronized (this) {
            if (this.f71085b) {
                return false;
            }
            l<c> lVar = this.f71084a;
            if (lVar != null && lVar.e(cVar)) {
                return true;
            }
            return false;
        }
    }

    public boolean d(@m7.e c... cVarArr) {
        io.reactivex.internal.functions.b.g(cVarArr, "disposables is null");
        if (!this.f71085b) {
            synchronized (this) {
                if (!this.f71085b) {
                    l<c> lVar = this.f71084a;
                    if (lVar == null) {
                        lVar = new l<>(cVarArr.length + 1);
                        this.f71084a = lVar;
                    }
                    for (c cVar : cVarArr) {
                        io.reactivex.internal.functions.b.g(cVar, "A Disposable in the disposables array is null");
                        lVar.a(cVar);
                    }
                    return true;
                }
            }
        }
        for (c cVar2 : cVarArr) {
            cVar2.dispose();
        }
        return false;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        if (this.f71085b) {
            return;
        }
        synchronized (this) {
            if (this.f71085b) {
                return;
            }
            this.f71085b = true;
            l<c> lVar = this.f71084a;
            this.f71084a = null;
            f(lVar);
        }
    }

    public void e() {
        if (this.f71085b) {
            return;
        }
        synchronized (this) {
            if (this.f71085b) {
                return;
            }
            l<c> lVar = this.f71084a;
            this.f71084a = null;
            f(lVar);
        }
    }

    void f(l<c> lVar) {
        Object[] b10;
        if (lVar == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : lVar.b()) {
            if (obj instanceof c) {
                try {
                    ((c) obj).dispose();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th);
                }
            }
        }
        if (arrayList != null) {
            if (arrayList.size() == 1) {
                throw io.reactivex.internal.util.g.f((Throwable) arrayList.get(0));
            }
            throw new CompositeException(arrayList);
        }
    }

    public int g() {
        if (this.f71085b) {
            return 0;
        }
        synchronized (this) {
            if (this.f71085b) {
                return 0;
            }
            l<c> lVar = this.f71084a;
            return lVar != null ? lVar.g() : 0;
        }
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this.f71085b;
    }

    public b(@m7.e c... cVarArr) {
        io.reactivex.internal.functions.b.g(cVarArr, "disposables is null");
        this.f71084a = new l<>(cVarArr.length + 1);
        for (c cVar : cVarArr) {
            io.reactivex.internal.functions.b.g(cVar, "A Disposable in the disposables array is null");
            this.f71084a.a(cVar);
        }
    }

    public b(@m7.e Iterable<? extends c> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "disposables is null");
        this.f71084a = new l<>();
        for (c cVar : iterable) {
            io.reactivex.internal.functions.b.g(cVar, "A Disposable item in the disposables sequence is null");
            this.f71084a.a(cVar);
        }
    }
}
