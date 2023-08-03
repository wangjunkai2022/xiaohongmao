package com.airbnb.lottie.manager;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.model.h;
import com.airbnb.lottie.utils.d;
import java.util.HashMap;
import java.util.Map;

/* compiled from: FontAssetManager.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: d  reason: collision with root package name */
    private final AssetManager f4387d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private com.airbnb.lottie.c f4388e;

    /* renamed from: a  reason: collision with root package name */
    private final h<String> f4384a = new h<>();

    /* renamed from: b  reason: collision with root package name */
    private final Map<h<String>, Typeface> f4385b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Typeface> f4386c = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private String f4389f = ".ttf";

    public a(Drawable.Callback callback, @Nullable com.airbnb.lottie.c cVar) {
        this.f4388e = cVar;
        if (!(callback instanceof View)) {
            d.d("LottieDrawable must be inside of a view for images to work.");
            this.f4387d = null;
            return;
        }
        this.f4387d = ((View) callback).getContext().getAssets();
    }

    private Typeface a(String str) {
        String b10;
        Typeface typeface = this.f4386c.get(str);
        if (typeface != null) {
            return typeface;
        }
        com.airbnb.lottie.c cVar = this.f4388e;
        Typeface a10 = cVar != null ? cVar.a(str) : null;
        com.airbnb.lottie.c cVar2 = this.f4388e;
        if (cVar2 != null && a10 == null && (b10 = cVar2.b(str)) != null) {
            a10 = Typeface.createFromAsset(this.f4387d, b10);
        }
        if (a10 == null) {
            a10 = Typeface.createFromAsset(this.f4387d, "fonts/" + str + this.f4389f);
        }
        this.f4386c.put(str, a10);
        return a10;
    }

    private Typeface e(Typeface typeface, String str) {
        boolean contains = str.contains("Italic");
        boolean contains2 = str.contains("Bold");
        int i4 = (contains && contains2) ? 3 : contains ? 2 : contains2 ? 1 : 0;
        return typeface.getStyle() == i4 ? typeface : Typeface.create(typeface, i4);
    }

    public Typeface b(String str, String str2) {
        this.f4384a.b(str, str2);
        Typeface typeface = this.f4385b.get(this.f4384a);
        if (typeface != null) {
            return typeface;
        }
        Typeface e4 = e(a(str), str2);
        this.f4385b.put(this.f4384a, e4);
        return e4;
    }

    public void c(String str) {
        this.f4389f = str;
    }

    public void d(@Nullable com.airbnb.lottie.c cVar) {
        this.f4388e = cVar;
    }
}
