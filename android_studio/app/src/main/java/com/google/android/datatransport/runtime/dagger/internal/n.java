package com.google.android.datatransport.runtime.dagger.internal;

/* compiled from: MembersInjectors.java */
/* loaded from: classes2.dex */
public final class n {

    /* compiled from: MembersInjectors.java */
    /* loaded from: classes2.dex */
    private enum a implements k2.g<Object> {
        INSTANCE;

        @Override // k2.g
        public void a(Object obj) {
            p.c(obj, "Cannot inject members into a null reference");
        }
    }

    private n() {
    }

    public static <T> k2.g<T> a() {
        return a.INSTANCE;
    }
}
