package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: AndroidPredicates.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a {

    /* compiled from: AndroidPredicates.java */
    /* renamed from: com.facebook.common.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0081a implements k<T> {
        C0081a() {
        }

        @Override // com.facebook.common.internal.k
        public boolean apply(T t9) {
            return true;
        }
    }

    /* compiled from: AndroidPredicates.java */
    /* loaded from: classes.dex */
    static class b implements k<T> {
        b() {
        }

        @Override // com.facebook.common.internal.k
        public boolean apply(T t9) {
            return false;
        }
    }

    private a() {
    }

    public static <T> k<T> a() {
        return new b();
    }

    public static <T> k<T> b() {
        return new C0081a();
    }
}
