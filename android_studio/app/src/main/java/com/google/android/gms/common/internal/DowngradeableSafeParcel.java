package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class DowngradeableSafeParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    private static final Object zza = new Object();
    private boolean zzb = false;

    @u2.a
    protected static boolean canUnparcelSafely(@NonNull String str) {
        synchronized (zza) {
        }
        return true;
    }

    @Nullable
    @u2.a
    protected static Integer getUnparcelClientVersion() {
        synchronized (zza) {
        }
        return null;
    }

    @u2.a
    protected abstract boolean prepareForClientVersion(int i4);

    @u2.a
    public void setShouldDowngrade(boolean z9) {
        this.zzb = z9;
    }

    @u2.a
    protected boolean shouldDowngrade() {
        return this.zzb;
    }
}
