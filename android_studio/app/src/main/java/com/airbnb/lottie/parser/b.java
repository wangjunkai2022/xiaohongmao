package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* compiled from: AnimatableTextPropertiesParser.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f4621a = JsonReader.a.a("a");

    /* renamed from: b  reason: collision with root package name */
    private static JsonReader.a f4622b = JsonReader.a.a("fc", "sc", com.ksyun.media.player.d.d.ap, "t");

    private b() {
    }

    public static com.airbnb.lottie.model.animatable.k a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        jsonReader.d();
        com.airbnb.lottie.model.animatable.k kVar = null;
        while (jsonReader.k()) {
            if (jsonReader.G(f4621a) != 0) {
                jsonReader.H();
                jsonReader.I();
            } else {
                kVar = b(jsonReader, fVar);
            }
        }
        jsonReader.i();
        return kVar == null ? new com.airbnb.lottie.model.animatable.k(null, null, null, null) : kVar;
    }

    private static com.airbnb.lottie.model.animatable.k b(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        jsonReader.d();
        com.airbnb.lottie.model.animatable.a aVar = null;
        com.airbnb.lottie.model.animatable.a aVar2 = null;
        com.airbnb.lottie.model.animatable.b bVar = null;
        com.airbnb.lottie.model.animatable.b bVar2 = null;
        while (jsonReader.k()) {
            int G = jsonReader.G(f4622b);
            if (G == 0) {
                aVar = d.c(jsonReader, fVar);
            } else if (G == 1) {
                aVar2 = d.c(jsonReader, fVar);
            } else if (G == 2) {
                bVar = d.e(jsonReader, fVar);
            } else if (G != 3) {
                jsonReader.H();
                jsonReader.I();
            } else {
                bVar2 = d.e(jsonReader, fVar);
            }
        }
        jsonReader.i();
        return new com.airbnb.lottie.model.animatable.k(aVar, aVar2, bVar, bVar2);
    }
}
