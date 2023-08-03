package com.google.android.play.core.splitinstall;

import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public enum zzo implements u0 {
    INSTANCE;
    

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference f32024a = new AtomicReference(null);

    @Override // com.google.android.play.core.splitinstall.u0
    @Nullable
    public final v0 zza() {
        return (v0) f32024a.get();
    }

    public final void zzb(v0 v0Var) {
        f32024a.set(v0Var);
    }
}
