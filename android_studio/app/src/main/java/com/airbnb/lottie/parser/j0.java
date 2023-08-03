package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShapeTrimPathParser.java */
/* loaded from: classes.dex */
public class j0 {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f4643a = JsonReader.a.a("s", "e", "o", "nm", "m", "hd");

    private j0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ShapeTrimPath a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        String str = null;
        ShapeTrimPath.Type type = null;
        com.airbnb.lottie.model.animatable.b bVar = null;
        com.airbnb.lottie.model.animatable.b bVar2 = null;
        com.airbnb.lottie.model.animatable.b bVar3 = null;
        boolean z9 = false;
        while (jsonReader.k()) {
            int G = jsonReader.G(f4643a);
            if (G == 0) {
                bVar = d.f(jsonReader, fVar, false);
            } else if (G == 1) {
                bVar2 = d.f(jsonReader, fVar, false);
            } else if (G == 2) {
                bVar3 = d.f(jsonReader, fVar, false);
            } else if (G == 3) {
                str = jsonReader.y();
            } else if (G == 4) {
                type = ShapeTrimPath.Type.forId(jsonReader.r());
            } else if (G != 5) {
                jsonReader.I();
            } else {
                z9 = jsonReader.p();
            }
        }
        return new ShapeTrimPath(str, type, bVar, bVar2, bVar3, z9);
    }
}
