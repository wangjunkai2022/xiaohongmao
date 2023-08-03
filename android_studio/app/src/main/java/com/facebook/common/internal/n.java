package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: Suppliers.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    public static final m<Boolean> f10984a = new b();

    /* renamed from: b  reason: collision with root package name */
    public static final m<Boolean> f10985b = new c();

    /* compiled from: Suppliers.java */
    /* loaded from: classes.dex */
    static class a implements m<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f10986a;

        a(final Object val$instance) {
            this.f10986a = val$instance;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.lang.Object] */
        @Override // com.facebook.common.internal.m
        public T get() {
            return this.f10986a;
        }
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes.dex */
    static class b implements m<Boolean> {
        b() {
        }

        @Override // com.facebook.common.internal.m
        /* renamed from: a */
        public Boolean get() {
            return Boolean.TRUE;
        }
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes.dex */
    static class c implements m<Boolean> {
        c() {
        }

        @Override // com.facebook.common.internal.m
        /* renamed from: a */
        public Boolean get() {
            return Boolean.FALSE;
        }
    }

    public static <T> m<T> a(final T instance) {
        return new a(instance);
    }
}
