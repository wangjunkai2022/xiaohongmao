package com.google.android.gms.common.api;

import android.app.Activity;
import android.content.IntentSender;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.q;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class o<R extends q> extends s<R> {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f28957a;

    /* renamed from: b  reason: collision with root package name */
    private final int f28958b;

    protected o(@NonNull Activity activity, int i4) {
        com.google.android.gms.common.internal.u.l(activity, "Activity must not be null");
        this.f28957a = activity;
        this.f28958b = i4;
    }

    @Override // com.google.android.gms.common.api.s
    @u2.a
    public final void b(@NonNull Status status) {
        if (status.hasResolution()) {
            try {
                status.startResolutionForResult(this.f28957a, this.f28958b);
                return;
            } catch (IntentSender.SendIntentException e4) {
                Log.e("ResolvingResultCallback", "Failed to start resolution", e4);
                d(new Status(8));
                return;
            }
        }
        d(status);
    }

    @Override // com.google.android.gms.common.api.s
    public abstract void c(@NonNull R r9);

    public abstract void d(@NonNull Status status);
}
