package com.futuremind.recyclerviewfastscroll.viewprovider;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.futuremind.recyclerviewfastscroll.FastScroller;

/* compiled from: ScrollerViewProvider.java */
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private FastScroller f16114a;

    /* renamed from: b  reason: collision with root package name */
    private d f16115b;

    /* renamed from: c  reason: collision with root package name */
    private d f16116c;

    protected d a() {
        if (this.f16116c == null) {
            this.f16116c = j();
        }
        return this.f16116c;
    }

    public abstract int b();

    /* JADX INFO: Access modifiers changed from: protected */
    public Context c() {
        return this.f16114a.getContext();
    }

    protected d d() {
        if (this.f16115b == null) {
            this.f16115b = m();
        }
        return this.f16115b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FastScroller e() {
        return this.f16114a;
    }

    public void f() {
        if (d() != null) {
            d().a();
        }
        if (a() != null) {
            a().a();
        }
    }

    public void g() {
        if (d() != null) {
            d().b();
        }
        if (a() != null) {
            a().b();
        }
    }

    public void h() {
        if (d() != null) {
            d().c();
        }
        if (a() != null) {
            a().c();
        }
    }

    public void i() {
        if (d() != null) {
            d().d();
        }
        if (a() != null) {
            a().d();
        }
    }

    @Nullable
    protected abstract d j();

    public abstract TextView k();

    public abstract View l(ViewGroup container);

    @Nullable
    protected abstract d m();

    public abstract View n(ViewGroup container);

    public void o(FastScroller scroller) {
        this.f16114a = scroller;
    }
}
