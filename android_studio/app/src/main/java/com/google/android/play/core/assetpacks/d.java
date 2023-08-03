package com.google.android.play.core.assetpacks;

import android.content.Context;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class d {
    private d() {
    }

    @NonNull
    public static synchronized c a(@NonNull Context context) {
        c zza;
        synchronized (d.class) {
            zza = j2.a(context).zza();
        }
        return zza;
    }
}
