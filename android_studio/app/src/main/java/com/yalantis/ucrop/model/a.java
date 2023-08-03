package com.yalantis.ucrop.model;

import android.graphics.Bitmap;
import android.net.Uri;

/* compiled from: CropParameters.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private int f61063a;

    /* renamed from: b  reason: collision with root package name */
    private int f61064b;

    /* renamed from: c  reason: collision with root package name */
    private Bitmap.CompressFormat f61065c;

    /* renamed from: d  reason: collision with root package name */
    private int f61066d;

    /* renamed from: e  reason: collision with root package name */
    private String f61067e;

    /* renamed from: f  reason: collision with root package name */
    private String f61068f;

    /* renamed from: g  reason: collision with root package name */
    private b f61069g;

    /* renamed from: h  reason: collision with root package name */
    private Uri f61070h;

    /* renamed from: i  reason: collision with root package name */
    private Uri f61071i;

    public a(int i4, int i10, Bitmap.CompressFormat compressFormat, int i11, String str, String str2, b bVar) {
        this.f61063a = i4;
        this.f61064b = i10;
        this.f61065c = compressFormat;
        this.f61066d = i11;
        this.f61067e = str;
        this.f61068f = str2;
        this.f61069g = bVar;
    }

    public Bitmap.CompressFormat a() {
        return this.f61065c;
    }

    public int b() {
        return this.f61066d;
    }

    public Uri c() {
        return this.f61070h;
    }

    public Uri d() {
        return this.f61071i;
    }

    public b e() {
        return this.f61069g;
    }

    public String f() {
        return this.f61067e;
    }

    public String g() {
        return this.f61068f;
    }

    public int h() {
        return this.f61063a;
    }

    public int i() {
        return this.f61064b;
    }

    public void j(Uri uri) {
        this.f61070h = uri;
    }

    public void k(Uri uri) {
        this.f61071i = uri;
    }
}
