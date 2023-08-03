package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final Object f28795a;

    public l(@NonNull Activity activity) {
        com.google.android.gms.common.internal.u.l(activity, "Activity must not be null");
        this.f28795a = activity;
    }

    @NonNull
    public final Activity a() {
        return (Activity) this.f28795a;
    }

    @NonNull
    public final FragmentActivity b() {
        return (FragmentActivity) this.f28795a;
    }

    public final boolean c() {
        return this.f28795a instanceof Activity;
    }

    public final boolean d() {
        return this.f28795a instanceof FragmentActivity;
    }

    @u2.a
    public l(@NonNull ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }
}
