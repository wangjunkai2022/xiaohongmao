package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.keyframe.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* compiled from: RepeaterContent.java */
/* loaded from: classes.dex */
public class q implements e, n, j, a.InterfaceC0031a, k {

    /* renamed from: a  reason: collision with root package name */
    private final Matrix f4173a = new Matrix();

    /* renamed from: b  reason: collision with root package name */
    private final Path f4174b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.h f4175c;

    /* renamed from: d  reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f4176d;

    /* renamed from: e  reason: collision with root package name */
    private final String f4177e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f4178f;

    /* renamed from: g  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Float, Float> f4179g;

    /* renamed from: h  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Float, Float> f4180h;

    /* renamed from: i  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.o f4181i;

    /* renamed from: j  reason: collision with root package name */
    private d f4182j;

    public q(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.g gVar) {
        this.f4175c = hVar;
        this.f4176d = aVar;
        this.f4177e = gVar.c();
        this.f4178f = gVar.f();
        com.airbnb.lottie.animation.keyframe.a<Float, Float> a10 = gVar.b().a();
        this.f4179g = a10;
        aVar.h(a10);
        a10.a(this);
        com.airbnb.lottie.animation.keyframe.a<Float, Float> a11 = gVar.d().a();
        this.f4180h = a11;
        aVar.h(a11);
        a11.a(this);
        com.airbnb.lottie.animation.keyframe.o b10 = gVar.e().b();
        this.f4181i = b10;
        b10.a(aVar);
        b10.b(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0031a
    public void a() {
        this.f4175c.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void b(List<c> list, List<c> list2) {
        this.f4182j.b(list, list2);
    }

    @Override // com.airbnb.lottie.model.e
    public <T> void c(T t9, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        if (this.f4181i.c(t9, jVar)) {
            return;
        }
        if (t9 == com.airbnb.lottie.m.f4374q) {
            this.f4179g.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.f4375r) {
            this.f4180h.m(jVar);
        }
    }

    @Override // com.airbnb.lottie.model.e
    public void d(com.airbnb.lottie.model.d dVar, int i4, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.g.l(dVar, i4, list, dVar2, this);
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void e(RectF rectF, Matrix matrix, boolean z9) {
        this.f4182j.e(rectF, matrix, z9);
    }

    @Override // com.airbnb.lottie.animation.content.j
    public void f(ListIterator<c> listIterator) {
        if (this.f4182j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f4182j = new d(this.f4175c, this.f4176d, "Repeater", this.f4178f, arrayList, null);
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void g(Canvas canvas, Matrix matrix, int i4) {
        float floatValue = this.f4179g.h().floatValue();
        float floatValue2 = this.f4180h.h().floatValue();
        float floatValue3 = this.f4181i.i().h().floatValue() / 100.0f;
        float floatValue4 = this.f4181i.e().h().floatValue() / 100.0f;
        for (int i10 = ((int) floatValue) - 1; i10 >= 0; i10--) {
            this.f4173a.set(matrix);
            float f10 = i10;
            this.f4173a.preConcat(this.f4181i.g(f10 + floatValue2));
            this.f4182j.g(canvas, this.f4173a, (int) (i4 * com.airbnb.lottie.utils.g.j(floatValue3, floatValue4, f10 / floatValue)));
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f4177e;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        Path path = this.f4182j.getPath();
        this.f4174b.reset();
        float floatValue = this.f4179g.h().floatValue();
        float floatValue2 = this.f4180h.h().floatValue();
        for (int i4 = ((int) floatValue) - 1; i4 >= 0; i4--) {
            this.f4173a.set(this.f4181i.g(i4 + floatValue2));
            this.f4174b.addPath(path, this.f4173a);
        }
        return this.f4174b;
    }
}
