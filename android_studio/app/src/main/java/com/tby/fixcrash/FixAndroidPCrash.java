package com.tby.fixcrash;

/* loaded from: classes3.dex */
public class FixAndroidPCrash {
    static {
        try {
            System.loadLibrary("fixpcrash");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static native void fixAndroidPCrash();
}
