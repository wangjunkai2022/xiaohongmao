package com.qennnsad.aknkaksd.presentation.ui.base.page;

/* compiled from: PageRecorder.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private int f52528a;

    /* renamed from: b  reason: collision with root package name */
    private b f52529b;

    /* renamed from: c  reason: collision with root package name */
    private int f52530c;

    public c() {
        this(new a(1, 1));
    }

    public int a() {
        return this.f52528a;
    }

    public int b() {
        return this.f52529b.a();
    }

    public int c() {
        return this.f52530c;
    }

    public int d() {
        int b10 = this.f52529b.b(this.f52528a);
        int i4 = this.f52530c;
        if (i4 <= 0 || b10 <= i4) {
            return this.f52529b.b(this.f52528a);
        }
        return -1;
    }

    public synchronized void e() {
        this.f52528a = this.f52529b.a();
    }

    public synchronized void f() {
        this.f52528a = this.f52529b.b(this.f52528a);
    }

    public synchronized void g(int i4) {
        this.f52528a = i4;
    }

    public void h(int i4) {
        this.f52530c = i4;
    }

    public c(b bVar) {
        this.f52529b = bVar;
        this.f52528a = bVar.a();
    }
}
