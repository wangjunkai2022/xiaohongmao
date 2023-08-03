package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.Feature;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class UnsupportedApiCallException extends UnsupportedOperationException {

    /* renamed from: a  reason: collision with root package name */
    private final Feature f28519a;

    @u2.a
    public UnsupportedApiCallException(@NonNull Feature feature) {
        this.f28519a = feature;
    }

    @Override // java.lang.Throwable
    @NonNull
    public String getMessage() {
        return "Missing ".concat(String.valueOf(this.f28519a));
    }
}
