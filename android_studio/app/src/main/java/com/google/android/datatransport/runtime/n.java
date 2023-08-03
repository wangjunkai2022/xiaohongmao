package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.b;
import com.google.auto.value.AutoValue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SendRequest.java */
@AutoValue
/* loaded from: classes2.dex */
public abstract class n {

    /* compiled from: SendRequest.java */
    @AutoValue.Builder
    /* loaded from: classes2.dex */
    public static abstract class a {
        public abstract n a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a b(com.google.android.datatransport.c cVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a c(com.google.android.datatransport.d<?> dVar);

        public <T> a d(com.google.android.datatransport.d<T> dVar, com.google.android.datatransport.c cVar, com.google.android.datatransport.f<T, byte[]> fVar) {
            c(dVar);
            b(cVar);
            e(fVar);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a e(com.google.android.datatransport.f<?, byte[]> fVar);

        public abstract a f(o oVar);

        public abstract a g(String str);
    }

    public static a a() {
        return new b.C0150b();
    }

    public abstract com.google.android.datatransport.c b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract com.google.android.datatransport.d<?> c();

    public byte[] d() {
        return e().apply(c().b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract com.google.android.datatransport.f<?, byte[]> e();

    public abstract o f();

    public abstract String g();
}
