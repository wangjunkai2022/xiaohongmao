package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import androidx.annotation.FloatRange;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ShapeData.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.airbnb.lottie.model.a> f4520a;

    /* renamed from: b  reason: collision with root package name */
    private PointF f4521b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f4522c;

    public h(PointF pointF, boolean z9, List<com.airbnb.lottie.model.a> list) {
        this.f4521b = pointF;
        this.f4522c = z9;
        this.f4520a = new ArrayList(list);
    }

    private void e(float f10, float f11) {
        if (this.f4521b == null) {
            this.f4521b = new PointF();
        }
        this.f4521b.set(f10, f11);
    }

    public List<com.airbnb.lottie.model.a> a() {
        return this.f4520a;
    }

    public PointF b() {
        return this.f4521b;
    }

    public void c(h hVar, h hVar2, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (this.f4521b == null) {
            this.f4521b = new PointF();
        }
        this.f4522c = hVar.d() || hVar2.d();
        if (hVar.a().size() != hVar2.a().size()) {
            com.airbnb.lottie.utils.d.d("Curves must have the same number of control points. Shape 1: " + hVar.a().size() + "\tShape 2: " + hVar2.a().size());
        }
        int min = Math.min(hVar.a().size(), hVar2.a().size());
        if (this.f4520a.size() < min) {
            for (int size = this.f4520a.size(); size < min; size++) {
                this.f4520a.add(new com.airbnb.lottie.model.a());
            }
        } else if (this.f4520a.size() > min) {
            for (int size2 = this.f4520a.size() - 1; size2 >= min; size2--) {
                List<com.airbnb.lottie.model.a> list = this.f4520a;
                list.remove(list.size() - 1);
            }
        }
        PointF b10 = hVar.b();
        PointF b11 = hVar2.b();
        e(com.airbnb.lottie.utils.g.j(b10.x, b11.x, f10), com.airbnb.lottie.utils.g.j(b10.y, b11.y, f10));
        for (int size3 = this.f4520a.size() - 1; size3 >= 0; size3--) {
            com.airbnb.lottie.model.a aVar = hVar.a().get(size3);
            com.airbnb.lottie.model.a aVar2 = hVar2.a().get(size3);
            PointF a10 = aVar.a();
            PointF b12 = aVar.b();
            PointF c10 = aVar.c();
            PointF a11 = aVar2.a();
            PointF b13 = aVar2.b();
            PointF c11 = aVar2.c();
            this.f4520a.get(size3).d(com.airbnb.lottie.utils.g.j(a10.x, a11.x, f10), com.airbnb.lottie.utils.g.j(a10.y, a11.y, f10));
            this.f4520a.get(size3).e(com.airbnb.lottie.utils.g.j(b12.x, b13.x, f10), com.airbnb.lottie.utils.g.j(b12.y, b13.y, f10));
            this.f4520a.get(size3).f(com.airbnb.lottie.utils.g.j(c10.x, c11.x, f10), com.airbnb.lottie.utils.g.j(c10.y, c11.y, f10));
        }
    }

    public boolean d() {
        return this.f4522c;
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.f4520a.size() + "closed=" + this.f4522c + '}';
    }

    public h() {
        this.f4520a = new ArrayList();
    }
}
