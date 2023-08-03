package com.bumptech.glide.util;

/* compiled from: GlideSuppliers.java */
/* loaded from: classes.dex */
public final class h {

    /* compiled from: GlideSuppliers.java */
    /* loaded from: classes.dex */
    class a implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        private volatile T f9712a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f9713b;

        a(b bVar) {
            this.f9713b = bVar;
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [T, java.lang.Object] */
        @Override // com.bumptech.glide.util.h.b
        public T get() {
            if (this.f9712a == 0) {
                synchronized (this) {
                    if (this.f9712a == 0) {
                        this.f9712a = m.d(this.f9713b.get());
                    }
                }
            }
            return this.f9712a;
        }
    }

    /* compiled from: GlideSuppliers.java */
    /* loaded from: classes.dex */
    public interface b<T> {
        T get();
    }

    private h() {
    }

    public static <T> b<T> a(b<T> bVar) {
        return new a(bVar);
    }
}
