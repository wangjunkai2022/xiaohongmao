package com.ksyun.media.streamer.util;

import android.util.Log;

/* loaded from: classes3.dex */
public class LibraryLoader {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46723a = "LibraryLoader";

    public static void load() {
        try {
            System.loadLibrary("ksylive");
        } catch (UnsatisfiedLinkError unused) {
            Log.e(f46723a, "No libksylive.so! Please check");
        }
    }
}
