package com.alipay.android.phone.mrpc.core;

/* loaded from: classes.dex */
public final class t extends y {

    /* renamed from: c  reason: collision with root package name */
    private int f6668c;

    /* renamed from: d  reason: collision with root package name */
    private String f6669d;

    /* renamed from: e  reason: collision with root package name */
    private long f6670e;

    /* renamed from: f  reason: collision with root package name */
    private long f6671f;

    /* renamed from: g  reason: collision with root package name */
    private String f6672g;

    /* renamed from: h  reason: collision with root package name */
    private HttpUrlHeader f6673h;

    public t(HttpUrlHeader httpUrlHeader, int i4, String str, byte[] bArr) {
        this.f6673h = httpUrlHeader;
        this.f6668c = i4;
        this.f6669d = str;
        this.f6694a = bArr;
    }

    public final HttpUrlHeader c() {
        return this.f6673h;
    }

    public final void d(long j4) {
        this.f6670e = j4;
    }

    public final void e(String str) {
        this.f6672g = str;
    }

    public final void f(long j4) {
        this.f6671f = j4;
    }
}
