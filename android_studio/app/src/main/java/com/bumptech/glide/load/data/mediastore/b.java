package com.bumptech.glide.load.data.mediastore;

import android.net.Uri;

/* compiled from: MediaStoreUtil.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int f8566a = 512;

    /* renamed from: b  reason: collision with root package name */
    private static final int f8567b = 384;

    private b() {
    }

    public static boolean a(Uri uri) {
        return b(uri) && !e(uri);
    }

    public static boolean b(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static boolean c(Uri uri) {
        return b(uri) && e(uri);
    }

    public static boolean d(int i4, int i10) {
        return i4 != Integer.MIN_VALUE && i10 != Integer.MIN_VALUE && i4 <= 512 && i10 <= 384;
    }

    private static boolean e(Uri uri) {
        return uri.getPathSegments().contains("video");
    }
}
