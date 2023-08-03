package com.facebook.imagepipeline.datasource;

import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;

/* compiled from: ListDataSource.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class f<T> extends com.facebook.datasource.a<List<com.facebook.common.references.a<T>>> {

    /* renamed from: i  reason: collision with root package name */
    private final com.facebook.datasource.d<com.facebook.common.references.a<T>>[] f12458i;
    @s7.a("this")

    /* renamed from: j  reason: collision with root package name */
    private int f12459j = 0;

    /* compiled from: ListDataSource.java */
    /* loaded from: classes.dex */
    private class b implements com.facebook.datasource.f<com.facebook.common.references.a<T>> {
        @s7.a("InternalDataSubscriber.this")

        /* renamed from: a  reason: collision with root package name */
        boolean f12460a;

        private b() {
            this.f12460a = false;
        }

        private synchronized boolean e() {
            if (this.f12460a) {
                return false;
            }
            this.f12460a = true;
            return true;
        }

        @Override // com.facebook.datasource.f
        public void a(com.facebook.datasource.d<com.facebook.common.references.a<T>> dataSource) {
            f.this.F();
        }

        @Override // com.facebook.datasource.f
        public void b(com.facebook.datasource.d<com.facebook.common.references.a<T>> dataSource) {
            f.this.G(dataSource);
        }

        @Override // com.facebook.datasource.f
        public void c(com.facebook.datasource.d<com.facebook.common.references.a<T>> dataSource) {
            if (dataSource.b() && e()) {
                f.this.H();
            }
        }

        @Override // com.facebook.datasource.f
        public void d(com.facebook.datasource.d<com.facebook.common.references.a<T>> dataSource) {
            f.this.I();
        }
    }

    protected f(com.facebook.datasource.d<com.facebook.common.references.a<T>>[] dataSources) {
        this.f12458i = dataSources;
    }

    public static <T> f<T> C(com.facebook.datasource.d<com.facebook.common.references.a<T>>... dataSources) {
        j.i(dataSources);
        j.o(dataSources.length > 0);
        f<T> fVar = new f<>(dataSources);
        for (com.facebook.datasource.d<com.facebook.common.references.a<T>> dVar : dataSources) {
            if (dVar != null) {
                dVar.f(new b(), com.facebook.common.executors.a.a());
            }
        }
        return fVar;
    }

    private synchronized boolean E() {
        int i4;
        i4 = this.f12459j + 1;
        this.f12459j = i4;
        return i4 == this.f12458i.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        p(new CancellationException());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(com.facebook.datasource.d<com.facebook.common.references.a<T>> dataSource) {
        Throwable e4 = dataSource.e();
        if (e4 == null) {
            e4 = new Throwable("Unknown failure cause");
        }
        p(e4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        if (E()) {
            v(null, true, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        float f10 = 0.0f;
        for (com.facebook.datasource.d<com.facebook.common.references.a<T>> dVar : this.f12458i) {
            f10 += dVar.getProgress();
        }
        s(f10 / this.f12458i.length);
    }

    @Override // com.facebook.datasource.a, com.facebook.datasource.d
    @r7.h
    /* renamed from: D */
    public synchronized List<com.facebook.common.references.a<T>> a() {
        if (d()) {
            ArrayList arrayList = new ArrayList(this.f12458i.length);
            for (com.facebook.datasource.d<com.facebook.common.references.a<T>> dVar : this.f12458i) {
                arrayList.add(dVar.a());
            }
            return arrayList;
        }
        return null;
    }

    @Override // com.facebook.datasource.a, com.facebook.datasource.d
    public boolean close() {
        if (super.close()) {
            for (com.facebook.datasource.d<com.facebook.common.references.a<T>> dVar : this.f12458i) {
                dVar.close();
            }
            return true;
        }
        return false;
    }

    @Override // com.facebook.datasource.a, com.facebook.datasource.d
    public synchronized boolean d() {
        boolean z9;
        if (!isClosed()) {
            z9 = this.f12459j == this.f12458i.length;
        }
        return z9;
    }
}
