package com.facebook.imagepipeline.common;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: ImageDecodeOptions.java */
@s7.b
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b {

    /* renamed from: m  reason: collision with root package name */
    private static final b f12173m = b().a();

    /* renamed from: a  reason: collision with root package name */
    public final int f12174a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12175b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f12176c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f12177d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f12178e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f12179f;

    /* renamed from: g  reason: collision with root package name */
    public final Bitmap.Config f12180g;

    /* renamed from: h  reason: collision with root package name */
    public final Bitmap.Config f12181h;
    @h

    /* renamed from: i  reason: collision with root package name */
    public final com.facebook.imagepipeline.decoder.b f12182i;
    @h

    /* renamed from: j  reason: collision with root package name */
    public final t1.a f12183j;
    @h

    /* renamed from: k  reason: collision with root package name */
    public final ColorSpace f12184k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f12185l;

    public b(c b10) {
        this.f12174a = b10.l();
        this.f12175b = b10.k();
        this.f12176c = b10.h();
        this.f12177d = b10.n();
        this.f12178e = b10.g();
        this.f12179f = b10.j();
        this.f12180g = b10.c();
        this.f12181h = b10.b();
        this.f12182i = b10.f();
        this.f12183j = b10.d();
        this.f12184k = b10.e();
        this.f12185l = b10.i();
    }

    public static b a() {
        return f12173m;
    }

    public static c b() {
        return new c();
    }

    protected i.b c() {
        return i.e(this).d("minDecodeIntervalMs", this.f12174a).d("maxDimensionPx", this.f12175b).g("decodePreviewFrame", this.f12176c).g("useLastFrameForPreview", this.f12177d).g("decodeAllFrames", this.f12178e).g("forceStaticImage", this.f12179f).f("bitmapConfigName", this.f12180g.name()).f("animatedBitmapConfigName", this.f12181h.name()).f("customImageDecoder", this.f12182i).f("bitmapTransformation", this.f12183j).f("colorSpace", this.f12184k);
    }

    public boolean equals(@h Object o9) {
        if (this == o9) {
            return true;
        }
        if (o9 == null || getClass() != o9.getClass()) {
            return false;
        }
        b bVar = (b) o9;
        if (this.f12174a == bVar.f12174a && this.f12175b == bVar.f12175b && this.f12176c == bVar.f12176c && this.f12177d == bVar.f12177d && this.f12178e == bVar.f12178e && this.f12179f == bVar.f12179f) {
            boolean z9 = this.f12185l;
            if (z9 || this.f12180g == bVar.f12180g) {
                return (z9 || this.f12181h == bVar.f12181h) && this.f12182i == bVar.f12182i && this.f12183j == bVar.f12183j && this.f12184k == bVar.f12184k;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i4 = (((((((((this.f12174a * 31) + this.f12175b) * 31) + (this.f12176c ? 1 : 0)) * 31) + (this.f12177d ? 1 : 0)) * 31) + (this.f12178e ? 1 : 0)) * 31) + (this.f12179f ? 1 : 0);
        if (!this.f12185l) {
            i4 = (i4 * 31) + this.f12180g.ordinal();
        }
        if (!this.f12185l) {
            int i10 = i4 * 31;
            Bitmap.Config config = this.f12181h;
            i4 = i10 + (config != null ? config.ordinal() : 0);
        }
        int i11 = i4 * 31;
        com.facebook.imagepipeline.decoder.b bVar = this.f12182i;
        int hashCode = (i11 + (bVar != null ? bVar.hashCode() : 0)) * 31;
        t1.a aVar = this.f12183j;
        int hashCode2 = (hashCode + (aVar != null ? aVar.hashCode() : 0)) * 31;
        ColorSpace colorSpace = this.f12184k;
        return hashCode2 + (colorSpace != null ? colorSpace.hashCode() : 0);
    }

    public String toString() {
        return "ImageDecodeOptions{" + c().toString() + com.alipay.sdk.util.i.f6967d;
    }
}
