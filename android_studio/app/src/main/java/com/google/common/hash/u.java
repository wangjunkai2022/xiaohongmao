package com.google.common.hash;

import com.google.common.base.i0;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: LongAddables.java */
/* loaded from: classes2.dex */
final class u {

    /* renamed from: a  reason: collision with root package name */
    private static final i0<t> f34344a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LongAddables.java */
    /* loaded from: classes2.dex */
    public static class a implements i0<t> {
        a() {
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public t get() {
            return new v();
        }
    }

    /* compiled from: LongAddables.java */
    /* loaded from: classes2.dex */
    static class b implements i0<t> {
        b() {
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public t get() {
            return new c(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LongAddables.java */
    /* loaded from: classes2.dex */
    public static final class c extends AtomicLong implements t {
        private c() {
        }

        @Override // com.google.common.hash.t
        public void a(long j4) {
            getAndAdd(j4);
        }

        @Override // com.google.common.hash.t
        public void b() {
            getAndIncrement();
        }

        @Override // com.google.common.hash.t
        public long c() {
            return get();
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }

    static {
        i0<t> bVar;
        try {
            new v();
            bVar = new a();
        } catch (Throwable unused) {
            bVar = new b();
        }
        f34344a = bVar;
    }

    u() {
    }

    public static t a() {
        return f34344a.get();
    }
}
