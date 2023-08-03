package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;

/* compiled from: AnimatableTransformParser.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f4624a = JsonReader.a.a("a", "p", "s", "rz", "r", "o", "so", "eo", "sk", "sa");

    /* renamed from: b  reason: collision with root package name */
    private static JsonReader.a f4625b = JsonReader.a.a("k");

    private c() {
    }

    private static boolean a(com.airbnb.lottie.model.animatable.e eVar) {
        return eVar == null || (eVar.isStatic() && eVar.b().get(0).f5650b.equals(0.0f, 0.0f));
    }

    private static boolean b(com.airbnb.lottie.model.animatable.m<PointF, PointF> mVar) {
        return mVar == null || (!(mVar instanceof com.airbnb.lottie.model.animatable.i) && mVar.isStatic() && mVar.b().get(0).f5650b.equals(0.0f, 0.0f));
    }

    private static boolean c(com.airbnb.lottie.model.animatable.b bVar) {
        return bVar == null || (bVar.isStatic() && ((Float) ((com.airbnb.lottie.value.a) bVar.b().get(0)).f5650b).floatValue() == 0.0f);
    }

    private static boolean d(com.airbnb.lottie.model.animatable.g gVar) {
        return gVar == null || (gVar.isStatic() && ((com.airbnb.lottie.value.k) ((com.airbnb.lottie.value.a) gVar.b().get(0)).f5650b).a(1.0f, 1.0f));
    }

    private static boolean e(com.airbnb.lottie.model.animatable.b bVar) {
        return bVar == null || (bVar.isStatic() && ((Float) ((com.airbnb.lottie.value.a) bVar.b().get(0)).f5650b).floatValue() == 0.0f);
    }

    private static boolean f(com.airbnb.lottie.model.animatable.b bVar) {
        return bVar == null || (bVar.isStatic() && ((Float) ((com.airbnb.lottie.value.a) bVar.b().get(0)).f5650b).floatValue() == 0.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.airbnb.lottie.model.animatable.l g(com.airbnb.lottie.parser.moshi.JsonReader r27, com.airbnb.lottie.f r28) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.c.g(com.airbnb.lottie.parser.moshi.JsonReader, com.airbnb.lottie.f):com.airbnb.lottie.model.animatable.l");
    }
}
