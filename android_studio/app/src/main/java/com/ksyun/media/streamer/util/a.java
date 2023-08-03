package com.ksyun.media.streamer.util;

import android.content.Context;

/* compiled from: ContextUtil.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static Context f46750a;

    public static Context a() {
        if (f46750a == null) {
            synchronized (a.class) {
                if (f46750a == null) {
                    try {
                        Class<?> cls = Class.forName("android.app.ActivityThread");
                        Object invoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(cls, new Object[0]);
                        f46750a = (Context) invoke.getClass().getMethod("getApplication", new Class[0]).invoke(invoke, new Object[0]);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
        return f46750a;
    }
}
