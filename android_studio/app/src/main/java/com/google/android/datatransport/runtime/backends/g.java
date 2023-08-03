package com.google.android.datatransport.runtime.backends;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.backends.a;
import com.google.auto.value.AutoValue;

/* compiled from: BackendRequest.java */
@AutoValue
/* loaded from: classes2.dex */
public abstract class g {

    /* compiled from: BackendRequest.java */
    @AutoValue.Builder
    /* loaded from: classes2.dex */
    public static abstract class a {
        public abstract g a();

        public abstract a b(Iterable<com.google.android.datatransport.runtime.i> iterable);

        public abstract a c(@Nullable byte[] bArr);
    }

    public static a a() {
        return new a.b();
    }

    public static g b(Iterable<com.google.android.datatransport.runtime.i> iterable) {
        return a().b(iterable).a();
    }

    public abstract Iterable<com.google.android.datatransport.runtime.i> c();

    @Nullable
    public abstract byte[] d();
}
