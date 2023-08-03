package com.airbnb.lottie.animation.keyframe;

import android.graphics.Matrix;
import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.keyframe.a;
import java.util.Collections;

/* compiled from: TransformKeyframeAnimation.java */
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private final Matrix f4230a = new Matrix();

    /* renamed from: b  reason: collision with root package name */
    private final Matrix f4231b;

    /* renamed from: c  reason: collision with root package name */
    private final Matrix f4232c;

    /* renamed from: d  reason: collision with root package name */
    private final Matrix f4233d;

    /* renamed from: e  reason: collision with root package name */
    private final float[] f4234e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private a<PointF, PointF> f4235f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private a<?, PointF> f4236g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private a<com.airbnb.lottie.value.k, com.airbnb.lottie.value.k> f4237h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private a<Float, Float> f4238i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private a<Integer, Integer> f4239j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private c f4240k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private c f4241l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private a<?, Float> f4242m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private a<?, Float> f4243n;

    public o(com.airbnb.lottie.model.animatable.l lVar) {
        this.f4235f = lVar.c() == null ? null : lVar.c().a();
        this.f4236g = lVar.f() == null ? null : lVar.f().a();
        this.f4237h = lVar.h() == null ? null : lVar.h().a();
        this.f4238i = lVar.g() == null ? null : lVar.g().a();
        c cVar = lVar.i() == null ? null : (c) lVar.i().a();
        this.f4240k = cVar;
        if (cVar != null) {
            this.f4231b = new Matrix();
            this.f4232c = new Matrix();
            this.f4233d = new Matrix();
            this.f4234e = new float[9];
        } else {
            this.f4231b = null;
            this.f4232c = null;
            this.f4233d = null;
            this.f4234e = null;
        }
        this.f4241l = lVar.j() == null ? null : (c) lVar.j().a();
        if (lVar.e() != null) {
            this.f4239j = lVar.e().a();
        }
        if (lVar.k() != null) {
            this.f4242m = lVar.k().a();
        } else {
            this.f4242m = null;
        }
        if (lVar.d() != null) {
            this.f4243n = lVar.d().a();
        } else {
            this.f4243n = null;
        }
    }

    private void d() {
        for (int i4 = 0; i4 < 9; i4++) {
            this.f4234e[i4] = 0.0f;
        }
    }

    public void a(com.airbnb.lottie.model.layer.a aVar) {
        aVar.h(this.f4239j);
        aVar.h(this.f4242m);
        aVar.h(this.f4243n);
        aVar.h(this.f4235f);
        aVar.h(this.f4236g);
        aVar.h(this.f4237h);
        aVar.h(this.f4238i);
        aVar.h(this.f4240k);
        aVar.h(this.f4241l);
    }

    public void b(a.InterfaceC0031a interfaceC0031a) {
        a<Integer, Integer> aVar = this.f4239j;
        if (aVar != null) {
            aVar.a(interfaceC0031a);
        }
        a<?, Float> aVar2 = this.f4242m;
        if (aVar2 != null) {
            aVar2.a(interfaceC0031a);
        }
        a<?, Float> aVar3 = this.f4243n;
        if (aVar3 != null) {
            aVar3.a(interfaceC0031a);
        }
        a<PointF, PointF> aVar4 = this.f4235f;
        if (aVar4 != null) {
            aVar4.a(interfaceC0031a);
        }
        a<?, PointF> aVar5 = this.f4236g;
        if (aVar5 != null) {
            aVar5.a(interfaceC0031a);
        }
        a<com.airbnb.lottie.value.k, com.airbnb.lottie.value.k> aVar6 = this.f4237h;
        if (aVar6 != null) {
            aVar6.a(interfaceC0031a);
        }
        a<Float, Float> aVar7 = this.f4238i;
        if (aVar7 != null) {
            aVar7.a(interfaceC0031a);
        }
        c cVar = this.f4240k;
        if (cVar != null) {
            cVar.a(interfaceC0031a);
        }
        c cVar2 = this.f4241l;
        if (cVar2 != null) {
            cVar2.a(interfaceC0031a);
        }
    }

    public <T> boolean c(T t9, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        c cVar;
        c cVar2;
        a<?, Float> aVar;
        a<?, Float> aVar2;
        if (t9 == com.airbnb.lottie.m.f4362e) {
            a<PointF, PointF> aVar3 = this.f4235f;
            if (aVar3 == null) {
                this.f4235f = new p(jVar, new PointF());
                return true;
            }
            aVar3.m(jVar);
            return true;
        } else if (t9 == com.airbnb.lottie.m.f4363f) {
            a<?, PointF> aVar4 = this.f4236g;
            if (aVar4 == null) {
                this.f4236g = new p(jVar, new PointF());
                return true;
            }
            aVar4.m(jVar);
            return true;
        } else if (t9 == com.airbnb.lottie.m.f4368k) {
            a<com.airbnb.lottie.value.k, com.airbnb.lottie.value.k> aVar5 = this.f4237h;
            if (aVar5 == null) {
                this.f4237h = new p(jVar, new com.airbnb.lottie.value.k());
                return true;
            }
            aVar5.m(jVar);
            return true;
        } else if (t9 == com.airbnb.lottie.m.f4369l) {
            a<Float, Float> aVar6 = this.f4238i;
            if (aVar6 == null) {
                this.f4238i = new p(jVar, Float.valueOf(0.0f));
                return true;
            }
            aVar6.m(jVar);
            return true;
        } else if (t9 == com.airbnb.lottie.m.f4360c) {
            a<Integer, Integer> aVar7 = this.f4239j;
            if (aVar7 == null) {
                this.f4239j = new p(jVar, 100);
                return true;
            }
            aVar7.m(jVar);
            return true;
        } else if (t9 == com.airbnb.lottie.m.f4382y && (aVar2 = this.f4242m) != null) {
            if (aVar2 == null) {
                this.f4242m = new p(jVar, 100);
                return true;
            }
            aVar2.m(jVar);
            return true;
        } else if (t9 == com.airbnb.lottie.m.f4383z && (aVar = this.f4243n) != null) {
            if (aVar == null) {
                this.f4243n = new p(jVar, 100);
                return true;
            }
            aVar.m(jVar);
            return true;
        } else if (t9 == com.airbnb.lottie.m.f4370m && (cVar2 = this.f4240k) != null) {
            if (cVar2 == null) {
                this.f4240k = new c(Collections.singletonList(new com.airbnb.lottie.value.a(Float.valueOf(0.0f))));
            }
            this.f4240k.m(jVar);
            return true;
        } else if (t9 != com.airbnb.lottie.m.f4371n || (cVar = this.f4241l) == null) {
            return false;
        } else {
            if (cVar == null) {
                this.f4241l = new c(Collections.singletonList(new com.airbnb.lottie.value.a(Float.valueOf(0.0f))));
            }
            this.f4241l.m(jVar);
            return true;
        }
    }

    @Nullable
    public a<?, Float> e() {
        return this.f4243n;
    }

    public Matrix f() {
        float n9;
        this.f4230a.reset();
        a<?, PointF> aVar = this.f4236g;
        if (aVar != null) {
            PointF h4 = aVar.h();
            float f10 = h4.x;
            if (f10 != 0.0f || h4.y != 0.0f) {
                this.f4230a.preTranslate(f10, h4.y);
            }
        }
        a<Float, Float> aVar2 = this.f4238i;
        if (aVar2 != null) {
            if (aVar2 instanceof p) {
                n9 = aVar2.h().floatValue();
            } else {
                n9 = ((c) aVar2).n();
            }
            if (n9 != 0.0f) {
                this.f4230a.preRotate(n9);
            }
        }
        if (this.f4240k != null) {
            c cVar = this.f4241l;
            float cos = cVar == null ? 0.0f : (float) Math.cos(Math.toRadians((-cVar.n()) + 90.0f));
            c cVar2 = this.f4241l;
            float sin = cVar2 == null ? 1.0f : (float) Math.sin(Math.toRadians((-cVar2.n()) + 90.0f));
            d();
            float[] fArr = this.f4234e;
            fArr[0] = cos;
            fArr[1] = sin;
            float f11 = -sin;
            fArr[3] = f11;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            this.f4231b.setValues(fArr);
            d();
            float[] fArr2 = this.f4234e;
            fArr2[0] = 1.0f;
            fArr2[3] = (float) Math.tan(Math.toRadians(this.f4240k.n()));
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.f4232c.setValues(fArr2);
            d();
            float[] fArr3 = this.f4234e;
            fArr3[0] = cos;
            fArr3[1] = f11;
            fArr3[3] = sin;
            fArr3[4] = cos;
            fArr3[8] = 1.0f;
            this.f4233d.setValues(fArr3);
            this.f4232c.preConcat(this.f4231b);
            this.f4233d.preConcat(this.f4232c);
            this.f4230a.preConcat(this.f4233d);
        }
        a<com.airbnb.lottie.value.k, com.airbnb.lottie.value.k> aVar3 = this.f4237h;
        if (aVar3 != null) {
            com.airbnb.lottie.value.k h10 = aVar3.h();
            if (h10.b() != 1.0f || h10.c() != 1.0f) {
                this.f4230a.preScale(h10.b(), h10.c());
            }
        }
        a<PointF, PointF> aVar4 = this.f4235f;
        if (aVar4 != null) {
            PointF h11 = aVar4.h();
            float f12 = h11.x;
            if (f12 != 0.0f || h11.y != 0.0f) {
                this.f4230a.preTranslate(-f12, -h11.y);
            }
        }
        return this.f4230a;
    }

    public Matrix g(float f10) {
        a<?, PointF> aVar = this.f4236g;
        PointF h4 = aVar == null ? null : aVar.h();
        a<com.airbnb.lottie.value.k, com.airbnb.lottie.value.k> aVar2 = this.f4237h;
        com.airbnb.lottie.value.k h10 = aVar2 == null ? null : aVar2.h();
        this.f4230a.reset();
        if (h4 != null) {
            this.f4230a.preTranslate(h4.x * f10, h4.y * f10);
        }
        if (h10 != null) {
            double d4 = f10;
            this.f4230a.preScale((float) Math.pow(h10.b(), d4), (float) Math.pow(h10.c(), d4));
        }
        a<Float, Float> aVar3 = this.f4238i;
        if (aVar3 != null) {
            float floatValue = aVar3.h().floatValue();
            a<PointF, PointF> aVar4 = this.f4235f;
            PointF h11 = aVar4 != null ? aVar4.h() : null;
            this.f4230a.preRotate(floatValue * f10, h11 == null ? 0.0f : h11.x, h11 != null ? h11.y : 0.0f);
        }
        return this.f4230a;
    }

    @Nullable
    public a<?, Integer> h() {
        return this.f4239j;
    }

    @Nullable
    public a<?, Float> i() {
        return this.f4242m;
    }

    public void j(float f10) {
        a<Integer, Integer> aVar = this.f4239j;
        if (aVar != null) {
            aVar.l(f10);
        }
        a<?, Float> aVar2 = this.f4242m;
        if (aVar2 != null) {
            aVar2.l(f10);
        }
        a<?, Float> aVar3 = this.f4243n;
        if (aVar3 != null) {
            aVar3.l(f10);
        }
        a<PointF, PointF> aVar4 = this.f4235f;
        if (aVar4 != null) {
            aVar4.l(f10);
        }
        a<?, PointF> aVar5 = this.f4236g;
        if (aVar5 != null) {
            aVar5.l(f10);
        }
        a<com.airbnb.lottie.value.k, com.airbnb.lottie.value.k> aVar6 = this.f4237h;
        if (aVar6 != null) {
            aVar6.l(f10);
        }
        a<Float, Float> aVar7 = this.f4238i;
        if (aVar7 != null) {
            aVar7.l(f10);
        }
        c cVar = this.f4240k;
        if (cVar != null) {
            cVar.l(f10);
        }
        c cVar2 = this.f4241l;
        if (cVar2 != null) {
            cVar2.l(f10);
        }
    }
}
