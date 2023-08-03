package com.airbnb.lottie.parser;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.facebook.common.callercontext.ContextChain;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* compiled from: KeyframeParser.java */
/* loaded from: classes.dex */
class q {

    /* renamed from: a  reason: collision with root package name */
    private static final float f4723a = 100.0f;

    /* renamed from: c  reason: collision with root package name */
    private static SparseArrayCompat<WeakReference<Interpolator>> f4725c;

    /* renamed from: b  reason: collision with root package name */
    private static final Interpolator f4724b = new LinearInterpolator();

    /* renamed from: d  reason: collision with root package name */
    static JsonReader.a f4726d = JsonReader.a.a("t", "s", "e", "o", ContextChain.TAG_INFRA, "h", TypedValues.Transition.S_TO, "ti");

    q() {
    }

    @Nullable
    private static WeakReference<Interpolator> a(int i4) {
        WeakReference<Interpolator> weakReference;
        synchronized (q.class) {
            weakReference = e().get(i4);
        }
        return weakReference;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> com.airbnb.lottie.value.a<T> b(JsonReader jsonReader, com.airbnb.lottie.f fVar, float f10, k0<T> k0Var, boolean z9) throws IOException {
        if (z9) {
            return c(fVar, jsonReader, f10, k0Var);
        }
        return d(jsonReader, f10, k0Var);
    }

    private static <T> com.airbnb.lottie.value.a<T> c(com.airbnb.lottie.f fVar, JsonReader jsonReader, float f10, k0<T> k0Var) throws IOException {
        Interpolator interpolator;
        jsonReader.d();
        PointF pointF = null;
        PointF pointF2 = null;
        T t9 = null;
        T t10 = null;
        PointF pointF3 = null;
        PointF pointF4 = null;
        boolean z9 = false;
        float f11 = 0.0f;
        while (jsonReader.k()) {
            switch (jsonReader.G(f4726d)) {
                case 0:
                    f11 = (float) jsonReader.q();
                    break;
                case 1:
                    t9 = k0Var.a(jsonReader, f10);
                    break;
                case 2:
                    t10 = k0Var.a(jsonReader, f10);
                    break;
                case 3:
                    pointF = p.e(jsonReader, f10);
                    break;
                case 4:
                    pointF2 = p.e(jsonReader, f10);
                    break;
                case 5:
                    if (jsonReader.r() != 1) {
                        z9 = false;
                        break;
                    } else {
                        z9 = true;
                        break;
                    }
                case 6:
                    pointF3 = p.e(jsonReader, f10);
                    break;
                case 7:
                    pointF4 = p.e(jsonReader, f10);
                    break;
                default:
                    jsonReader.I();
                    break;
            }
        }
        jsonReader.i();
        if (z9) {
            interpolator = f4724b;
            t10 = t9;
        } else if (pointF != null && pointF2 != null) {
            float f12 = -f10;
            pointF.x = com.airbnb.lottie.utils.g.b(pointF.x, f12, f10);
            pointF.y = com.airbnb.lottie.utils.g.b(pointF.y, -100.0f, f4723a);
            pointF2.x = com.airbnb.lottie.utils.g.b(pointF2.x, f12, f10);
            float b10 = com.airbnb.lottie.utils.g.b(pointF2.y, -100.0f, f4723a);
            pointF2.y = b10;
            int i4 = com.airbnb.lottie.utils.h.i(pointF.x, pointF.y, pointF2.x, b10);
            WeakReference<Interpolator> a10 = a(i4);
            Interpolator interpolator2 = a10 != null ? a10.get() : null;
            if (a10 == null || interpolator2 == null) {
                interpolator2 = PathInterpolatorCompat.create(pointF.x / f10, pointF.y / f10, pointF2.x / f10, pointF2.y / f10);
                try {
                    f(i4, new WeakReference(interpolator2));
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
            }
            interpolator = interpolator2;
        } else {
            interpolator = f4724b;
        }
        com.airbnb.lottie.value.a<T> aVar = new com.airbnb.lottie.value.a<>(fVar, t9, t10, interpolator, f11, null);
        aVar.f5661m = pointF3;
        aVar.f5662n = pointF4;
        return aVar;
    }

    private static <T> com.airbnb.lottie.value.a<T> d(JsonReader jsonReader, float f10, k0<T> k0Var) throws IOException {
        return new com.airbnb.lottie.value.a<>(k0Var.a(jsonReader, f10));
    }

    private static SparseArrayCompat<WeakReference<Interpolator>> e() {
        if (f4725c == null) {
            f4725c = new SparseArrayCompat<>();
        }
        return f4725c;
    }

    private static void f(int i4, WeakReference<Interpolator> weakReference) {
        synchronized (q.class) {
            f4725c.put(i4, weakReference);
        }
    }
}
