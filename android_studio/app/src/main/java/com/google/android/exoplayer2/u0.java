package com.google.android.exoplayer2;

import android.os.Build;
import java.util.HashSet;

/* compiled from: ExoPlayerLibraryInfo.java */
/* loaded from: classes2.dex */
public final class u0 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f26067a = "ExoPlayer";

    /* renamed from: b  reason: collision with root package name */
    public static final String f26068b = "2.14.2";

    /* renamed from: c  reason: collision with root package name */
    public static final String f26069c = "ExoPlayerLib/2.14.2";

    /* renamed from: d  reason: collision with root package name */
    public static final int f26070d = 2014002;
    @Deprecated

    /* renamed from: e  reason: collision with root package name */
    public static final String f26071e;

    /* renamed from: f  reason: collision with root package name */
    public static final boolean f26072f = true;

    /* renamed from: g  reason: collision with root package name */
    public static final boolean f26073g = false;

    /* renamed from: h  reason: collision with root package name */
    public static final boolean f26074h = true;

    /* renamed from: i  reason: collision with root package name */
    private static final HashSet<String> f26075i;

    /* renamed from: j  reason: collision with root package name */
    private static String f26076j;

    static {
        String str = Build.VERSION.RELEASE;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 57);
        sb.append("ExoPlayerLib/2.14.2 (Linux; Android ");
        sb.append(str);
        sb.append(") ");
        sb.append(f26069c);
        f26071e = sb.toString();
        f26075i = new HashSet<>();
        f26076j = "goog.exo.core";
    }

    private u0() {
    }

    public static synchronized void a(String str) {
        synchronized (u0.class) {
            if (f26075i.add(str)) {
                String str2 = f26076j;
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 2 + String.valueOf(str).length());
                sb.append(str2);
                sb.append(", ");
                sb.append(str);
                f26076j = sb.toString();
            }
        }
    }

    public static synchronized String b() {
        String str;
        synchronized (u0.class) {
            str = f26076j;
        }
        return str;
    }
}
