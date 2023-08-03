package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public interface g2 {
    void a();

    void b();

    void c();

    void d();

    boolean e(w wVar);

    void f(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr);

    @Nullable
    ConnectionResult g(@NonNull com.google.android.gms.common.api.a<?> aVar);

    boolean h();

    ConnectionResult i(long j4, TimeUnit timeUnit);

    <A extends a.b, R extends com.google.android.gms.common.api.q, T extends e.a<R, A>> T j(@NonNull T t9);

    boolean k();

    <A extends a.b, T extends e.a<? extends com.google.android.gms.common.api.q, A>> T l(@NonNull T t9);

    ConnectionResult zab();
}
