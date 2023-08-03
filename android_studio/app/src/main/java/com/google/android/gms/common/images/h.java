package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.base.k;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    final e f29051a;

    /* renamed from: b  reason: collision with root package name */
    protected int f29052b;

    public h(Uri uri, int i4) {
        this.f29052b = 0;
        this.f29051a = new e(uri);
        this.f29052b = i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(@Nullable Drawable drawable, boolean z9, boolean z10, boolean z11);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(Context context, k kVar, boolean z9) {
        int i4 = this.f29052b;
        a(i4 != 0 ? context.getResources().getDrawable(i4) : null, z9, false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(Context context, Bitmap bitmap, boolean z9) {
        com.google.android.gms.common.internal.d.c(bitmap);
        a(new BitmapDrawable(context.getResources(), bitmap), false, false, true);
    }
}
