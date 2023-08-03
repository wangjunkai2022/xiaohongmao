package com.facebook.drawee.components;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: RetryManager.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c {

    /* renamed from: d  reason: collision with root package name */
    private static final int f11324d = 4;

    /* renamed from: a  reason: collision with root package name */
    private boolean f11325a;

    /* renamed from: b  reason: collision with root package name */
    private int f11326b;

    /* renamed from: c  reason: collision with root package name */
    private int f11327c;

    public c() {
        a();
    }

    public static c c() {
        return new c();
    }

    public void a() {
        this.f11325a = false;
        this.f11326b = 4;
        e();
    }

    public boolean b() {
        return this.f11325a;
    }

    public void d() {
        this.f11327c++;
    }

    public void e() {
        this.f11327c = 0;
    }

    public void f(int maxTapToRetryAttemps) {
        this.f11326b = maxTapToRetryAttemps;
    }

    public void g(boolean tapToRetryEnabled) {
        this.f11325a = tapToRetryEnabled;
    }

    public boolean h() {
        return this.f11325a && this.f11327c < this.f11326b;
    }
}
