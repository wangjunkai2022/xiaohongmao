package com.google.mlkit.common.sdkinternal;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.j;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public abstract class h<T, S extends j> extends n {
    public h() {
    }

    @NonNull
    @u2.a
    @WorkerThread
    public abstract T j(@NonNull S s9) throws MlKitException;

    @u2.a
    protected h(@NonNull q qVar) {
        super(qVar);
    }
}
