package com.bumptech.glide.request.transition;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.transition.f;

/* compiled from: NoTransition.java */
/* loaded from: classes.dex */
public class e<R> implements f<R> {

    /* renamed from: a  reason: collision with root package name */
    static final e<?> f9671a = new e<>();

    /* renamed from: b  reason: collision with root package name */
    private static final g<?> f9672b = new a();

    /* compiled from: NoTransition.java */
    /* loaded from: classes.dex */
    public static class a<R> implements g<R> {
        @Override // com.bumptech.glide.request.transition.g
        public f<R> a(DataSource dataSource, boolean z9) {
            return e.f9671a;
        }
    }

    public static <R> f<R> b() {
        return f9671a;
    }

    public static <R> g<R> c() {
        return (g<R>) f9672b;
    }

    @Override // com.bumptech.glide.request.transition.f
    public boolean a(Object obj, f.a aVar) {
        return false;
    }
}
