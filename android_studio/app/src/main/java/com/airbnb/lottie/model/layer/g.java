package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.animation.keyframe.n;
import com.airbnb.lottie.animation.keyframe.p;
import com.airbnb.lottie.m;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.animatable.k;
import com.airbnb.lottie.model.content.j;
import com.airbnb.lottie.t;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: TextLayer.java */
/* loaded from: classes.dex */
public class g extends com.airbnb.lottie.model.layer.a {
    private final StringBuilder A;
    private final RectF B;
    private final Matrix C;
    private final Paint D;
    private final Paint E;
    private final Map<com.airbnb.lottie.model.c, List<com.airbnb.lottie.animation.content.d>> F;
    private final LongSparseArray<String> G;
    private final n H;
    private final com.airbnb.lottie.h I;
    private final com.airbnb.lottie.f J;
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Integer, Integer> K;
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Integer, Integer> L;
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> M;
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> N;

    /* compiled from: TextLayer.java */
    /* loaded from: classes.dex */
    class a extends Paint {
        a(int i4) {
            super(i4);
            setStyle(Paint.Style.FILL);
        }
    }

    /* compiled from: TextLayer.java */
    /* loaded from: classes.dex */
    class b extends Paint {
        b(int i4) {
            super(i4);
            setStyle(Paint.Style.STROKE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TextLayer.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4603a;

        static {
            int[] iArr = new int[DocumentData.Justification.values().length];
            f4603a = iArr;
            try {
                iArr[DocumentData.Justification.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4603a[DocumentData.Justification.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4603a[DocumentData.Justification.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(com.airbnb.lottie.h hVar, Layer layer) {
        super(hVar, layer);
        com.airbnb.lottie.model.animatable.b bVar;
        com.airbnb.lottie.model.animatable.b bVar2;
        com.airbnb.lottie.model.animatable.a aVar;
        com.airbnb.lottie.model.animatable.a aVar2;
        this.A = new StringBuilder(2);
        this.B = new RectF();
        this.C = new Matrix();
        this.D = new a(1);
        this.E = new b(1);
        this.F = new HashMap();
        this.G = new LongSparseArray<>();
        this.I = hVar;
        this.J = layer.a();
        n a10 = layer.q().a();
        this.H = a10;
        a10.a(this);
        h(a10);
        k r9 = layer.r();
        if (r9 != null && (aVar2 = r9.f4413a) != null) {
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> a11 = aVar2.a();
            this.K = a11;
            a11.a(this);
            h(this.K);
        }
        if (r9 != null && (aVar = r9.f4414b) != null) {
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> a12 = aVar.a();
            this.L = a12;
            a12.a(this);
            h(this.L);
        }
        if (r9 != null && (bVar2 = r9.f4415c) != null) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> a13 = bVar2.a();
            this.M = a13;
            a13.a(this);
            h(this.M);
        }
        if (r9 == null || (bVar = r9.f4416d) == null) {
            return;
        }
        com.airbnb.lottie.animation.keyframe.a<Float, Float> a14 = bVar.a();
        this.N = a14;
        a14.a(this);
        h(this.N);
    }

    private void H(DocumentData.Justification justification, Canvas canvas, float f10) {
        int i4 = c.f4603a[justification.ordinal()];
        if (i4 == 2) {
            canvas.translate(-f10, 0.0f);
        } else if (i4 != 3) {
        } else {
            canvas.translate((-f10) / 2.0f, 0.0f);
        }
    }

    private String I(String str, int i4) {
        int codePointAt = str.codePointAt(i4);
        int charCount = Character.charCount(codePointAt) + i4;
        while (charCount < str.length()) {
            int codePointAt2 = str.codePointAt(charCount);
            if (!U(codePointAt2)) {
                break;
            }
            charCount += Character.charCount(codePointAt2);
            codePointAt = (codePointAt * 31) + codePointAt2;
        }
        long j4 = codePointAt;
        if (this.G.containsKey(j4)) {
            return this.G.get(j4);
        }
        this.A.setLength(0);
        while (i4 < charCount) {
            int codePointAt3 = str.codePointAt(i4);
            this.A.appendCodePoint(codePointAt3);
            i4 += Character.charCount(codePointAt3);
        }
        String sb = this.A.toString();
        this.G.put(j4, sb);
        return sb;
    }

    private void J(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private void K(com.airbnb.lottie.model.c cVar, Matrix matrix, float f10, DocumentData documentData, Canvas canvas) {
        List<com.airbnb.lottie.animation.content.d> R = R(cVar);
        for (int i4 = 0; i4 < R.size(); i4++) {
            Path path = R.get(i4).getPath();
            path.computeBounds(this.B, false);
            this.C.set(matrix);
            this.C.preTranslate(0.0f, ((float) (-documentData.f4401g)) * com.airbnb.lottie.utils.h.e());
            this.C.preScale(f10, f10);
            path.transform(this.C);
            if (documentData.f4405k) {
                N(path, this.D, canvas);
                N(path, this.E, canvas);
            } else {
                N(path, this.E, canvas);
                N(path, this.D, canvas);
            }
        }
    }

    private void L(String str, DocumentData documentData, Canvas canvas) {
        if (documentData.f4405k) {
            J(str, this.D, canvas);
            J(str, this.E, canvas);
            return;
        }
        J(str, this.E, canvas);
        J(str, this.D, canvas);
    }

    private void M(String str, DocumentData documentData, Canvas canvas, float f10) {
        int i4 = 0;
        while (i4 < str.length()) {
            String I = I(str, i4);
            i4 += I.length();
            L(I, documentData, canvas);
            float measureText = this.D.measureText(I, 0, 1);
            float f11 = documentData.f4399e / 10.0f;
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar = this.N;
            if (aVar != null) {
                f11 += aVar.h().floatValue();
            }
            canvas.translate(measureText + (f11 * f10), 0.0f);
        }
    }

    private void N(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void O(String str, DocumentData documentData, Matrix matrix, com.airbnb.lottie.model.b bVar, Canvas canvas, float f10, float f11) {
        for (int i4 = 0; i4 < str.length(); i4++) {
            com.airbnb.lottie.model.c cVar = this.J.c().get(com.airbnb.lottie.model.c.e(str.charAt(i4), bVar.b(), bVar.d()));
            if (cVar != null) {
                K(cVar, matrix, f11, documentData, canvas);
                float d4 = ((float) cVar.d()) * f11 * com.airbnb.lottie.utils.h.e() * f10;
                float f12 = documentData.f4399e / 10.0f;
                com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar = this.N;
                if (aVar != null) {
                    f12 += aVar.h().floatValue();
                }
                canvas.translate(d4 + (f12 * f10), 0.0f);
            }
        }
    }

    private void P(DocumentData documentData, Matrix matrix, com.airbnb.lottie.model.b bVar, Canvas canvas) {
        float f10 = ((float) documentData.f4397c) / 100.0f;
        float g4 = com.airbnb.lottie.utils.h.g(matrix);
        String str = documentData.f4395a;
        float e4 = ((float) documentData.f4400f) * com.airbnb.lottie.utils.h.e();
        List<String> T = T(str);
        int size = T.size();
        for (int i4 = 0; i4 < size; i4++) {
            String str2 = T.get(i4);
            float S = S(str2, bVar, f10, g4);
            canvas.save();
            H(documentData.f4398d, canvas, S);
            canvas.translate(0.0f, (i4 * e4) - (((size - 1) * e4) / 2.0f));
            O(str2, documentData, matrix, bVar, canvas, g4, f10);
            canvas.restore();
        }
    }

    private void Q(DocumentData documentData, com.airbnb.lottie.model.b bVar, Matrix matrix, Canvas canvas) {
        float g4 = com.airbnb.lottie.utils.h.g(matrix);
        Typeface D = this.I.D(bVar.b(), bVar.d());
        if (D == null) {
            return;
        }
        String str = documentData.f4395a;
        t C = this.I.C();
        if (C != null) {
            str = C.b(str);
        }
        this.D.setTypeface(D);
        this.D.setTextSize((float) (documentData.f4397c * com.airbnb.lottie.utils.h.e()));
        this.E.setTypeface(this.D.getTypeface());
        this.E.setTextSize(this.D.getTextSize());
        float e4 = ((float) documentData.f4400f) * com.airbnb.lottie.utils.h.e();
        List<String> T = T(str);
        int size = T.size();
        for (int i4 = 0; i4 < size; i4++) {
            String str2 = T.get(i4);
            H(documentData.f4398d, canvas, this.E.measureText(str2));
            canvas.translate(0.0f, (i4 * e4) - (((size - 1) * e4) / 2.0f));
            M(str2, documentData, canvas, g4);
            canvas.setMatrix(matrix);
        }
    }

    private List<com.airbnb.lottie.animation.content.d> R(com.airbnb.lottie.model.c cVar) {
        if (this.F.containsKey(cVar)) {
            return this.F.get(cVar);
        }
        List<j> a10 = cVar.a();
        int size = a10.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            arrayList.add(new com.airbnb.lottie.animation.content.d(this.I, this, a10.get(i4)));
        }
        this.F.put(cVar, arrayList);
        return arrayList;
    }

    private float S(String str, com.airbnb.lottie.model.b bVar, float f10, float f11) {
        float f12 = 0.0f;
        for (int i4 = 0; i4 < str.length(); i4++) {
            com.airbnb.lottie.model.c cVar = this.J.c().get(com.airbnb.lottie.model.c.e(str.charAt(i4), bVar.b(), bVar.d()));
            if (cVar != null) {
                f12 = (float) (f12 + (cVar.d() * f10 * com.airbnb.lottie.utils.h.e() * f11));
            }
        }
        return f12;
    }

    private List<String> T(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
    }

    private boolean U(int i4) {
        return Character.getType(i4) == 16 || Character.getType(i4) == 27 || Character.getType(i4) == 6 || Character.getType(i4) == 28 || Character.getType(i4) == 19;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.model.e
    public <T> void c(T t9, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        super.c(t9, jVar);
        if (t9 == m.f4358a) {
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar = this.K;
            if (aVar != null) {
                aVar.m(jVar);
            } else if (jVar == 0) {
                if (aVar != null) {
                    A(aVar);
                }
                this.K = null;
            } else {
                p pVar = new p(jVar);
                this.K = pVar;
                pVar.a(this);
                h(this.K);
            }
        } else if (t9 == m.f4359b) {
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2 = this.L;
            if (aVar2 != null) {
                aVar2.m(jVar);
            } else if (jVar == 0) {
                if (aVar2 != null) {
                    A(aVar2);
                }
                this.L = null;
            } else {
                p pVar2 = new p(jVar);
                this.L = pVar2;
                pVar2.a(this);
                h(this.L);
            }
        } else if (t9 == m.f4372o) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar3 = this.M;
            if (aVar3 != null) {
                aVar3.m(jVar);
            } else if (jVar == 0) {
                if (aVar3 != null) {
                    A(aVar3);
                }
                this.M = null;
            } else {
                p pVar3 = new p(jVar);
                this.M = pVar3;
                pVar3.a(this);
                h(this.M);
            }
        } else if (t9 == m.f4373p) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar4 = this.N;
            if (aVar4 != null) {
                aVar4.m(jVar);
            } else if (jVar == 0) {
                if (aVar4 != null) {
                    A(aVar4);
                }
                this.N = null;
            } else {
                p pVar4 = new p(jVar);
                this.N = pVar4;
                pVar4.a(this);
                h(this.N);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.e
    public void e(RectF rectF, Matrix matrix, boolean z9) {
        super.e(rectF, matrix, z9);
        rectF.set(0.0f, 0.0f, this.J.b().width(), this.J.b().height());
    }

    @Override // com.airbnb.lottie.model.layer.a
    void r(Canvas canvas, Matrix matrix, int i4) {
        canvas.save();
        if (!this.I.t0()) {
            canvas.setMatrix(matrix);
        }
        DocumentData h4 = this.H.h();
        com.airbnb.lottie.model.b bVar = this.J.g().get(h4.f4396b);
        if (bVar == null) {
            canvas.restore();
            return;
        }
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar = this.K;
        if (aVar != null) {
            this.D.setColor(aVar.h().intValue());
        } else {
            this.D.setColor(h4.f4402h);
        }
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2 = this.L;
        if (aVar2 != null) {
            this.E.setColor(aVar2.h().intValue());
        } else {
            this.E.setColor(h4.f4403i);
        }
        int intValue = ((this.f4594u.h() == null ? 100 : this.f4594u.h().h().intValue()) * 255) / 100;
        this.D.setAlpha(intValue);
        this.E.setAlpha(intValue);
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar3 = this.M;
        if (aVar3 != null) {
            this.E.setStrokeWidth(aVar3.h().floatValue());
        } else {
            this.E.setStrokeWidth((float) (h4.f4404j * com.airbnb.lottie.utils.h.e() * com.airbnb.lottie.utils.h.g(matrix)));
        }
        if (this.I.t0()) {
            P(h4, matrix, bVar, canvas);
        } else {
            Q(h4, bVar, matrix, canvas);
        }
        canvas.restore();
    }
}
