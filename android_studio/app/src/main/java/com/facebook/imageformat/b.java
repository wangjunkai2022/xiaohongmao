package com.facebook.imageformat;

import com.facebook.common.internal.ImmutableList;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DefaultImageFormats.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final c f11797a = new c("JPEG", "jpeg");

    /* renamed from: b  reason: collision with root package name */
    public static final c f11798b = new c("PNG", "png");

    /* renamed from: c  reason: collision with root package name */
    public static final c f11799c = new c("GIF", "gif");

    /* renamed from: d  reason: collision with root package name */
    public static final c f11800d = new c("BMP", "bmp");

    /* renamed from: e  reason: collision with root package name */
    public static final c f11801e = new c("ICO", "ico");

    /* renamed from: f  reason: collision with root package name */
    public static final c f11802f = new c("WEBP_SIMPLE", "webp");

    /* renamed from: g  reason: collision with root package name */
    public static final c f11803g = new c("WEBP_LOSSLESS", "webp");

    /* renamed from: h  reason: collision with root package name */
    public static final c f11804h = new c("WEBP_EXTENDED", "webp");

    /* renamed from: i  reason: collision with root package name */
    public static final c f11805i = new c("WEBP_EXTENDED_WITH_ALPHA", "webp");

    /* renamed from: j  reason: collision with root package name */
    public static final c f11806j = new c("WEBP_ANIMATED", "webp");

    /* renamed from: k  reason: collision with root package name */
    public static final c f11807k = new c("HEIF", "heif");

    /* renamed from: l  reason: collision with root package name */
    public static final c f11808l = new c("DNG", "dng");

    /* renamed from: m  reason: collision with root package name */
    private static ImmutableList<c> f11809m;

    private b() {
    }

    public static List<c> a() {
        if (f11809m == null) {
            ArrayList arrayList = new ArrayList(9);
            arrayList.add(f11797a);
            arrayList.add(f11798b);
            arrayList.add(f11799c);
            arrayList.add(f11800d);
            arrayList.add(f11801e);
            arrayList.add(f11802f);
            arrayList.add(f11803g);
            arrayList.add(f11804h);
            arrayList.add(f11805i);
            arrayList.add(f11806j);
            arrayList.add(f11807k);
            f11809m = ImmutableList.copyOf((List) arrayList);
        }
        return f11809m;
    }

    public static boolean b(c imageFormat) {
        return imageFormat == f11802f || imageFormat == f11803g || imageFormat == f11804h || imageFormat == f11805i;
    }

    public static boolean c(c imageFormat) {
        return b(imageFormat) || imageFormat == f11806j;
    }
}
