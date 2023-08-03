package com.google.mlkit.common.sdkinternal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final o3.b f35793a;

    public f(@NonNull o3.b bVar) {
        this.f35793a = bVar;
    }

    @NonNull
    @u2.a
    public Executor a(@Nullable Executor executor) {
        return executor != null ? executor : (Executor) this.f35793a.get();
    }
}
