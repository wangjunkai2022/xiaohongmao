package com.alipay.apmobilesecuritysdk.face;

import android.content.Context;
import java.util.Map;

/* loaded from: classes.dex */
public class e {
    public static synchronized String a(Context context, Map<String, String> map) {
        String b10;
        synchronized (e.class) {
            b10 = new com.alipay.apmobilesecuritysdk.a.a(context).b(map);
        }
        return b10;
    }
}
