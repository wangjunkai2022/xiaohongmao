package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.animation.keyframe.p;
import com.airbnb.lottie.m;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.value.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CompositionLayer.java */
/* loaded from: classes.dex */
public class b extends com.airbnb.lottie.model.layer.a {
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> A;
    private final List<com.airbnb.lottie.model.layer.a> B;
    private final RectF C;
    private final RectF D;
    private Paint E;
    @Nullable
    private Boolean F;
    @Nullable
    private Boolean G;

    /* compiled from: CompositionLayer.java */
    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4600a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f4600a = iArr;
            try {
                iArr[Layer.MatteType.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4600a[Layer.MatteType.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public b(com.airbnb.lottie.h hVar, Layer layer, List<Layer> list, com.airbnb.lottie.f fVar) {
        super(hVar, layer);
        int i4;
        com.airbnb.lottie.model.layer.a aVar;
        this.B = new ArrayList();
        this.C = new RectF();
        this.D = new RectF();
        this.E = new Paint();
        com.airbnb.lottie.model.animatable.b s9 = layer.s();
        if (s9 != null) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> a10 = s9.a();
            this.A = a10;
            h(a10);
            this.A.a(this);
        } else {
            this.A = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(fVar.j().size());
        int size = list.size() - 1;
        com.airbnb.lottie.model.layer.a aVar2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            Layer layer2 = list.get(size);
            com.airbnb.lottie.model.layer.a s10 = com.airbnb.lottie.model.layer.a.s(layer2, hVar, fVar);
            if (s10 != null) {
                longSparseArray.put(s10.t().b(), s10);
                if (aVar2 != null) {
                    aVar2.C(s10);
                    aVar2 = null;
                } else {
                    this.B.add(0, s10);
                    int i10 = a.f4600a[layer2.f().ordinal()];
                    if (i10 == 1 || i10 == 2) {
                        aVar2 = s10;
                    }
                }
            }
            size--;
        }
        for (i4 = 0; i4 < longSparseArray.size(); i4++) {
            com.airbnb.lottie.model.layer.a aVar3 = (com.airbnb.lottie.model.layer.a) longSparseArray.get(longSparseArray.keyAt(i4));
            if (aVar3 != null && (aVar = (com.airbnb.lottie.model.layer.a) longSparseArray.get(aVar3.t().h())) != null) {
                aVar3.D(aVar);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    protected void B(com.airbnb.lottie.model.d dVar, int i4, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        for (int i10 = 0; i10 < this.B.size(); i10++) {
            this.B.get(i10).d(dVar, i4, list, dVar2);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void E(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        super.E(f10);
        if (this.A != null) {
            f10 = ((this.A.h().floatValue() * this.f4588o.a().h()) - this.f4588o.a().p()) / (this.f4587n.m().e() + 0.01f);
        }
        if (this.f4588o.t() != 0.0f) {
            f10 /= this.f4588o.t();
        }
        if (this.A == null) {
            f10 -= this.f4588o.p();
        }
        for (int size = this.B.size() - 1; size >= 0; size--) {
            this.B.get(size).E(f10);
        }
    }

    public boolean H() {
        if (this.G == null) {
            for (int size = this.B.size() - 1; size >= 0; size--) {
                com.airbnb.lottie.model.layer.a aVar = this.B.get(size);
                if (aVar instanceof e) {
                    if (aVar.u()) {
                        this.G = Boolean.TRUE;
                        return true;
                    }
                } else if ((aVar instanceof b) && ((b) aVar).H()) {
                    this.G = Boolean.TRUE;
                    return true;
                }
            }
            this.G = Boolean.FALSE;
        }
        return this.G.booleanValue();
    }

    public boolean I() {
        if (this.F == null) {
            if (v()) {
                this.F = Boolean.TRUE;
                return true;
            }
            for (int size = this.B.size() - 1; size >= 0; size--) {
                if (this.B.get(size).v()) {
                    this.F = Boolean.TRUE;
                    return true;
                }
            }
            this.F = Boolean.FALSE;
        }
        return this.F.booleanValue();
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.model.e
    public <T> void c(T t9, @Nullable j<T> jVar) {
        super.c(t9, jVar);
        if (t9 == m.A) {
            if (jVar == null) {
                this.A = null;
                return;
            }
            p pVar = new p(jVar);
            this.A = pVar;
            h(pVar);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.e
    public void e(RectF rectF, Matrix matrix, boolean z9) {
        super.e(rectF, matrix, z9);
        for (int size = this.B.size() - 1; size >= 0; size--) {
            this.C.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.B.get(size).e(this.C, this.f4586m, true);
            rectF.union(this.C);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    void r(Canvas canvas, Matrix matrix, int i4) {
        com.airbnb.lottie.e.a("CompositionLayer#draw");
        this.D.set(0.0f, 0.0f, this.f4588o.j(), this.f4588o.i());
        matrix.mapRect(this.D);
        boolean z9 = this.f4587n.H() && this.B.size() > 1 && i4 != 255;
        if (z9) {
            this.E.setAlpha(i4);
            com.airbnb.lottie.utils.h.n(canvas, this.D, this.E);
        } else {
            canvas.save();
        }
        if (z9) {
            i4 = 255;
        }
        for (int size = this.B.size() - 1; size >= 0; size--) {
            if (!this.D.isEmpty() ? canvas.clipRect(this.D) : true) {
                this.B.get(size).g(canvas, matrix, i4);
            }
        }
        canvas.restore();
        com.airbnb.lottie.e.b("CompositionLayer#draw");
    }
}
