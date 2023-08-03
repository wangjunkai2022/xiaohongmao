package com.google.android.gms.common.api;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.q;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class s<R extends q> implements r<R> {
    @Override // com.google.android.gms.common.api.r
    @u2.a
    public final void a(@NonNull R r9) {
        Status status = r9.getStatus();
        if (status.isSuccess()) {
            c(r9);
            return;
        }
        b(status);
        if (r9 instanceof n) {
            try {
                ((n) r9).release();
            } catch (RuntimeException e4) {
                Log.w("ResultCallbacks", "Unable to release ".concat(String.valueOf(r9)), e4);
            }
        }
    }

    public abstract void b(@NonNull Status status);

    public abstract void c(@NonNull R r9);
}
