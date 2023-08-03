package com.facebook.imagepipeline.cache;

import android.net.Uri;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BitmapMemoryCacheKey.java */
@s7.b
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class c implements com.facebook.cache.common.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f12064a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.common.d f12065b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.common.e f12066c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.imagepipeline.common.b f12067d;
    @r7.h

    /* renamed from: e  reason: collision with root package name */
    private final com.facebook.cache.common.c f12068e;
    @r7.h

    /* renamed from: f  reason: collision with root package name */
    private final String f12069f;

    /* renamed from: g  reason: collision with root package name */
    private final int f12070g;
    @r7.h

    /* renamed from: h  reason: collision with root package name */
    private final Object f12071h;

    /* renamed from: i  reason: collision with root package name */
    private final long f12072i;

    public c(String sourceString, @r7.h com.facebook.imagepipeline.common.d resizeOptions, com.facebook.imagepipeline.common.e rotationOptions, com.facebook.imagepipeline.common.b imageDecodeOptions, @r7.h com.facebook.cache.common.c postprocessorCacheKey, @r7.h String postprocessorName, @r7.h Object callerContext) {
        this.f12064a = (String) com.facebook.common.internal.j.i(sourceString);
        this.f12065b = resizeOptions;
        this.f12066c = rotationOptions;
        this.f12067d = imageDecodeOptions;
        this.f12068e = postprocessorCacheKey;
        this.f12069f = postprocessorName;
        this.f12070g = com.facebook.common.util.b.l(Integer.valueOf(sourceString.hashCode()), Integer.valueOf(resizeOptions != null ? resizeOptions.hashCode() : 0), Integer.valueOf(rotationOptions.hashCode()), imageDecodeOptions, postprocessorCacheKey, postprocessorName);
        this.f12071h = callerContext;
        this.f12072i = RealtimeSinceBootClock.get().now();
    }

    @Override // com.facebook.cache.common.c
    public String a() {
        return this.f12064a;
    }

    @Override // com.facebook.cache.common.c
    public boolean b(Uri uri) {
        return a().contains(uri.toString());
    }

    @Override // com.facebook.cache.common.c
    public boolean c() {
        return false;
    }

    @r7.h
    public Object d() {
        return this.f12071h;
    }

    public long e() {
        return this.f12072i;
    }

    @Override // com.facebook.cache.common.c
    public boolean equals(@r7.h Object o9) {
        if (o9 instanceof c) {
            c cVar = (c) o9;
            return this.f12070g == cVar.f12070g && this.f12064a.equals(cVar.f12064a) && com.facebook.common.internal.i.a(this.f12065b, cVar.f12065b) && com.facebook.common.internal.i.a(this.f12066c, cVar.f12066c) && com.facebook.common.internal.i.a(this.f12067d, cVar.f12067d) && com.facebook.common.internal.i.a(this.f12068e, cVar.f12068e) && com.facebook.common.internal.i.a(this.f12069f, cVar.f12069f);
        }
        return false;
    }

    @r7.h
    public String f() {
        return this.f12069f;
    }

    @Override // com.facebook.cache.common.c
    public int hashCode() {
        return this.f12070g;
    }

    @Override // com.facebook.cache.common.c
    public String toString() {
        return String.format(null, "%s_%s_%s_%s_%s_%s_%d", this.f12064a, this.f12065b, this.f12066c, this.f12067d, this.f12068e, this.f12069f, Integer.valueOf(this.f12070g));
    }
}
