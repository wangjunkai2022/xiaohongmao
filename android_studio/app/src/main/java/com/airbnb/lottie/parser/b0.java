package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RectangleShapeParser.java */
/* loaded from: classes.dex */
public class b0 {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f4623a = JsonReader.a.a("nm", "p", "s", "r", "hd");

    private b0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.content.f a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        String str = null;
        com.airbnb.lottie.model.animatable.m<PointF, PointF> mVar = null;
        com.airbnb.lottie.model.animatable.f fVar2 = null;
        com.airbnb.lottie.model.animatable.b bVar = null;
        boolean z9 = false;
        while (jsonReader.k()) {
            int G = jsonReader.G(f4623a);
            if (G == 0) {
                str = jsonReader.y();
            } else if (G == 1) {
                mVar = a.b(jsonReader, fVar);
            } else if (G == 2) {
                fVar2 = d.i(jsonReader, fVar);
            } else if (G == 3) {
                bVar = d.e(jsonReader, fVar);
            } else if (G != 4) {
                jsonReader.I();
            } else {
                z9 = jsonReader.p();
            }
        }
        return new com.airbnb.lottie.model.content.f(str, mVar, fVar2, bVar, z9);
    }
}
