package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.CallSuper;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.airbnb.lottie.animation.keyframe.a;
import com.airbnb.lottie.animation.keyframe.o;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.value.j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: BaseLayer.java */
/* loaded from: classes.dex */
public abstract class a implements com.airbnb.lottie.animation.content.e, a.InterfaceC0031a, com.airbnb.lottie.model.e {

    /* renamed from: w  reason: collision with root package name */
    private static final int f4570w = 2;

    /* renamed from: x  reason: collision with root package name */
    private static final int f4571x = 16;

    /* renamed from: y  reason: collision with root package name */
    private static final int f4572y = 1;

    /* renamed from: z  reason: collision with root package name */
    private static final int f4573z = 19;

    /* renamed from: a  reason: collision with root package name */
    private final Path f4574a = new Path();

    /* renamed from: b  reason: collision with root package name */
    private final Matrix f4575b = new Matrix();

    /* renamed from: c  reason: collision with root package name */
    private final Paint f4576c = new com.airbnb.lottie.animation.a(1);

    /* renamed from: d  reason: collision with root package name */
    private final Paint f4577d = new com.airbnb.lottie.animation.a(1, PorterDuff.Mode.DST_IN);

    /* renamed from: e  reason: collision with root package name */
    private final Paint f4578e = new com.airbnb.lottie.animation.a(1, PorterDuff.Mode.DST_OUT);

    /* renamed from: f  reason: collision with root package name */
    private final Paint f4579f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f4580g;

    /* renamed from: h  reason: collision with root package name */
    private final RectF f4581h;

    /* renamed from: i  reason: collision with root package name */
    private final RectF f4582i;

    /* renamed from: j  reason: collision with root package name */
    private final RectF f4583j;

    /* renamed from: k  reason: collision with root package name */
    private final RectF f4584k;

    /* renamed from: l  reason: collision with root package name */
    private final String f4585l;

    /* renamed from: m  reason: collision with root package name */
    final Matrix f4586m;

    /* renamed from: n  reason: collision with root package name */
    final com.airbnb.lottie.h f4587n;

    /* renamed from: o  reason: collision with root package name */
    final Layer f4588o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private com.airbnb.lottie.animation.keyframe.g f4589p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private a f4590q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private a f4591r;

    /* renamed from: s  reason: collision with root package name */
    private List<a> f4592s;

    /* renamed from: t  reason: collision with root package name */
    private final List<com.airbnb.lottie.animation.keyframe.a<?, ?>> f4593t;

