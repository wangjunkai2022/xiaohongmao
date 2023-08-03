package com.airbnb.lottie.utils;

import android.util.Log;
import com.airbnb.lottie.k;
import java.util.HashSet;
import java.util.Set;

/* compiled from: LogcatLogger.java */
/* loaded from: classes.dex */
public class c implements k {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f5626a = new HashSet();

    @Override // com.airbnb.lottie.k
    public void a(String str) {
        c(str, null);
    }

    @Override // com.airbnb.lottie.k
    public void b(String str) {
        d(str, null);
    }

    @Override // com.airbnb.lottie.k
    public void c(String str, Throwable th) {
        Set<String> set = f5626a;
        if (set.contains(str)) {
            return;
        }
        Log.w(com.airbnb.lottie.e.f4247b, str, th);
        set.add(str);
    }

    @Override // com.airbnb.lottie.k
    public void d(String str, Throwable th) {
        if (com.airbnb.lottie.e.f4246a) {
            Log.d(com.airbnb.lottie.e.f4247b, str, th);
        }
    }
}
