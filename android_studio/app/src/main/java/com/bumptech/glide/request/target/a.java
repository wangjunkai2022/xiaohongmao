package com.bumptech.glide.request.target;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: AppWidgetTarget.java */
/* loaded from: classes.dex */
public class a extends e<Bitmap> {

    /* renamed from: d  reason: collision with root package name */
    private final int[] f9599d;

    /* renamed from: e  reason: collision with root package name */
    private final ComponentName f9600e;

    /* renamed from: f  reason: collision with root package name */
    private final RemoteViews f9601f;

    /* renamed from: g  reason: collision with root package name */
    private final Context f9602g;

    /* renamed from: h  reason: collision with root package name */
    private final int f9603h;

    public a(Context context, int i4, int i10, int i11, RemoteViews remoteViews, int... iArr) {
        super(i4, i10);
        if (iArr.length != 0) {
            this.f9602g = (Context) com.bumptech.glide.util.m.e(context, "Context can not be null!");
            this.f9601f = (RemoteViews) com.bumptech.glide.util.m.e(remoteViews, "RemoteViews object can not be null!");
            this.f9599d = (int[]) com.bumptech.glide.util.m.e(iArr, "WidgetIds can not be null!");
            this.f9603h = i11;
            this.f9600e = null;
            return;
        }
        throw new IllegalArgumentException("WidgetIds must have length > 0");
    }

    private void c(@Nullable Bitmap bitmap) {
        this.f9601f.setImageViewBitmap(this.f9603h, bitmap);
        d();
    }

    private void d() {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.f9602g);
        ComponentName componentName = this.f9600e;
        if (componentName != null) {
            appWidgetManager.updateAppWidget(componentName, this.f9601f);
        } else {
            appWidgetManager.updateAppWidget(this.f9599d, this.f9601f);
        }
    }

    @Override // com.bumptech.glide.request.target.p
    /* renamed from: b */
    public void q(@NonNull Bitmap bitmap, @Nullable com.bumptech.glide.request.transition.f<? super Bitmap> fVar) {
        c(bitmap);
    }

    @Override // com.bumptech.glide.request.target.p
    public void k(@Nullable Drawable drawable) {
        c(null);
    }

    public a(Context context, int i4, RemoteViews remoteViews, int... iArr) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i4, remoteViews, iArr);
    }

    public a(Context context, int i4, int i10, int i11, RemoteViews remoteViews, ComponentName componentName) {
        super(i4, i10);
        this.f9602g = (Context) com.bumptech.glide.util.m.e(context, "Context can not be null!");
        this.f9601f = (RemoteViews) com.bumptech.glide.util.m.e(remoteViews, "RemoteViews object can not be null!");
        this.f9600e = (ComponentName) com.bumptech.glide.util.m.e(componentName, "ComponentName can not be null!");
        this.f9603h = i11;
        this.f9599d = null;
    }

    public a(Context context, int i4, RemoteViews remoteViews, ComponentName componentName) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i4, remoteViews, componentName);
    }
}
