package com.alipay.apmobilesecuritysdk.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b extends Thread {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f6698a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f6699b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f6700c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ a f6701d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, String str, String str2, String str3) {
        this.f6701d = aVar;
        this.f6698a = str;
        this.f6699b = str2;
        this.f6700c = str3;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        a.c(this.f6701d, this.f6698a, this.f6699b, this.f6700c);
    }
}
