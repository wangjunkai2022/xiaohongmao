package com.google.firebase;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.y;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class a implements y {
    @Override // com.google.android.gms.common.api.internal.y
    @NonNull
    public final Exception a(@NonNull Status status) {
        if (status.getStatusCode() == 8) {
            return new FirebaseException(status.zza());
        }
        return new FirebaseApiNotAvailableException(status.zza());
    }
}
