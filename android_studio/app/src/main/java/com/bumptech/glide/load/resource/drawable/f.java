package com.bumptech.glide.load.resource.drawable;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.u;
import java.util.List;

/* compiled from: ResourceDrawableDecoder.java */
/* loaded from: classes.dex */
public class f implements com.bumptech.glide.load.g<Uri, Drawable> {

    /* renamed from: b  reason: collision with root package name */
    private static final String f9344b = "android";

    /* renamed from: c  reason: collision with root package name */
    private static final int f9345c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static final int f9346d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final int f9347e = 0;

    /* renamed from: f  reason: collision with root package name */
    private static final int f9348f = 1;

    /* renamed from: g  reason: collision with root package name */
    private static final int f9349g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final int f9350h = 0;

    /* renamed from: a  reason: collision with root package name */
    private final Context f9351a;

    public f(Context context) {
        this.f9351a = context.getApplicationContext();
    }

    @NonNull
    private Context d(Uri uri, String str) {
        if (str.equals(this.f9351a.getPackageName())) {
            return this.f9351a;
        }
        try {
            return this.f9351a.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e4) {
            if (str.contains(this.f9351a.getPackageName())) {
                return this.f9351a;
            }
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e4);
        }
    }

    @DrawableRes
    private int e(Uri uri) {
        try {
            return Integer.parseInt(uri.getPathSegments().get(0));
        } catch (NumberFormatException e4) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e4);
        }
    }

    @DrawableRes
    private int f(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        String authority = uri.getAuthority();
        String str = pathSegments.get(0);
        String str2 = pathSegments.get(1);
        int identifier = context.getResources().getIdentifier(str2, str, authority);
        if (identifier == 0) {
            identifier = Resources.getSystem().getIdentifier(str2, str, "android");
        }
        if (identifier != 0) {
            return identifier;
        }
        throw new IllegalArgumentException("Failed to find resource id for: " + uri);
    }

    @DrawableRes
    private int g(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            return f(context, uri);
        }
        if (pathSegments.size() == 1) {
            return e(uri);
        }
        throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
    }

    @Override // com.bumptech.glide.load.g
    @Nullable
    /* renamed from: c */
    public u<Drawable> b(@NonNull Uri uri, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        Context d4 = d(uri, uri.getAuthority());
        return e.c(b.b(this.f9351a, d4, g(d4, uri)));
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: h */
    public boolean a(@NonNull Uri uri, @NonNull com.bumptech.glide.load.f fVar) {
        return uri.getScheme().equals(com.facebook.common.util.f.f11058h);
    }
}
