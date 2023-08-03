package com.tao.admin.loglib;

import android.app.Application;
import android.content.Context;

/* loaded from: classes3.dex */
public class TLogApplication extends Application {
    private static Context mContenx;

    public static Context getAPP() {
        return mContenx;
    }

    public static void initialize(Context context) {
        mContenx = context;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        mContenx = this;
    }
}
