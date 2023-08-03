package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RepeaterParser.java */
/* loaded from: classes.dex */
public class c0 {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f4626a = JsonReader.a.a("nm", "c", "o", "tr", "hd");

    private c0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.content.g a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        String str = null;
        com.airbnb.lottie.model.animatable.b bVar = null;
        com.airbnb.lottie.model.animatable.b bVar2 = null;
        com.airbnb.lottie.model.animatable.l lVar = null;
        boolean z9 = false;
        while (jsonReader.k()) {
            int G = jsonReader.G(f4626a);
            if (G == 0) {
                str = jsonReader.y();
            } else if (G == 1) {
                bVar = d.f(jsonReader, fVar, false);
            } else if (G == 2) {
                bVar2 = d.f(jsonReader, fVar, false);
            } else if (G == 3) {
                lVar = c.g(jsonReader, fVar);
            } else if (G != 4) {
                jsonReader.I();
            } else {
                z9 = jsonReader.p();
            }
        }
        return new com.airbnb.lottie.model.content.g(str, bVar, bVar2, lVar, z9);
    }
}
