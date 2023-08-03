package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.keyframe.a;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ContentGroup.java */
/* loaded from: classes.dex */
public class d implements e, n, a.InterfaceC0031a, com.airbnb.lottie.model.e {

    /* renamed from: a  reason: collision with root package name */
    private Paint f4078a;

    /* renamed from: b  reason: collision with root package name */
    private RectF f4079b;

    /* renamed from: c  reason: collision with root package name */
    private final Matrix f4080c;

    /* renamed from: d  reason: collision with root package name */
    private final Path f4081d;

    /* renamed from: e  reason: collision with root package name */
    private final RectF f4082e;

    /* renamed from: f  reason: collision with root package name */
    private final String f4083f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f4084g;

    /* renamed from: h  reason: collision with root package name */
    private final List<c> f4085h;

    /* renamed from: i  reason: collision with root package name */
    private final com.airbnb.lottie.h f4086i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private List<n> f4087j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private com.airbnb.lottie.animation.keyframe.o f4088k;

    public d(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.j jVar) {
        this(hVar, aVar, jVar.c(), jVar.d(), f(hVar, aVar, jVar.b()), h(jVar.b()));
    }

    private static List<c> f(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, List<com.airbnb.lottie.model.content.b> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i4 = 0; i4 < list.size(); i4++) {
            c a10 = list.get(i4).a(hVar, aVar);
            if (a10 != null) {
                arrayList.add(a10);
            }
        }
        return arrayList;
    }

    @Nullable
    static com.airbnb.lottie.model.animatable.l h(List<com.airbnb.lottie.model.content.b> list) {
        for (int i4 = 0; i4 < list.size(); i4++) {
            com.airbnb.lottie.model.content.b bVar = list.get(i4);
            if (bVar instanceof com.airbnb.lottie.model.animatable.l) {
                return (com.airbnb.lottie.model.animatable.l) bVar;
            }
        }
        return null;
    }

    private boolean k() {
        int i4 = 0;
        for (int i10 = 0; i10 < this.f4085h.size(); i10++) {
            if ((this.f4085h.get(i10) instanceof e) && (i4 = i4 + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0031a
    public void a() {
        this.f4086i.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void b(List<c> list, List<c> list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.f4085h.size());
        arrayList.addAll(list);
        for (int size = this.f4085h.size() - 1; size >= 0; size--) {
            c cVar = this.f4085h.get(size);
            cVar.b(arrayList, this.f4085h.subList(0, size));
            arrayList.add(cVar);
        }
    }

    @Override // com.airbnb.lottie.model.e
    public <T> void c(T t9, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        com.airbnb.lottie.animation.keyframe.o oVar = this.f4088k;
        if (oVar != null) {
            oVar.c(t9, jVar);
        }
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
                int e4 = i4 + dVar.e(getName(), i4);
                for (int i10 = 0; i10 < this.f4085h.size(); i10++) {
                    c cVar = this.f4085h.get(i10);
                    if (cVar instanceof com.airbnb.lottie.model.e) {
                        ((com.airbnb.lottie.model.e) cVar).d(dVar, e4, list, dVar2);
                    }
                }
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void e(RectF rectF, Matrix matrix, boolean z9) {
        this.f4080c.set(matrix);
        com.airbnb.lottie.animation.keyframe.o oVar = this.f4088k;
        if (oVar != null) {
            this.f4080c.preConcat(oVar.f());
        }
        this.f4082e.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f4085h.size() - 1; size >= 0; size--) {
            c cVar = this.f4085h.get(size);
            if (cVar instanceof e) {
                ((e) cVar).e(this.f4082e, this.f4080c, z9);
                rectF.union(this.f4082e);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void g(Canvas canvas, Matrix matrix, int i4) {
        if (this.f4084g) {
            return;
        }
        this.f4080c.set(matrix);
        com.airbnb.lottie.animation.keyframe.o oVar = this.f4088k;
        if (oVar != null) {
            this.f4080c.preConcat(oVar.f());
            i4 = (int) (((((this.f4088k.h() == null ? 100 : this.f4088k.h().h().intValue()) / 100.0f) * i4) / 255.0f) * 255.0f);
        }
        boolean z9 = this.f4086i.H() && k() && i4 != 255;
        if (z9) {
            this.f4079b.set(0.0f, 0.0f, 0.0f, 0.0f);
            e(this.f4079b, this.f4080c, true);
            this.f4078a.setAlpha(i4);
            com.airbnb.lottie.utils.h.n(canvas, this.f4079b, this.f4078a);
        }
        if (z9) {
            i4 = 255;
        }
        for (int size = this.f4085h.size() - 1; size >= 0; size--) {
            c cVar = this.f4085h.get(size);
            if (cVar instanceof e) {
                ((e) cVar).g(canvas, this.f4080c, i4);
            }
        }
        if (z9) {
            canvas.restore();
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f4083f;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        this.f4080c.reset();
        com.airbnb.lottie.animation.keyframe.o oVar = this.f4088k;
        if (oVar != null) {
            this.f4080c.set(oVar.f());
        }
        this.f4081d.reset();
        if (this.f4084g) {
            return this.f4081d;
        }
        for (int size = this.f4085h.size() - 1; size >= 0; size--) {
            c cVar = this.f4085h.get(size);
            if (cVar instanceof n) {
                this.f4081d.addPath(((n) cVar).getPath(), this.f4080c);
            }
        }
        return this.f4081d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<n> i() {
        if (this.f4087j == null) {
            this.f4087j = new ArrayList();
            for (int i4 = 0; i4 < this.f4085h.size(); i4++) {
                c cVar = this.f4085h.get(i4);
                if (cVar instanceof n) {
                    this.f4087j.add((n) cVar);
                }
            }
        }
        return this.f4087j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Matrix j() {
        com.airbnb.lottie.animation.keyframe.o oVar = this.f4088k;
        if (oVar != null) {
            return oVar.f();
        }
        this.f4080c.reset();
        return this.f4080c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, String str, boolean z9, List<c> list, @Nullable com.airbnb.lottie.model.animatable.l lVar) {
        this.f4078a = new com.airbnb.lottie.animation.a();
        this.f4079b = new RectF();
        this.f4080c = new Matrix();
        this.f4081d = new Path();
        this.f4082e = new RectF();
        this.f4083f = str;
        this.f4086i = hVar;
        this.f4084g = z9;
        this.f4085h = list;
        if (lVar != null) {
            com.airbnb.lottie.animation.keyframe.o b10 = lVar.b();
            this.f4088k = b10;
            b10.a(aVar);
            this.f4088k.b(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = list.get(size);
            if (cVar instanceof j) {
                arrayList.add((j) cVar);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((j) arrayList.get(size2)).f(list.listIterator(list.size()));
        }
    }
}
