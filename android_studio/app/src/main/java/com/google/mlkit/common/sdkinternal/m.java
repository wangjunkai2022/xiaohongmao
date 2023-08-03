package com.google.mlkit.common.sdkinternal;

import android.net.Uri;
import androidx.annotation.NonNull;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private final String f35809a;

    /* renamed from: b  reason: collision with root package name */
    private final Uri f35810b;

    /* renamed from: c  reason: collision with root package name */
    private final String f35811c;

    /* renamed from: d  reason: collision with root package name */
    private final ModelType f35812d;

    @u2.a
    public m(@NonNull String str, @NonNull Uri uri, @NonNull String str2, @NonNull ModelType modelType) {
        this.f35809a = str;
        this.f35810b = uri;
        this.f35811c = str2;
        this.f35812d = modelType;
    }

    @NonNull
    @u2.a
    public String a() {
        return this.f35811c;
    }

    @NonNull
    @u2.a
    public String b() {
        return this.f35809a;
    }

    @NonNull
    @u2.a
    public ModelType c() {
        return this.f35812d;
    }

    @NonNull
    @u2.a
    public Uri d() {
        return this.f35810b;
    }
}
