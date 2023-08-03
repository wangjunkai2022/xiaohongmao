package com.google.android.gms.common.wrappers;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import y2.d0;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static c f29302b = new c();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private b f29303a = null;

    @NonNull
    @u2.a
    public static b a(@NonNull Context context) {
        return f29302b.b(context);
    }

    @NonNull
    @d0
    public final synchronized b b(@NonNull Context context) {
        if (this.f29303a == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.f29303a = new b(context);
        }
        return this.f29303a;
    }
}
