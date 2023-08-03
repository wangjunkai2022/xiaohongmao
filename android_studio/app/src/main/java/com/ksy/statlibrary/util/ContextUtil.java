package com.ksy.statlibrary.util;

import android.content.Context;

/* loaded from: classes3.dex */
public final class ContextUtil {
    private static Context CONTEXT_INSTANCE;

    public static Context getContext() {
        if (CONTEXT_INSTANCE == null) {
            synchronized (ContextUtil.class) {
                if (CONTEXT_INSTANCE == null) {
                    try {
                        Class<?> cls = Class.forName("android.app.ActivityThread");
                        Object invoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(cls, new Object[0]);
                        CONTEXT_INSTANCE = (Context) invoke.getClass().getMethod("getApplication", new Class[0]).invoke(invoke, new Object[0]);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
        return CONTEXT_INSTANCE;
    }
}
