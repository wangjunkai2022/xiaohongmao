package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FontCharacterParser.java */
/* loaded from: classes.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f4641a = JsonReader.a.a("ch", com.qennnsad.aknkaksd.data.repository.f.f47745b, "w", com.google.android.exoplayer2.text.ttml.d.f25736u, "fFamily", "data");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f4642b = JsonReader.a.a("shapes");

    private j() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.c a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.d();
        String str = null;
        String str2 = null;
        double d4 = 0.0d;
        double d10 = 0.0d;
        char c10 = 0;
        while (jsonReader.k()) {
            int G = jsonReader.G(f4641a);
            if (G == 0) {
                c10 = jsonReader.y().charAt(0);
            } else if (G == 1) {
                d4 = jsonReader.q();
            } else if (G == 2) {
                d10 = jsonReader.q();
            } else if (G == 3) {
                str = jsonReader.y();
            } else if (G == 4) {
                str2 = jsonReader.y();
            } else if (G != 5) {
                jsonReader.H();
                jsonReader.I();
            } else {
                jsonReader.d();
                while (jsonReader.k()) {
                    if (jsonReader.G(f4642b) != 0) {
                        jsonReader.H();
                        jsonReader.I();
                    } else {
                        jsonReader.b();
                        while (jsonReader.k()) {
                            arrayList.add((com.airbnb.lottie.model.content.j) g.a(jsonReader, fVar));
                        }
                        jsonReader.h();
                    }
                }
                jsonReader.i();
            }
        }
        jsonReader.i();
        return new com.airbnb.lottie.model.c(arrayList, c10, d4, d10, str, str2);
    }
}
