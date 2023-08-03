package com.google.mlkit.common.sdkinternal.model;

import androidx.annotation.NonNull;
import com.google.mlkit.common.model.d;
import java.util.Set;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public interface k<RemoteT extends com.google.mlkit.common.model.d> {
    @NonNull
    @u2.a
    com.google.android.gms.tasks.k<Void> a(@NonNull RemoteT remotet, @NonNull com.google.mlkit.common.model.b bVar);

    @NonNull
    @u2.a
    com.google.android.gms.tasks.k<Set<RemoteT>> b();

    @NonNull
    @u2.a
    com.google.android.gms.tasks.k<Void> c(@NonNull RemoteT remotet);

    @NonNull
    @u2.a
    com.google.android.gms.tasks.k<Boolean> d(@NonNull RemoteT remotet);
}