    /* renamed from: u  reason: collision with root package name */
    final o f4594u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f4595v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseLayer.java */
    /* renamed from: com.airbnb.lottie.model.layer.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0034a implements a.InterfaceC0031a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.airbnb.lottie.animation.keyframe.c f4596a;

        C0034a(com.airbnb.lottie.animation.keyframe.c cVar) {
            this.f4596a = cVar;
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0031a
        public void a() {
            a.this.F(this.f4596a.n() == 1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseLayer.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4598a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f4599b;

        static {
            int[] iArr = new int[Mask.MaskMode.values().length];
            f4599b = iArr;
            try {
                iArr[Mask.MaskMode.MASK_MODE_SUBTRACT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4599b[Mask.MaskMode.MASK_MODE_INTERSECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4599b[Mask.MaskMode.MASK_MODE_ADD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Layer.LayerType.values().length];
            f4598a = iArr2;
            try {
                iArr2[Layer.LayerType.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4598a[Layer.LayerType.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4598a[Layer.LayerType.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4598a[Layer.LayerType.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4598a[Layer.LayerType.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f4598a[Layer.LayerType.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f4598a[Layer.LayerType.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(com.airbnb.lottie.h hVar, Layer layer) {
        com.airbnb.lottie.animation.a aVar = new com.airbnb.lottie.animation.a(1);
        this.f4579f = aVar;
        this.f4580g = new com.airbnb.lottie.animation.a(PorterDuff.Mode.CLEAR);
        this.f4581h = new RectF();
        this.f4582i = new RectF();
        this.f4583j = new RectF();
        this.f4584k = new RectF();
        this.f4586m = new Matrix();
        this.f4593t = new ArrayList();
        this.f4595v = true;
        this.f4587n = hVar;
        this.f4588o = layer;
        this.f4585l = layer.g() + "#draw";
        if (layer.f() == Layer.MatteType.INVERT) {
            aVar.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        } else {
            aVar.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        }
        o b10 = layer.u().b();
        this.f4594u = b10;
        b10.b(this);
        if (layer.e() != null && !layer.e().isEmpty()) {
            com.airbnb.lottie.animation.keyframe.g gVar = new com.airbnb.lottie.animation.keyframe.g(layer.e());
            this.f4589p = gVar;
            for (com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.h, Path> aVar2 : gVar.a()) {
                aVar2.a(this);
            }
            for (com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar3 : this.f4589p.c()) {
                h(aVar3);
                aVar3.a(this);
            }
        }
        G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(boolean z9) {
        if (z9 != this.f4595v) {
            this.f4595v = z9;
            y();
        }
    }

    private void G() {
        if (!this.f4588o.c().isEmpty()) {
            com.airbnb.lottie.animation.keyframe.c cVar = new com.airbnb.lottie.animation.keyframe.c(this.f4588o.c());
            cVar.k();
            cVar.a(new C0034a(cVar));
            F(cVar.h().floatValue() == 1.0f);
            h(cVar);
            return;
        }
        F(true);
    }

    private void i(Canvas canvas, Matrix matrix, Mask mask, com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.h, Path> aVar, com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2) {
        this.f4574a.set(aVar.h());
        this.f4574a.transform(matrix);
        this.f4576c.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f4574a, this.f4576c);
    }

    private void j(Canvas canvas, Matrix matrix, Mask mask, com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.h, Path> aVar, com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2) {
        com.airbnb.lottie.utils.h.n(canvas, this.f4581h, this.f4577d);
        this.f4574a.set(aVar.h());
        this.f4574a.transform(matrix);
        this.f4576c.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f4574a, this.f4576c);
        canvas.restore();
    }

    private void k(Canvas canvas, Matrix matrix, Mask mask, com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.h, Path> aVar, com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2) {
        com.airbnb.lottie.utils.h.n(canvas, this.f4581h, this.f4576c);
        canvas.drawRect(this.f4581h, this.f4576c);
        this.f4574a.set(aVar.h());
        this.f4574a.transform(matrix);
        this.f4576c.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f4574a, this.f4578e);
        canvas.restore();
    }

    private void l(Canvas canvas, Matrix matrix, Mask mask, com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.h, Path> aVar, com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2) {
        com.airbnb.lottie.utils.h.n(canvas, this.f4581h, this.f4577d);
        canvas.drawRect(this.f4581h, this.f4576c);
        this.f4578e.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        this.f4574a.set(aVar.h());
        this.f4574a.transform(matrix);
        canvas.drawPath(this.f4574a, this.f4578e);
        canvas.restore();
    }

    private void m(Canvas canvas, Matrix matrix, Mask mask, com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.h, Path> aVar, com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2) {
        com.airbnb.lottie.utils.h.n(canvas, this.f4581h, this.f4578e);
        canvas.drawRect(this.f4581h, this.f4576c);
        this.f4578e.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        this.f4574a.set(aVar.h());
        this.f4574a.transform(matrix);
        canvas.drawPath(this.f4574a, this.f4578e);
        canvas.restore();
    }

    private void n(Canvas canvas, Matrix matrix) {
        com.airbnb.lottie.e.a("Layer#saveLayer");
        com.airbnb.lottie.utils.h.o(canvas, this.f4581h, this.f4577d, 19);
        if (Build.VERSION.SDK_INT < 28) {
            canvas.drawColor(0);
        }
        com.airbnb.lottie.e.b("Layer#saveLayer");
        for (int i4 = 0; i4 < this.f4589p.b().size(); i4++) {
            Mask mask = this.f4589p.b().get(i4);
            com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.h, Path> aVar = this.f4589p.a().get(i4);
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2 = this.f4589p.c().get(i4);
            int i10 = b.f4599b[mask.a().ordinal()];
            if (i10 == 1) {
                if (i4 == 0) {
                    this.f4576c.setColor(ViewCompat.MEASURED_STATE_MASK);
                    this.f4576c.setAlpha(255);
                    canvas.drawRect(this.f4581h, this.f4576c);
                }
                if (mask.d()) {
                    m(canvas, matrix, mask, aVar, aVar2);
                } else {
                    o(canvas, matrix, mask, aVar, aVar2);
                }
            } else if (i10 != 2) {
                if (i10 == 3) {
                    if (mask.d()) {
                        k(canvas, matrix, mask, aVar, aVar2);
                    } else {
                        i(canvas, matrix, mask, aVar, aVar2);
                    }
                }
            } else if (mask.d()) {
                l(canvas, matrix, mask, aVar, aVar2);
            } else {
                j(canvas, matrix, mask, aVar, aVar2);
            }
        }
        com.airbnb.lottie.e.a("Layer#restoreLayer");
        canvas.restore();
        com.airbnb.lottie.e.b("Layer#restoreLayer");
    }

    private void o(Canvas canvas, Matrix matrix, Mask mask, com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.h, Path> aVar, com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2) {
        this.f4574a.set(aVar.h());
        this.f4574a.transform(matrix);
        canvas.drawPath(this.f4574a, this.f4578e);
    }

    private void p() {
        if (this.f4592s != null) {
            return;
        }
        if (this.f4591r == null) {
            this.f4592s = Collections.emptyList();
            return;
        }
        this.f4592s = new ArrayList();
        for (a aVar = this.f4591r; aVar != null; aVar = aVar.f4591r) {
            this.f4592s.add(aVar);
        }
    }

    private void q(Canvas canvas) {
        com.airbnb.lottie.e.a("Layer#clearLayer");
        RectF rectF = this.f4581h;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f4580g);
        com.airbnb.lottie.e.b("Layer#clearLayer");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static a s(Layer layer, com.airbnb.lottie.h hVar, com.airbnb.lottie.f fVar) {
        switch (b.f4598a[layer.d().ordinal()]) {
            case 1:
                return new e(hVar, layer);
            case 2:
                return new com.airbnb.lottie.model.layer.b(hVar, layer, fVar.o(layer.k()), fVar);
            case 3:
                return new f(hVar, layer);
            case 4:
                return new c(hVar, layer);
            case 5:
                return new d(hVar, layer);
            case 6:
                return new g(hVar, layer);
            default:
                com.airbnb.lottie.utils.d.d("Unknown layer type " + layer.d());
                return null;
        }
    }

    private void w(RectF rectF, Matrix matrix) {
        this.f4582i.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (u()) {
            int size = this.f4589p.b().size();
            for (int i4 = 0; i4 < size; i4++) {
                Mask mask = this.f4589p.b().get(i4);
                this.f4574a.set(this.f4589p.a().get(i4).h());
                this.f4574a.transform(matrix);
                int i10 = b.f4599b[mask.a().ordinal()];
                if (i10 == 1) {
                    return;
                }
                if ((i10 == 2 || i10 == 3) && mask.d()) {
                    return;
                }
                this.f4574a.computeBounds(this.f4584k, false);
                if (i4 == 0) {
                    this.f4582i.set(this.f4584k);
                } else {
                    RectF rectF2 = this.f4582i;
                    rectF2.set(Math.min(rectF2.left, this.f4584k.left), Math.min(this.f4582i.top, this.f4584k.top), Math.max(this.f4582i.right, this.f4584k.right), Math.max(this.f4582i.bottom, this.f4584k.bottom));
                }
            }
            if (rectF.intersect(this.f4582i)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void x(RectF rectF, Matrix matrix) {
        if (v() && this.f4588o.f() != Layer.MatteType.INVERT) {
            this.f4583j.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f4590q.e(this.f4583j, matrix, true);
            if (rectF.intersect(this.f4583j)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void y() {
        this.f4587n.invalidateSelf();
    }

    private void z(float f10) {
        this.f4587n.m().n().e(this.f4588o.g(), f10);
    }

    public void A(com.airbnb.lottie.animation.keyframe.a<?, ?> aVar) {
        this.f4593t.remove(aVar);
    }

    void B(com.airbnb.lottie.model.d dVar, int i4, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C(@Nullable a aVar) {
        this.f4590q = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D(@Nullable a aVar) {
        this.f4591r = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f4594u.j(f10);
        if (this.f4589p != null) {
            for (int i4 = 0; i4 < this.f4589p.a().size(); i4++) {
                this.f4589p.a().get(i4).l(f10);
            }
        }
        if (this.f4588o.t() != 0.0f) {
            f10 /= this.f4588o.t();
        }
        a aVar = this.f4590q;
        if (aVar != null) {
            this.f4590q.E(aVar.f4588o.t() * f10);
        }
        for (int i10 = 0; i10 < this.f4593t.size(); i10++) {
            this.f4593t.get(i10).l(f10);
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0031a
    public void a() {
        y();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void b(List<com.airbnb.lottie.animation.content.c> list, List<com.airbnb.lottie.animation.content.c> list2) {
    }

    @Override // com.airbnb.lottie.model.e
    @CallSuper
    public <T> void c(T t9, @Nullable j<T> jVar) {
        this.f4594u.c(t9, jVar);
    }

    @Override // com.airbnb.lottie.model.e
    public void d(com.airbnb.lottie.model.d dVar, int i4, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        if (dVar.h(getName(), i4)) {
            if (!"__container".equals(getName())) {
                dVar2 = dVar2.a(getName());
                if (dVar.c(getName(), i4)) {
                    list.add(dVar2.j(this));
                }
            }
            if (dVar.i(getName(), i4)) {
                B(dVar, i4 + dVar.e(getName(), i4), list, dVar2);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.e
    @CallSuper
    public void e(RectF rectF, Matrix matrix, boolean z9) {
        this.f4581h.set(0.0f, 0.0f, 0.0f, 0.0f);
        p();
        this.f4586m.set(matrix);
        if (z9) {
            List<a> list = this.f4592s;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f4586m.preConcat(this.f4592s.get(size).f4594u.f());
                }
            } else {
                a aVar = this.f4591r;
                if (aVar != null) {
                    this.f4586m.preConcat(aVar.f4594u.f());
                }
            }
        }
        this.f4586m.preConcat(this.f4594u.f());
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void g(Canvas canvas, Matrix matrix, int i4) {
        com.airbnb.lottie.e.a(this.f4585l);
        if (this.f4595v && !this.f4588o.v()) {
            p();
            com.airbnb.lottie.e.a("Layer#parentMatrix");
            this.f4575b.reset();
            this.f4575b.set(matrix);
            for (int size = this.f4592s.size() - 1; size >= 0; size--) {
                this.f4575b.preConcat(this.f4592s.get(size).f4594u.f());
            }
            com.airbnb.lottie.e.b("Layer#parentMatrix");
            int intValue = (int) ((((i4 / 255.0f) * (this.f4594u.h() == null ? 100 : this.f4594u.h().h().intValue())) / 100.0f) * 255.0f);
            if (!v() && !u()) {
                this.f4575b.preConcat(this.f4594u.f());
                com.airbnb.lottie.e.a("Layer#drawLayer");
                r(canvas, this.f4575b, intValue);
                com.airbnb.lottie.e.b("Layer#drawLayer");
                z(com.airbnb.lottie.e.b(this.f4585l));
                return;
            }
            com.airbnb.lottie.e.a("Layer#computeBounds");
            e(this.f4581h, this.f4575b, false);
            x(this.f4581h, matrix);
            this.f4575b.preConcat(this.f4594u.f());
            w(this.f4581h, this.f4575b);
            if (!this.f4581h.intersect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight())) {
                this.f4581h.set(0.0f, 0.0f, 0.0f, 0.0f);
            }
            com.airbnb.lottie.e.b("Layer#computeBounds");
            if (!this.f4581h.isEmpty()) {
                com.airbnb.lottie.e.a("Layer#saveLayer");
                com.airbnb.lottie.utils.h.n(canvas, this.f4581h, this.f4576c);
                com.airbnb.lottie.e.b("Layer#saveLayer");
                q(canvas);
                com.airbnb.lottie.e.a("Layer#drawLayer");
                r(canvas, this.f4575b, intValue);
                com.airbnb.lottie.e.b("Layer#drawLayer");
                if (u()) {
                    n(canvas, this.f4575b);
                }
                if (v()) {
                    com.airbnb.lottie.e.a("Layer#drawMatte");
                    com.airbnb.lottie.e.a("Layer#saveLayer");
                    com.airbnb.lottie.utils.h.o(canvas, this.f4581h, this.f4579f, 19);
                    com.airbnb.lottie.e.b("Layer#saveLayer");
                    q(canvas);
                    this.f4590q.g(canvas, matrix, intValue);
                    com.airbnb.lottie.e.a("Layer#restoreLayer");
                    canvas.restore();
                    com.airbnb.lottie.e.b("Layer#restoreLayer");
                    com.airbnb.lottie.e.b("Layer#drawMatte");
                }
                com.airbnb.lottie.e.a("Layer#restoreLayer");
                canvas.restore();
                com.airbnb.lottie.e.b("Layer#restoreLayer");
            }
            z(com.airbnb.lottie.e.b(this.f4585l));
            return;
        }
        com.airbnb.lottie.e.b(this.f4585l);
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f4588o.g();
    }

    public void h(@Nullable com.airbnb.lottie.animation.keyframe.a<?, ?> aVar) {
        if (aVar == null) {
            return;
        }
        this.f4593t.add(aVar);
    }

    abstract void r(Canvas canvas, Matrix matrix, int i4);

    /* JADX INFO: Access modifiers changed from: package-private */
    public Layer t() {
        return this.f4588o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean u() {
        com.airbnb.lottie.animation.keyframe.g gVar = this.f4589p;
        return (gVar == null || gVar.a().isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean v() {
        return this.f4590q != null;
    }
}
