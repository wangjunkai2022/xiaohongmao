package com.google.android.exoplayer2.util;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: NotificationUtil.java */
@SuppressLint({"InlinedApi"})
/* loaded from: classes2.dex */
public final class f0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f27539a = -1000;

    /* renamed from: b  reason: collision with root package name */
    public static final int f27540b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static final int f27541c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f27542d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f27543e = 3;

    /* renamed from: f  reason: collision with root package name */
    public static final int f27544f = 4;

    /* compiled from: NotificationUtil.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    private f0() {
    }

    public static void a(Context context, String str, @StringRes int i4, @StringRes int i10, int i11) {
        if (z0.f27743a >= 26) {
            NotificationManager notificationManager = (NotificationManager) com.google.android.exoplayer2.util.a.g((NotificationManager) context.getSystemService("notification"));
            NotificationChannel notificationChannel = new NotificationChannel(str, context.getString(i4), i11);
            if (i10 != 0) {
                notificationChannel.setDescription(context.getString(i10));
            }
            notificationManager.createNotificationChannel(notificationChannel);
        }
    }

    public static void b(Context context, int i4, @Nullable Notification notification) {
        NotificationManager notificationManager = (NotificationManager) com.google.android.exoplayer2.util.a.g((NotificationManager) context.getSystemService("notification"));
        if (notification != null) {
            notificationManager.notify(i4, notification);
        } else {
            notificationManager.cancel(i4);
        }
    }
}
