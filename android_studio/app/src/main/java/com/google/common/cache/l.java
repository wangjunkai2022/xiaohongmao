package com.google.common.cache;

import com.google.common.base.i0;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: LongAddables.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final i0<k> f32561a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LongAddables.java */
    /* loaded from: classes2.dex */
    public static class a implements i0<k> {
        a() {
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public k get() {
            return new m();
        }
    }

    /* compiled from: LongAddables.java */
    /* loaded from: classes2.dex */
    static class b implements i0<k> {
        b() {
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public k get() {
            return new c(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LongAddables.java */
    /* loaded from: classes2.dex */
    public static final class c extends AtomicLong implements k {
        private c() {
        }

        @Override // com.google.common.cache.k
        public void a(long j4) {
            getAndAdd(j4);
        }

        @Override // com.google.common.cache.k
        public void b() {
            getAndIncrement();
        }

        @Override // com.google.common.cache.k
        public long c() {
            return get();
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }

    static {
        i0<k> bVar;
        try {
            new m();
            bVar = new a();
        } catch (Throwable unused) {
            bVar = new b();
        }
        f32561a = bVar;
    }

    l() {
    }

    public static k a() {
        return f32561a.get();
    }
}
