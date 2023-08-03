package com.facebook.imagepipeline.image;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: OriginalEncodedImageInfo.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class i {

    /* renamed from: g  reason: collision with root package name */
    public static final i f12524g = new i();
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private final Uri f12525a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private final EncodedImageOrigin f12526b;
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    private final Object f12527c;

    /* renamed from: d  reason: collision with root package name */
    private final int f12528d;

    /* renamed from: e  reason: collision with root package name */
    private final int f12529e;

    /* renamed from: f  reason: collision with root package name */
    private final int f12530f;

    private i() {
        this.f12525a = null;
        this.f12526b = EncodedImageOrigin.NOT_SET;
        this.f12527c = null;
        this.f12528d = -1;
        this.f12529e = -1;
        this.f12530f = -1;
    }

    @r7.h
    public Object a() {
        return this.f12527c;
    }

    public int b() {
        return this.f12529e;
    }

    @r7.h
    public EncodedImageOrigin c() {
        return this.f12526b;
    }

    public int d() {
        return this.f12530f;
    }

    @r7.h
    public Uri e() {
        return this.f12525a;
    }

    public int f() {
        return this.f12528d;
    }

    public i(Uri sourceUri, EncodedImageOrigin origin, @r7.h Object callerContext, int width, int height, int size) {
        this.f12525a = sourceUri;
        this.f12526b = origin;
        this.f12527c = callerContext;
        this.f12528d = width;
        this.f12529e = height;
        this.f12530f = size;
    }
}
