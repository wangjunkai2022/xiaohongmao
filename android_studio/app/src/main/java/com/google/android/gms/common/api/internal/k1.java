package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.e;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public interface k1 {
    void a(@Nullable Bundle bundle);

    void b();

    void c();

    void d(ConnectionResult connectionResult, com.google.android.gms.common.api.a<?> aVar, boolean z9);

    void e(int i4);

    <A extends a.b, R extends com.google.android.gms.common.api.q, T extends e.a<R, A>> T f(T t9);

    boolean g();

    <A extends a.b, T extends e.a<? extends com.google.android.gms.common.api.q, A>> T h(T t9);
}
