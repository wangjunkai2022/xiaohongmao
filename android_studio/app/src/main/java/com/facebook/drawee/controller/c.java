package com.facebook.drawee.controller;

import android.graphics.drawable.Animatable;
import r7.h;

/* compiled from: ControllerListener.java */
/* loaded from: classes.dex */
public interface c<INFO> {
    void a(String id, @h INFO imageInfo);

    void b(String id, Throwable throwable);

    void c(String id);

    void d(String id, @h INFO imageInfo, @h Animatable animatable);

    void e(String id, Object callerContext);

    void f(String id, Throwable throwable);
}
