package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import androidx.annotation.Nullable;
import com.airbnb.lottie.model.content.ShapeStroke;

/* compiled from: StrokeContent.java */
/* loaded from: classes.dex */
public class s extends a {

    /* renamed from: o  reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f4190o;

    /* renamed from: p  reason: collision with root package name */
    private final String f4191p;

    /* renamed from: q  reason: collision with root package name */
    private final boolean f4192q;

    /* renamed from: r  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Integer, Integer> f4193r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> f4194s;

    public s(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, ShapeStroke shapeStroke) {
        super(hVar, aVar, shapeStroke.b().toPaintCap(), shapeStroke.e().toPaintJoin(), shapeStroke.g(), shapeStroke.i(), shapeStroke.j(), shapeStroke.f(), shapeStroke.d());
        this.f4190o = aVar;
        this.f4191p = shapeStroke.h();
        this.f4192q = shapeStroke.k();
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> a10 = shapeStroke.c().a();
        this.f4193r = a10;
        a10.a(this);
        aVar.h(a10);
    }

    @Override // com.airbnb.lottie.animation.content.a, com.airbnb.lottie.model.e
    public <T> void c(T t9, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        super.c(t9, jVar);
        if (t9 == com.airbnb.lottie.m.f4359b) {
            this.f4193r.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.B) {
            if (jVar == null) {
                this.f4194s = null;
                return;
            }
            com.airbnb.lottie.animation.keyframe.p pVar = new com.airbnb.lottie.animation.keyframe.p(jVar);
            this.f4194s = pVar;
            pVar.a(this);
            this.f4190o.h(this.f4193r);
        }
    }

    @Override // com.airbnb.lottie.animation.content.a, com.airbnb.lottie.animation.content.e
    public void g(Canvas canvas, Matrix matrix, int i4) {
        if (this.f4192q) {
            return;
        }
        this.f4069i.setColor(((com.airbnb.lottie.animation.keyframe.b) this.f4193r).n());
        com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.f4194s;
        if (aVar != null) {
            this.f4069i.setColorFilter(aVar.h());
        }
        super.g(canvas, matrix, i4);
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f4191p;
    }
}
