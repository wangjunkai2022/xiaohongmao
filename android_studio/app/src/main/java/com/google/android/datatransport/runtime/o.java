package com.google.android.datatransport.runtime;

import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.c;
import com.google.auto.value.AutoValue;

/* compiled from: TransportContext.java */
@AutoValue
/* loaded from: classes2.dex */
public abstract class o {

    /* compiled from: TransportContext.java */
    @AutoValue.Builder
    /* loaded from: classes2.dex */
    public static abstract class a {
        public abstract o a();

        public abstract a b(String str);

        public abstract a c(@Nullable byte[] bArr);

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public abstract a d(Priority priority);
    }

    public static a a() {
        return new c.b().d(Priority.DEFAULT);
    }

    public abstract String b();

    @Nullable
    public abstract byte[] c();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public abstract Priority d();

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public o e(Priority priority) {
        return a().b(b()).d(priority).c(c()).a();
    }

    public final String toString() {
        Object[] objArr = new Object[3];
        objArr[0] = b();
        objArr[1] = d();
        objArr[2] = c() == null ? "" : Base64.encodeToString(c(), 2);
        return String.format("TransportContext(%s, %s, %s)", objArr);
    }
}
