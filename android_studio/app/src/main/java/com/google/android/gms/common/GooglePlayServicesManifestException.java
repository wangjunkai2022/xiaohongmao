package com.google.android.gms.common;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepName;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@KeepName
/* loaded from: classes2.dex */
public class GooglePlayServicesManifestException extends IllegalStateException {

    /* renamed from: a  reason: collision with root package name */
    private final int f28481a;

    public GooglePlayServicesManifestException(int i4, @NonNull String str) {
        super(str);
        this.f28481a = i4;
    }

    public int getActualVersion() {
        return this.f28481a;
    }

    public int getExpectedVersion() {
        return f.f29004a;
    }
}
