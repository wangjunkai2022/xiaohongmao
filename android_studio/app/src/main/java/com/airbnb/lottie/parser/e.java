package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CircleShapeParser.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f4628a = JsonReader.a.a("nm", "p", "s", "hd", "d");

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.content.a a(JsonReader jsonReader, com.airbnb.lottie.f fVar, int i4) throws IOException {
        boolean z9 = i4 == 3;
        String str = null;
        com.airbnb.lottie.model.animatable.m<PointF, PointF> mVar = null;
        com.airbnb.lottie.model.animatable.f fVar2 = null;
        boolean z10 = false;
        while (jsonReader.k()) {
            int G = jsonReader.G(f4628a);
            if (G == 0) {
                str = jsonReader.y();
            } else if (G == 1) {
                mVar = a.b(jsonReader, fVar);
            } else if (G == 2) {
                fVar2 = d.i(jsonReader, fVar);
            } else if (G == 3) {
                z10 = jsonReader.p();
            } else if (G != 4) {
                jsonReader.H();
                jsonReader.I();
            } else {
                z9 = jsonReader.r() == 3;
            }
        }
        return new com.airbnb.lottie.model.content.a(str, mVar, fVar2, z9, z10);
    }
}
