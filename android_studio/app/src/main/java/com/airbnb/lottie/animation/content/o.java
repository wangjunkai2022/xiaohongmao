package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.keyframe.a;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.List;

/* compiled from: PolystarContent.java */
/* loaded from: classes.dex */
public class o implements n, a.InterfaceC0031a, k {

    /* renamed from: o  reason: collision with root package name */
    private static final float f4146o = 0.47829f;

    /* renamed from: p  reason: collision with root package name */
    private static final float f4147p = 0.25f;

    /* renamed from: b  reason: collision with root package name */
    private final String f4149b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.h f4150c;

    /* renamed from: d  reason: collision with root package name */
    private final PolystarShape.Type f4151d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f4152e;

    /* renamed from: f  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f4153f;

    /* renamed from: g  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> f4154g;

    /* renamed from: h  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f4155h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f4156i;

    /* renamed from: j  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f4157j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f4158k;

    /* renamed from: l  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f4159l;

    /* renamed from: n  reason: collision with root package name */
    private boolean f4161n;

    /* renamed from: a  reason: collision with root package name */
    private final Path f4148a = new Path();

    /* renamed from: m  reason: collision with root package name */
    private b f4160m = new b();

    /* compiled from: PolystarContent.java */
    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4162a;

        static {
            int[] iArr = new int[PolystarShape.Type.values().length];
            f4162a = iArr;
            try {
                iArr[PolystarShape.Type.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4162a[PolystarShape.Type.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public o(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, PolystarShape polystarShape) {
        this.f4150c = hVar;
        this.f4149b = polystarShape.d();
        PolystarShape.Type j4 = polystarShape.j();
        this.f4151d = j4;
        this.f4152e = polystarShape.k();
        com.airbnb.lottie.animation.keyframe.a<Float, Float> a10 = polystarShape.g().a();
        this.f4153f = a10;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a11 = polystarShape.h().a();
        this.f4154g = a11;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> a12 = polystarShape.i().a();
        this.f4155h = a12;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> a13 = polystarShape.e().a();
        this.f4157j = a13;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> a14 = polystarShape.f().a();
        this.f4159l = a14;
        PolystarShape.Type type = PolystarShape.Type.STAR;
        if (j4 == type) {
            this.f4156i = polystarShape.b().a();
            this.f4158k = polystarShape.c().a();
        } else {
            this.f4156i = null;
            this.f4158k = null;
        }
        aVar.h(a10);
        aVar.h(a11);
        aVar.h(a12);
        aVar.h(a13);
        aVar.h(a14);
        if (j4 == type) {
            aVar.h(this.f4156i);
            aVar.h(this.f4158k);
        }
        a10.a(this);
        a11.a(this);
        a12.a(this);
        a13.a(this);
        a14.a(this);
        if (j4 == type) {
            this.f4156i.a(this);
            this.f4158k.a(this);
        }
    }

    private void f() {
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar;
        double d4;
        double d10;
        double d11;
        int i4;
        int floor = (int) Math.floor(this.f4153f.h().floatValue());
        double radians = Math.toRadians((this.f4155h == null ? 0.0d : aVar.h().floatValue()) - 90.0d);
        double d12 = floor;
        float floatValue = this.f4159l.h().floatValue() / 100.0f;
        float floatValue2 = this.f4157j.h().floatValue();
        double d13 = floatValue2;
        float cos = (float) (Math.cos(radians) * d13);
        float sin = (float) (Math.sin(radians) * d13);
        this.f4148a.moveTo(cos, sin);
        double d14 = (float) (6.283185307179586d / d12);
        double d15 = radians + d14;
        double ceil = Math.ceil(d12);
        int i10 = 0;
        while (i10 < ceil) {
            float cos2 = (float) (Math.cos(d15) * d13);
            double d16 = ceil;
            float sin2 = (float) (d13 * Math.sin(d15));
            if (floatValue != 0.0f) {
                d10 = d13;
                i4 = i10;
                d4 = d15;
                double atan2 = (float) (Math.atan2(sin, cos) - 1.5707963267948966d);
                float cos3 = (float) Math.cos(atan2);
                d11 = d14;
                double atan22 = (float) (Math.atan2(sin2, cos2) - 1.5707963267948966d);
                float f10 = floatValue2 * floatValue * f4147p;
                this.f4148a.cubicTo(cos - (cos3 * f10), sin - (((float) Math.sin(atan2)) * f10), cos2 + (((float) Math.cos(atan22)) * f10), sin2 + (f10 * ((float) Math.sin(atan22))), cos2, sin2);
            } else {
                d4 = d15;
                d10 = d13;
                d11 = d14;
                i4 = i10;
                this.f4148a.lineTo(cos2, sin2);
            }
            d15 = d4 + d11;
            i10 = i4 + 1;
            sin = sin2;
            cos = cos2;
            ceil = d16;
            d13 = d10;
            d14 = d11;
        }
        PointF h4 = this.f4154g.h();
        this.f4148a.offset(h4.x, h4.y);
        this.f4148a.close();
    }

    private void h() {
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar;
        double d4;
        int i4;
        double d10;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        double d11;
        float f16;
        float f17;
        float f18;
        float floatValue = this.f4153f.h().floatValue();
        double radians = Math.toRadians((this.f4155h == null ? 0.0d : aVar.h().floatValue()) - 90.0d);
        double d12 = floatValue;
        float f19 = (float) (6.283185307179586d / d12);
        float f20 = f19 / 2.0f;
        float f21 = floatValue - ((int) floatValue);
        int i10 = (f21 > 0.0f ? 1 : (f21 == 0.0f ? 0 : -1));
        if (i10 != 0) {
            radians += (1.0f - f21) * f20;
        }
        float floatValue2 = this.f4157j.h().floatValue();
        float floatValue3 = this.f4156i.h().floatValue();
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar2 = this.f4158k;
        float floatValue4 = aVar2 != null ? aVar2.h().floatValue() / 100.0f : 0.0f;
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar3 = this.f4159l;
        float floatValue5 = aVar3 != null ? aVar3.h().floatValue() / 100.0f : 0.0f;
        if (i10 != 0) {
            f12 = ((floatValue2 - floatValue3) * f21) + floatValue3;
            i4 = i10;
            double d13 = f12;
            d4 = d12;
            f10 = (float) (d13 * Math.cos(radians));
            f11 = (float) (d13 * Math.sin(radians));
            this.f4148a.moveTo(f10, f11);
            d10 = radians + ((f19 * f21) / 2.0f);
        } else {
            d4 = d12;
            i4 = i10;
            double d14 = floatValue2;
            float cos = (float) (Math.cos(radians) * d14);
            float sin = (float) (d14 * Math.sin(radians));
            this.f4148a.moveTo(cos, sin);
            d10 = radians + f20;
            f10 = cos;
            f11 = sin;
            f12 = 0.0f;
        }
        double ceil = Math.ceil(d4) * 2.0d;
        int i11 = 0;
        boolean z9 = false;
        while (true) {
            double d15 = i11;
            if (d15 < ceil) {
                float f22 = z9 ? floatValue2 : floatValue3;
                int i12 = (f12 > 0.0f ? 1 : (f12 == 0.0f ? 0 : -1));
                if (i12 == 0 || d15 != ceil - 2.0d) {
                    f13 = f19;
                    f14 = f20;
                } else {
                    f13 = f19;
                    f14 = (f19 * f21) / 2.0f;
                }
                if (i12 == 0 || d15 != ceil - 1.0d) {
                    f15 = f20;
                    d11 = d15;
                    f16 = f22;
                } else {
                    f15 = f20;
                    d11 = d15;
                    f16 = f12;
                }
                double d16 = f16;
                double d17 = ceil;
                float cos2 = (float) (d16 * Math.cos(d10));
                float sin2 = (float) (d16 * Math.sin(d10));
                if (floatValue4 == 0.0f && floatValue5 == 0.0f) {
                    this.f4148a.lineTo(cos2, sin2);
                    f17 = floatValue4;
                    f18 = f12;
                } else {
                    f17 = floatValue4;
                    f18 = f12;
                    double atan2 = (float) (Math.atan2(f11, f10) - 1.5707963267948966d);
                    float cos3 = (float) Math.cos(atan2);
                    float sin3 = (float) Math.sin(atan2);
                    double atan22 = (float) (Math.atan2(sin2, cos2) - 1.5707963267948966d);
                    float cos4 = (float) Math.cos(atan22);
                    float sin4 = (float) Math.sin(atan22);
                    float f23 = z9 ? f17 : floatValue5;
                    float f24 = z9 ? floatValue5 : f17;
                    float f25 = z9 ? floatValue3 : floatValue2;
                    float f26 = z9 ? floatValue2 : floatValue3;
                    float f27 = f25 * f23 * f4146o;
                    float f28 = cos3 * f27;
                    float f29 = f27 * sin3;
                    float f30 = f26 * f24 * f4146o;
                    float f31 = cos4 * f30;
                    float f32 = f30 * sin4;
                    if (i4 != 0) {
                        if (i11 == 0) {
                            f28 *= f21;
                            f29 *= f21;
                        } else if (d11 == d17 - 1.0d) {
                            f31 *= f21;
                            f32 *= f21;
                        }
                    }
                    this.f4148a.cubicTo(f10 - f28, f11 - f29, cos2 + f31, sin2 + f32, cos2, sin2);
                }
                d10 += f14;
                z9 = !z9;
                i11++;
                f10 = cos2;
                f11 = sin2;
                floatValue4 = f17;
                f12 = f18;
                f20 = f15;
                f19 = f13;
                ceil = d17;
            } else {
                PointF h4 = this.f4154g.h();
                this.f4148a.offset(h4.x, h4.y);
                this.f4148a.close();
                return;
            }
        }
    }

    private void i() {
        this.f4161n = false;
        this.f4150c.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0031a
    public void a() {
        i();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void b(List<c> list, List<c> list2) {
        for (int i4 = 0; i4 < list.size(); i4++) {
            c cVar = list.get(i4);
            if (cVar instanceof t) {
                t tVar = (t) cVar;
                if (tVar.i() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f4160m.a(tVar);
                    tVar.c(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.model.e
    public <T> void c(T t9, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar;
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar2;
        if (t9 == com.airbnb.lottie.m.f4376s) {
            this.f4153f.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.f4377t) {
            this.f4155h.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.f4367j) {
            this.f4154g.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.f4378u && (aVar2 = this.f4156i) != null) {
            aVar2.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.f4379v) {
            this.f4157j.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.f4380w && (aVar = this.f4158k) != null) {
            aVar.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.f4381x) {
            this.f4159l.m(jVar);
        }
    }

    @Override // com.airbnb.lottie.model.e
    public void d(com.airbnb.lottie.model.d dVar, int i4, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.g.l(dVar, i4, list, dVar2, this);
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f4149b;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        if (this.f4161n) {
            return this.f4148a;
        }
        this.f4148a.reset();
        if (this.f4152e) {
            this.f4161n = true;
            return this.f4148a;
        }
        int i4 = a.f4162a[this.f4151d.ordinal()];
        if (i4 == 1) {
            h();
        } else if (i4 == 2) {
            f();
        }
        this.f4148a.close();
        this.f4160m.b(this.f4148a);
        this.f4161n = true;
        return this.f4148a;
    }
}
