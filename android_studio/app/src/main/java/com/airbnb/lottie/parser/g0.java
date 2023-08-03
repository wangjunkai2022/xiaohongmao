package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShapeGroupParser.java */
/* loaded from: classes.dex */
public class g0 {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f4634a = JsonReader.a.a("nm", "hd", "it");

    private g0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.content.j a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        String str = null;
        boolean z9 = false;
        while (jsonReader.k()) {
            int G = jsonReader.G(f4634a);
            if (G == 0) {
                str = jsonReader.y();
            } else if (G == 1) {
                z9 = jsonReader.p();
            } else if (G != 2) {
                jsonReader.I();
            } else {
                jsonReader.b();
                while (jsonReader.k()) {
                    com.airbnb.lottie.model.content.b a10 = g.a(jsonReader, fVar);
                    if (a10 != null) {
                        arrayList.add(a10);
                    }
                }
                jsonReader.h();
            }
        }
        return new com.airbnb.lottie.model.content.j(str, arrayList, z9);
    }
}
