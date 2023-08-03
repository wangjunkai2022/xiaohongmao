package com.airbnb.lottie.utils;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.FloatRange;
import com.airbnb.lottie.animation.content.k;
import java.util.List;

/* compiled from: MiscUtils.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static PointF f5639a = new PointF();

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float b(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f12, f10));
    }

    public static int c(int i4, int i10, int i11) {
        return Math.max(i10, Math.min(i11, i4));
    }

    public static boolean d(float f10, float f11, float f12) {
        return f10 >= f11 && f10 <= f12;
    }

    private static int e(int i4, int i10) {
        int i11 = i4 / i10;
        return (((i4 ^ i10) >= 0) || i4 % i10 == 0) ? i11 : i11 - 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(float f10, float f11) {
        return g((int) f10, (int) f11);
    }

    private static int g(int i4, int i10) {
        return i4 - (i10 * e(i4, i10));
    }

    public static void h(com.airbnb.lottie.model.content.h hVar, Path path) {
        path.reset();
        PointF b10 = hVar.b();
        path.moveTo(b10.x, b10.y);
        f5639a.set(b10.x, b10.y);
        for (int i4 = 0; i4 < hVar.a().size(); i4++) {
            com.airbnb.lottie.model.a aVar = hVar.a().get(i4);
            PointF a10 = aVar.a();
            PointF b11 = aVar.b();
            PointF c10 = aVar.c();
            if (a10.equals(f5639a) && b11.equals(c10)) {
                path.lineTo(c10.x, c10.y);
            } else {
                path.cubicTo(a10.x, a10.y, b11.x, b11.y, c10.x, c10.y);
            }
            f5639a.set(c10.x, c10.y);
        }
        if (hVar.d()) {
            path.close();
        }
    }

    public static double i(double d4, double d10, @FloatRange(from = 0.0d, to = 1.0d) double d11) {
        return d4 + (d11 * (d10 - d4));
    }

    public static float j(float f10, float f11, @FloatRange(from = 0.0d, to = 1.0d) float f12) {
        return f10 + (f12 * (f11 - f10));
    }

    public static int k(int i4, int i10, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return (int) (i4 + (f10 * (i10 - i4)));
    }

    public static void l(com.airbnb.lottie.model.d dVar, int i4, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2, k kVar) {
        if (dVar.c(kVar.getName(), i4)) {
            list.add(dVar2.a(kVar.getName()).j(kVar));
        }
    }
}
