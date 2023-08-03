package com.facebook.datasource;

import com.facebook.common.internal.m;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: RetainingDataSourceSupplier.java */
@s7.c
/* loaded from: classes.dex */
public class i<T> implements m<d<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final Set<b> f11100a = Collections.newSetFromMap(new WeakHashMap());
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private m<d<T>> f11101b = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RetainingDataSourceSupplier.java */
    /* loaded from: classes.dex */
    public static class b<T> extends com.facebook.datasource.a<T> {
        @r7.h
        @s7.a("RetainingDataSource.this")

        /* renamed from: i  reason: collision with root package name */
        private d<T> f11102i;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: RetainingDataSourceSupplier.java */
        /* loaded from: classes.dex */
        public class a implements f<T> {
            private a() {
            }

            @Override // com.facebook.datasource.f
            public void a(d<T> dataSource) {
            }

            @Override // com.facebook.datasource.f
            public void b(d<T> dataSource) {
                b.this.C();
            }

            @Override // com.facebook.datasource.f
            public void c(d<T> dataSource) {
                if (dataSource.d()) {
                    b.this.D(dataSource);
                } else if (dataSource.b()) {
                    b.this.C();
                }
            }

            @Override // com.facebook.datasource.f
            public void d(d<T> dataSource) {
                b.this.E(dataSource);
            }
        }

        private b() {
            this.f11102i = null;
        }

        private static <T> void B(d<T> dataSource) {
            if (dataSource != null) {
                dataSource.close();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void C() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void D(d<T> dataSource) {
            if (dataSource == this.f11102i) {
                v(null, false, dataSource.getExtras());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void E(d<T> dataSource) {
            if (dataSource == this.f11102i) {
                s(dataSource.getProgress());
            }
        }

        public void F(@r7.h m<d<T>> supplier) {
            if (isClosed()) {
                return;
            }
            d<T> dVar = supplier != null ? supplier.get() : null;
            synchronized (this) {
                if (isClosed()) {
                    B(dVar);
                    return;
                }
                d<T> dVar2 = this.f11102i;
                this.f11102i = dVar;
                if (dVar != null) {
                    dVar.f(new a(), com.facebook.common.executors.a.a());
                }
                B(dVar2);
            }
        }

        @Override // com.facebook.datasource.a, com.facebook.datasource.d
        @r7.h
        public synchronized T a() {
            d<T> dVar;
            dVar = this.f11102i;
            return dVar != null ? dVar.a() : null;
        }

        @Override // com.facebook.datasource.a, com.facebook.datasource.d
        public boolean close() {
            synchronized (this) {
                if (super.close()) {
                    d<T> dVar = this.f11102i;
                    this.f11102i = null;
                    B(dVar);
                    return true;
                }
                return false;
            }
        }

        @Override // com.facebook.datasource.a, com.facebook.datasource.d
        public synchronized boolean d() {
            boolean z9;
            d<T> dVar = this.f11102i;
            if (dVar != null) {
                z9 = dVar.d();
            }
            return z9;
        }

        @Override // com.facebook.datasource.a, com.facebook.datasource.d
        public boolean g() {
            return true;
        }
    }

    @Override // com.facebook.common.internal.m
    /* renamed from: a */
    public d<T> get() {
        b bVar = new b();
        bVar.F(this.f11101b);
        this.f11100a.add(bVar);
        return bVar;
    }

    public void b(m<d<T>> supplier) {
        this.f11101b = supplier;
        for (b bVar : this.f11100a) {
            if (!bVar.isClosed()) {
                bVar.F(supplier);
            }
        }
    }
}
