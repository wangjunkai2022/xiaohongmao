package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.m;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f29219a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29220b;

    public z(@NonNull Context context) {
        u.k(context);
        Resources resources = context.getResources();
        this.f29219a = resources;
        this.f29220b = resources.getResourcePackageName(m.b.f29232a);
    }

    @Nullable
    @u2.a
    public String a(@NonNull String str) {
        int identifier = this.f29219a.getIdentifier(str, TypedValues.Custom.S_STRING, this.f29220b);
        if (identifier == 0) {
            return null;
        }
        return this.f29219a.getString(identifier);
    }
}
