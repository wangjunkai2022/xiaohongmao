package io.sentry.android.core.internal.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import androidx.annotation.Nullable;
import io.sentry.SentryLevel;
import io.sentry.android.core.m0;
import io.sentry.o0;
import java.io.ByteArrayOutputStream;
import m8.a;

/* compiled from: ScreenshotUtils.java */
@a.c
/* loaded from: classes4.dex */
public class k {
    @SuppressLint({"NewApi"})
    private static boolean a(@m8.g Activity activity, @m8.g m0 m0Var) {
        if (m0Var.d() >= 17) {
            return (activity.isFinishing() || activity.isDestroyed()) ? false : true;
        }
        return !activity.isFinishing();
    }

    @Nullable
    public static byte[] b(@m8.g Activity activity, @m8.g o0 o0Var, @m8.g m0 m0Var) {
        if (a(activity, m0Var) && activity.getWindow() != null && activity.getWindow().getDecorView() != null && activity.getWindow().getDecorView().getRootView() != null) {
            View rootView = activity.getWindow().getDecorView().getRootView();
            if (rootView.getWidth() > 0 && rootView.getHeight() > 0) {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    Bitmap createBitmap = Bitmap.createBitmap(rootView.getWidth(), rootView.getHeight(), Bitmap.Config.ARGB_8888);
                    rootView.draw(new Canvas(createBitmap));
                    createBitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
                    if (byteArrayOutputStream.size() <= 0) {
                        o0Var.c(SentryLevel.DEBUG, "Screenshot is 0 bytes, not attaching the image.", new Object[0]);
                        byteArrayOutputStream.close();
                        return null;
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                } catch (Throwable th) {
                    o0Var.b(SentryLevel.ERROR, "Taking screenshot failed.", th);
                    return null;
                }
            }
            o0Var.c(SentryLevel.DEBUG, "View's width and height is zeroed, not taking screenshot.", new Object[0]);
            return null;
        }
        o0Var.c(SentryLevel.DEBUG, "Activity isn't valid, not taking screenshot.", new Object[0]);
        return null;
    }
}
