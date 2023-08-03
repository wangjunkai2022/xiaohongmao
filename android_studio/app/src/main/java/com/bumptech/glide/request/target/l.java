package com.bumptech.glide.request.target;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: NotificationTarget.java */
/* loaded from: classes.dex */
public class l extends e<Bitmap> {

    /* renamed from: d  reason: collision with root package name */
    private final RemoteViews f9633d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f9634e;

    /* renamed from: f  reason: collision with root package name */
    private final int f9635f;

    /* renamed from: g  reason: collision with root package name */
    private final String f9636g;

    /* renamed from: h  reason: collision with root package name */
    private final Notification f9637h;

    /* renamed from: i  reason: collision with root package name */
    private final int f9638i;

    public l(Context context, int i4, RemoteViews remoteViews, Notification notification, int i10) {
        this(context, i4, remoteViews, notification, i10, null);
    }

    private void c(@Nullable Bitmap bitmap) {
        this.f9633d.setImageViewBitmap(this.f9638i, bitmap);
        d();
    }

    private void d() {
        ((NotificationManager) com.bumptech.glide.util.m.d((NotificationManager) this.f9634e.getSystemService("notification"))).notify(this.f9636g, this.f9635f, this.f9637h);
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

    public l(Context context, int i4, RemoteViews remoteViews, Notification notification, int i10, String str) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i4, remoteViews, notification, i10, str);
    }

    public l(Context context, int i4, int i10, int i11, RemoteViews remoteViews, Notification notification, int i12, String str) {
        super(i4, i10);
        this.f9634e = (Context) com.bumptech.glide.util.m.e(context, "Context must not be null!");
        this.f9637h = (Notification) com.bumptech.glide.util.m.e(notification, "Notification object can not be null!");
        this.f9633d = (RemoteViews) com.bumptech.glide.util.m.e(remoteViews, "RemoteViews object can not be null!");
        this.f9638i = i11;
        this.f9635f = i12;
        this.f9636g = str;
    }
}
