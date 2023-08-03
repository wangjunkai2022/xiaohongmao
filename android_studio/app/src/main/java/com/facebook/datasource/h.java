package com.facebook.datasource;

import com.facebook.common.internal.m;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: IncreasingQualityDataSourceSupplier.java */
@s7.d
/* loaded from: classes.dex */
public class h<T> implements m<d<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final List<m<d<T>>> f11089a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f11090b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IncreasingQualityDataSourceSupplier.java */
    @s7.d
    /* loaded from: classes.dex */
    public class a extends com.facebook.datasource.a<T> {
        @r7.h
        @s7.a("IncreasingQualityDataSource.this")

        /* renamed from: i  reason: collision with root package name */
        private ArrayList<d<T>> f11091i;
        @s7.a("IncreasingQualityDataSource.this")

        /* renamed from: j  reason: collision with root package name */
        private int f11092j;

        /* renamed from: k  reason: collision with root package name */
        private int f11093k;

        /* renamed from: l  reason: collision with root package name */
        private AtomicInteger f11094l;
        @r7.h

        /* renamed from: m  reason: collision with root package name */
        private Throwable f11095m;
        @r7.h

        /* renamed from: n  reason: collision with root package name */
        private Map<String, Object> f11096n;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IncreasingQualityDataSourceSupplier.java */
        /* renamed from: com.facebook.datasource.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0085a implements f<T> {

            /* renamed from: a  reason: collision with root package name */
            private int f11098a;

            public C0085a(int index) {
                this.f11098a = index;
            }

            @Override // com.facebook.datasource.f
            public void a(d<T> dataSource) {
            }

            @Override // com.facebook.datasource.f
            public void b(d<T> dataSource) {
                a.this.H(this.f11098a, dataSource);
            }

            @Override // com.facebook.datasource.f
            public void c(d<T> dataSource) {
                if (dataSource.d()) {
                    a.this.I(this.f11098a, dataSource);
                } else if (dataSource.b()) {
                    a.this.H(this.f11098a, dataSource);
                }
            }

            @Override // com.facebook.datasource.f
            public void d(d<T> dataSource) {
                if (this.f11098a == 0) {
                    a.this.s(dataSource.getProgress());
                }
            }
        }

        public a() {
            if (h.this.f11090b) {
                return;
            }
            B();
        }

        private void A(d<T> dataSource) {
            if (dataSource != null) {
                dataSource.close();
            }
        }

        private void B() {
            if (this.f11094l != null) {
                return;
            }
            synchronized (this) {
                if (this.f11094l == null) {
                    this.f11094l = new AtomicInteger(0);
                    int size = h.this.f11089a.size();
                    this.f11093k = size;
                    this.f11092j = size;
                    this.f11091i = new ArrayList<>(size);
                    for (int i4 = 0; i4 < size; i4++) {
                        d<T> dVar = (d) ((m) h.this.f11089a.get(i4)).get();
                        this.f11091i.add(dVar);
                        dVar.f(new C0085a(i4), com.facebook.common.executors.a.a());
                        if (dVar.d()) {
                            break;
                        }
                    }
                }
            }
        }

        @r7.h
        private synchronized d<T> C(int i4) {
            d<T> dVar;
            ArrayList<d<T>> arrayList = this.f11091i;
            dVar = null;
            if (arrayList != null && i4 < arrayList.size()) {
                dVar = this.f11091i.set(i4, null);
            }
            return dVar;
        }

        @r7.h
        private synchronized d<T> D(int i4) {
            ArrayList<d<T>> arrayList;
            arrayList = this.f11091i;
            return (arrayList == null || i4 >= arrayList.size()) ? null : this.f11091i.get(i4);
        }

        @r7.h
        private synchronized d<T> E() {
            return D(this.f11092j);
        }

        private void F() {
            Throwable th;
            if (this.f11094l.incrementAndGet() != this.f11093k || (th = this.f11095m) == null) {
                return;
            }
            q(th, this.f11096n);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0022 A[LOOP:0: B:17:0x0020->B:18:0x0022, LOOP_END] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void G(int r3, com.facebook.datasource.d<T> r4, boolean r5) {
            /*
                r2 = this;
                monitor-enter(r2)
                int r0 = r2.f11092j     // Catch: java.lang.Throwable -> L2f
                com.facebook.datasource.d r1 = r2.D(r3)     // Catch: java.lang.Throwable -> L2f
                if (r4 != r1) goto L2d
                int r4 = r2.f11092j     // Catch: java.lang.Throwable -> L2f
                if (r3 != r4) goto Le
                goto L2d
            Le:
                com.facebook.datasource.d r4 = r2.E()     // Catch: java.lang.Throwable -> L2f
                if (r4 == 0) goto L1d
                if (r5 == 0) goto L1b
                int r4 = r2.f11092j     // Catch: java.lang.Throwable -> L2f
                if (r3 >= r4) goto L1b
                goto L1d
            L1b:
                r3 = r0
                goto L1f
            L1d:
                r2.f11092j = r3     // Catch: java.lang.Throwable -> L2f
            L1f:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2f
            L20:
                if (r0 <= r3) goto L2c
                com.facebook.datasource.d r4 = r2.C(r0)
                r2.A(r4)
                int r0 = r0 + (-1)
                goto L20
            L2c:
                return
            L2d:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2f
                return
            L2f:
                r3 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2f
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.datasource.h.a.G(int, com.facebook.datasource.d, boolean):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void H(int index, d<T> dataSource) {
            A(J(index, dataSource));
            if (index == 0) {
                this.f11095m = dataSource.e();
                this.f11096n = dataSource.getExtras();
            }
            F();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void I(int index, d<T> dataSource) {
            G(index, dataSource, dataSource.b());
            if (dataSource == E()) {
                v(null, index == 0 && dataSource.b(), dataSource.getExtras());
            }
            F();
        }

        @r7.h
        private synchronized d<T> J(int i4, d<T> dataSource) {
            if (dataSource == E()) {
                return null;
            }
            if (dataSource == D(i4)) {
                return C(i4);
            }
            return dataSource;
        }

        @Override // com.facebook.datasource.a, com.facebook.datasource.d
        @r7.h
        public synchronized T a() {
            d<T> E;
            if (h.this.f11090b) {
                B();
            }
            E = E();
            return E != null ? E.a() : null;
        }

        @Override // com.facebook.datasource.a, com.facebook.datasource.d
        public boolean close() {
            if (h.this.f11090b) {
                B();
            }
            synchronized (this) {
                if (super.close()) {
                    ArrayList<d<T>> arrayList = this.f11091i;
                    this.f11091i = null;
                    if (arrayList != null) {
                        for (int i4 = 0; i4 < arrayList.size(); i4++) {
                            A(arrayList.get(i4));
                        }
                        return true;
                    }
                    return true;
                }
                return false;
            }
        }

        @Override // com.facebook.datasource.a, com.facebook.datasource.d
        public synchronized boolean d() {
            boolean z9;
            if (h.this.f11090b) {
                B();
            }
            d<T> E = E();
            if (E != null) {
                z9 = E.d();
            }
            return z9;
        }
    }

    private h(List<m<d<T>>> dataSourceSuppliers, boolean dataSourceLazy) {
        com.facebook.common.internal.j.e(!dataSourceSuppliers.isEmpty(), "List of suppliers is empty!");
        this.f11089a = dataSourceSuppliers;
        this.f11090b = dataSourceLazy;
    }

    public static <T> h<T> c(List<m<d<T>>> dataSourceSuppliers) {
        return d(dataSourceSuppliers, false);
    }

    public static <T> h<T> d(List<m<d<T>>> dataSourceSuppliers, boolean dataSourceLazy) {
        return new h<>(dataSourceSuppliers, dataSourceLazy);
    }

    @Override // com.facebook.common.internal.m
    /* renamed from: e */
    public d<T> get() {
        return new a();
    }

    public boolean equals(@r7.h Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof h) {
            return com.facebook.common.internal.i.a(this.f11089a, ((h) other).f11089a);
        }
        return false;
    }

    public int hashCode() {
        return this.f11089a.hashCode();
    }

    public String toString() {
        return com.facebook.common.internal.i.e(this).f("list", this.f11089a).toString();
    }
}
