package com.airbnb.lottie.manager;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.d;
import com.airbnb.lottie.i;
import com.airbnb.lottie.utils.h;
import com.fasterxml.jackson.core.e;
import com.qennnsad.aknkaksd.util.a1;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ImageAssetManager.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: e  reason: collision with root package name */
    private static final Object f4390e = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final Context f4391a;

    /* renamed from: b  reason: collision with root package name */
    private String f4392b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private d f4393c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, i> f4394d;

    public b(Drawable.Callback callback, String str, d dVar, Map<String, i> map) {
        String str2;
        this.f4392b = str;
        if (!TextUtils.isEmpty(str)) {
            if (this.f4392b.charAt(str2.length() - 1) != '/') {
                this.f4392b += e.f13819f;
            }
        }
        if (!(callback instanceof View)) {
            com.airbnb.lottie.utils.d.d("LottieDrawable must be inside of a view for images to work.");
            this.f4394d = new HashMap();
            this.f4391a = null;
            return;
        }
        this.f4391a = ((View) callback).getContext();
        this.f4394d = map;
        d(dVar);
    }

    private Bitmap c(String str, @Nullable Bitmap bitmap) {
        synchronized (f4390e) {
            this.f4394d.get(str).g(bitmap);
        }
        return bitmap;
    }

    @Nullable
    public Bitmap a(String str) {
        i iVar = this.f4394d.get(str);
        if (iVar == null) {
            return null;
        }
        Bitmap a10 = iVar.a();
        if (a10 != null) {
            return a10;
        }
        d dVar = this.f4393c;
        if (dVar != null) {
            Bitmap a11 = dVar.a(iVar);
            if (a11 != null) {
                c(str, a11);
            }
            return a11;
        }
        String c10 = iVar.c();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = a1.f54532a;
        if (c10.startsWith("data:") && c10.indexOf("base64,") > 0) {
            try {
                byte[] decode = Base64.decode(c10.substring(c10.indexOf(44) + 1), 0);
                return c(str, BitmapFactory.decodeByteArray(decode, 0, decode.length, options));
            } catch (IllegalArgumentException e4) {
                com.airbnb.lottie.utils.d.e("data URL did not have correct base64 format.", e4);
                return null;
            }
        }
        try {
            if (!TextUtils.isEmpty(this.f4392b)) {
                AssetManager assets = this.f4391a.getAssets();
                return c(str, h.m(BitmapFactory.decodeStream(assets.open(this.f4392b + c10), null, options), iVar.f(), iVar.d()));
            }
            throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
        } catch (IOException e10) {
            com.airbnb.lottie.utils.d.e("Unable to open asset.", e10);
            return null;
        }
    }

    public boolean b(Context context) {
        return (context == null && this.f4391a == null) || this.f4391a.equals(context);
    }

    public void d(@Nullable d dVar) {
        this.f4393c = dVar;
    }

    @Nullable
    public Bitmap e(String str, @Nullable Bitmap bitmap) {
        if (bitmap == null) {
            i iVar = this.f4394d.get(str);
            Bitmap a10 = iVar.a();
            iVar.g(null);
            return a10;
        }
        Bitmap a11 = this.f4394d.get(str).a();
        c(str, bitmap);
        return a11;
    }
}
