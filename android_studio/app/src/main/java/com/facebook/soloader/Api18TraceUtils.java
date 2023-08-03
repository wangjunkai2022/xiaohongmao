package com.facebook.soloader;

import android.annotation.TargetApi;
import android.os.Trace;

@d
@TargetApi(18)
/* loaded from: classes.dex */
class Api18TraceUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final int f13409a = 127;

    Api18TraceUtils() {
    }

    public static void a(String str, @r7.h String str2, String str3) {
        String str4 = str + str2 + str3;
        if (str4.length() > 127 && str2 != null) {
            int length = (127 - str.length()) - str3.length();
            str4 = str + str2.substring(0, length) + str3;
        }
        Trace.beginSection(str4);
    }

    public static void b() {
        Trace.endSection();
    }
}
