package com.facebook.imageutils;

import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: TiffUtil.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
class e {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f13397a = e.class;

    /* renamed from: b  reason: collision with root package name */
    public static final int f13398b = 1296891946;

    /* renamed from: c  reason: collision with root package name */
    public static final int f13399c = 1229531648;

    /* renamed from: d  reason: collision with root package name */
    public static final int f13400d = 274;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13401e = 3;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TiffUtil.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        boolean f13402a;

        /* renamed from: b  reason: collision with root package name */
        int f13403b;

        /* renamed from: c  reason: collision with root package name */
        int f13404c;

        private b() {
        }
    }

    e() {
    }

    public static int a(int orientation) {
        if (orientation != 3) {
            if (orientation != 6) {
                if (orientation != 8) {
                    return 0;
                }
                return com.facebook.imagepipeline.common.e.f12206f;
            }
            return 90;
        }
        return com.facebook.imagepipeline.common.e.f12205e;
    }

    private static int b(InputStream is, int length, boolean isLittleEndian) throws IOException {
        if (length >= 10 && d.a(is, 2, isLittleEndian) == 3 && d.a(is, 4, isLittleEndian) == 1) {
            return d.a(is, 2, isLittleEndian);
        }
        return 0;
    }

    private static int c(InputStream is, int length, boolean isLittleEndian, int tagToFind) throws IOException {
        if (length < 14) {
            return 0;
        }
        int a10 = d.a(is, 2, isLittleEndian);
        int i4 = length - 2;
        while (true) {
            int i10 = a10 - 1;
            if (a10 <= 0 || i4 < 12) {
                break;
            }
            int i11 = i4 - 2;
            if (d.a(is, 2, isLittleEndian) == tagToFind) {
                return i11;
            }
            is.skip(10L);
            i4 = i11 - 10;
            a10 = i10;
        }
        return 0;
    }

    public static int d(InputStream is, int length) throws IOException {
        b bVar = new b();
        int e4 = e(is, length, bVar);
        int i4 = bVar.f13404c - 8;
        if (e4 == 0 || i4 > e4) {
            return 0;
        }
        is.skip(i4);
        return b(is, c(is, e4 - i4, bVar.f13402a, f13400d), bVar.f13402a);
    }

    private static int e(InputStream is, int length, b tiffHeader) throws IOException {
        if (length <= 8) {
            return 0;
        }
        int a10 = d.a(is, 4, false);
        tiffHeader.f13403b = a10;
        int i4 = length - 4;
        if (a10 != 1229531648 && a10 != 1296891946) {
            p0.a.q(f13397a, "Invalid TIFF header");
            return 0;
        }
        boolean z9 = a10 == 1229531648;
        tiffHeader.f13402a = z9;
        int a11 = d.a(is, 4, z9);
        tiffHeader.f13404c = a11;
        int i10 = i4 - 4;
        if (a11 < 8 || a11 - 8 > i10) {
            p0.a.q(f13397a, "Invalid offset");
            return 0;
        }
        return i10;
    }
}
