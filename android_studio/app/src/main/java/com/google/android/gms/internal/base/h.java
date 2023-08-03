package com.google.android.gms.internal.base;

import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class h extends Drawable.ConstantState {

    /* renamed from: a  reason: collision with root package name */
    int f29360a;

    /* renamed from: b  reason: collision with root package name */
    int f29361b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(@Nullable h hVar) {
        if (hVar != null) {
            this.f29360a = hVar.f29360a;
            this.f29361b = hVar.f29361b;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.f29360a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new i(this);
    }
}
