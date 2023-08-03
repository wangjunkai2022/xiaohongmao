package com.facebook.datasource;

import com.facebook.common.internal.m;
import java.util.List;

/* compiled from: FirstAvailableDataSourceSupplier.java */
@s7.d
/* loaded from: classes.dex */
public class g<T> implements m<d<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final List<m<d<T>>> f11083a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FirstAvailableDataSourceSupplier.java */
    @s7.d
    /* loaded from: classes.dex */
    public class b extends com.facebook.datasource.a<T> {

        /* renamed from: i  reason: collision with root package name */
        private int f11084i = 0;
        @r7.h

        /* renamed from: j  reason: collision with root package name */
        private d<T> f11085j = null;
        @r7.h

        /* renamed from: k  reason: collision with root package name */
        private d<T> f11086k = null;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: FirstAvailableDataSourceSupplier.java */
        /* loaded from: classes.dex */
        public class a implements f<T> {
            private a() {
            }

            @Override // com.facebook.datasource.f
            public void a(d<T> dataSource) {
            }

            @Override // com.facebook.datasource.f
            public void b(d<T> dataSource) {
                b.this.F(dataSource);
            }

            @Override // com.facebook.datasource.f
            public void c(d<T> dataSource) {
                if (dataSource.d()) {
                    b.this.G(dataSource);
                } else if (dataSource.b()) {
                    b.this.F(dataSource);
                }
            }

            @Override // com.facebook.datasource.f
            public void d(d<T> dataSource) {
                b.this.s(Math.max(b.this.getProgress(), dataSource.getProgress()));
            }
        }

        public b() {
            if (I()) {
                return;
            }
            p(new RuntimeException("No data source supplier or supplier returned null."));
        }

        private synchronized boolean A(d<T> dataSource) {
            if (!isClosed() && dataSource == this.f11085j) {
                this.f11085j = null;
                return true;
            }
            return false;
        }

        private void B(@r7.h d<T> dataSource) {
            if (dataSource != null) {
                dataSource.close();
            }
        }

        @r7.h
        private synchronized d<T> C() {
            return this.f11086k;
        }

        @r7.h
        private synchronized m<d<T>> D() {
            if (isClosed() || this.f11084i >= g.this.f11083a.size()) {
                return null;
            }
            List list = g.this.f11083a;
            int i4 = this.f11084i;
            this.f11084i = i4 + 1;
            return (m) list.get(i4);
        }

        private void E(d<T> dataSource, boolean isFinished) {
            d<T> dVar;
            synchronized (this) {
                if (dataSource == this.f11085j && dataSource != (dVar = this.f11086k)) {
                    if (dVar != null && !isFinished) {
                        dVar = null;
                        B(dVar);
                    }
                    this.f11086k = dataSource;
                    B(dVar);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void F(d<T> dataSource) {
            if (A(dataSource)) {
                if (dataSource != C()) {
                    B(dataSource);
                }
                if (I()) {
                    return;
                }
                q(dataSource.e(), dataSource.getExtras());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void G(d<T> dataSource) {
            E(dataSource, dataSource.b());
            if (dataSource == C()) {
                v(null, dataSource.b(), dataSource.getExtras());
            }
        }

        private synchronized boolean H(d<T> dataSource) {
            if (isClosed()) {
                return false;
            }
            this.f11085j = dataSource;
            return true;
        }

        private boolean I() {
            m<d<T>> D = D();
            d<T> dVar = D != null ? D.get() : null;
            if (H(dVar) && dVar != null) {
                dVar.f(new a(), com.facebook.common.executors.a.a());
                return true;
            }
            B(dVar);
            return false;
        }

        @Override // com.facebook.datasource.a, com.facebook.datasource.d
        @r7.h
        public synchronized T a() {
            d<T> C;
            C = C();
            return C != null ? C.a() : null;
        }

        @Override // com.facebook.datasource.a, com.facebook.datasource.d
        public boolean close() {
            synchronized (this) {
                if (super.close()) {
                    d<T> dVar = this.f11085j;
                    this.f11085j = null;
                    d<T> dVar2 = this.f11086k;
                    this.f11086k = null;
                    B(dVar2);
                    B(dVar);
                    return true;
                }
                return false;
            }
        }

        @Override // com.facebook.datasource.a, com.facebook.datasource.d
        public synchronized boolean d() {
            boolean z9;
            d<T> C = C();
            if (C != null) {
                z9 = C.d();
            }
            return z9;
        }
    }

    private g(List<m<d<T>>> dataSourceSuppliers) {
        com.facebook.common.internal.j.e(!dataSourceSuppliers.isEmpty(), "List of suppliers is empty!");
        this.f11083a = dataSourceSuppliers;
    }

    public static <T> g<T> b(List<m<d<T>>> dataSourceSuppliers) {
        return new g<>(dataSourceSuppliers);
    }

    @Override // com.facebook.common.internal.m
    /* renamed from: c */
    public d<T> get() {
        return new b();
    }

    public boolean equals(@r7.h Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof g) {
            return com.facebook.common.internal.i.a(this.f11083a, ((g) other).f11083a);
        }
        return false;
    }

    public int hashCode() {
        return this.f11083a.hashCode();
    }

    public String toString() {
        return com.facebook.common.internal.i.e(this).f("list", this.f11083a).toString();
    }
}
