package com.google.android.flexbox;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* compiled from: FlexLine.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: e  reason: collision with root package name */
    int f28235e;

    /* renamed from: f  reason: collision with root package name */
    int f28236f;

    /* renamed from: g  reason: collision with root package name */
    int f28237g;

    /* renamed from: h  reason: collision with root package name */
    int f28238h;

    /* renamed from: i  reason: collision with root package name */
    int f28239i;

    /* renamed from: j  reason: collision with root package name */
    float f28240j;

    /* renamed from: k  reason: collision with root package name */
    float f28241k;

    /* renamed from: l  reason: collision with root package name */
    int f28242l;

    /* renamed from: m  reason: collision with root package name */
    int f28243m;

    /* renamed from: o  reason: collision with root package name */
    int f28245o;

    /* renamed from: p  reason: collision with root package name */
    int f28246p;

    /* renamed from: q  reason: collision with root package name */
    boolean f28247q;

    /* renamed from: r  reason: collision with root package name */
    boolean f28248r;

    /* renamed from: a  reason: collision with root package name */
    int f28231a = Integer.MAX_VALUE;

    /* renamed from: b  reason: collision with root package name */
    int f28232b = Integer.MAX_VALUE;

    /* renamed from: c  reason: collision with root package name */
    int f28233c = Integer.MIN_VALUE;

    /* renamed from: d  reason: collision with root package name */
    int f28234d = Integer.MIN_VALUE;

    /* renamed from: n  reason: collision with root package name */
    List<Integer> f28244n = new ArrayList();

    public int a() {
        return this.f28237g;
    }

    public int b() {
        return this.f28245o;
    }

    public int c() {
        return this.f28238h;
    }

    public int d() {
        return this.f28238h - this.f28239i;
    }

    public int e() {
        return this.f28235e;
    }

    public float f() {
        return this.f28240j;
    }

    public float g() {
        return this.f28241k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(View view, int leftDecoration, int topDecoration, int rightDecoration, int bottomDecoration) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        this.f28231a = Math.min(this.f28231a, (view.getLeft() - flexItem.getMarginLeft()) - leftDecoration);
        this.f28232b = Math.min(this.f28232b, (view.getTop() - flexItem.getMarginTop()) - topDecoration);
        this.f28233c = Math.max(this.f28233c, view.getRight() + flexItem.getMarginRight() + rightDecoration);
        this.f28234d = Math.max(this.f28234d, view.getBottom() + flexItem.getMarginBottom() + bottomDecoration);
    }
}
