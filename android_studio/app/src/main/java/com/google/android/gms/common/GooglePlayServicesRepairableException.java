package com.google.android.gms.common;

import android.content.Intent;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public class GooglePlayServicesRepairableException extends UserRecoverableException {

    /* renamed from: b  reason: collision with root package name */
    private final int f28482b;

    public GooglePlayServicesRepairableException(int i4, @NonNull String str, @NonNull Intent intent) {
        super(str, intent);
        this.f28482b = i4;
    }

    public int getConnectionStatusCode() {
        return this.f28482b;
    }
}
