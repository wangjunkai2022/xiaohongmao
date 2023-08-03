package com.tangxiaolv.telegramgallery;

import android.app.Application;
import android.os.Handler;

/* compiled from: Gallery.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static volatile Application f56717a;

    /* renamed from: b  reason: collision with root package name */
    public static volatile Handler f56718b;

    public static void a(Application application) {
        if (f56717a == null) {
            f56717a = application;
            f56718b = new Handler(application.getMainLooper());
        }
    }
}
