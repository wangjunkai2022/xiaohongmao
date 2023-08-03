package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShapePathParser.java */
/* loaded from: classes.dex */
public class h0 {

    /* renamed from: a  reason: collision with root package name */
    static JsonReader.a f4637a = JsonReader.a.a("nm", "ind", "ks", "hd");

    private h0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.content.k a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        int i4 = 0;
        String str = null;
        com.airbnb.lottie.model.animatable.h hVar = null;
        boolean z9 = false;
        while (jsonReader.k()) {
            int G = jsonReader.G(f4637a);
            if (G == 0) {
                str = jsonReader.y();
            } else if (G == 1) {
                i4 = jsonReader.r();
            } else if (G == 2) {
                hVar = d.k(jsonReader, fVar);
            } else if (G != 3) {
                jsonReader.I();
            } else {
                z9 = jsonReader.p();
            }
        }
        return new com.airbnb.lottie.model.content.k(str, i4, hVar, z9);
    }
}
