package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* compiled from: FontParser.java */
/* loaded from: classes.dex */
class k {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f4644a = JsonReader.a.a("fFamily", "fName", "fStyle", "ascent");

    private k() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.b a(JsonReader jsonReader) throws IOException {
        jsonReader.d();
        String str = null;
        String str2 = null;
        String str3 = null;
        float f10 = 0.0f;
        while (jsonReader.k()) {
            int G = jsonReader.G(f4644a);
            if (G == 0) {
                str = jsonReader.y();
            } else if (G == 1) {
                str2 = jsonReader.y();
            } else if (G == 2) {
                str3 = jsonReader.y();
            } else if (G != 3) {
                jsonReader.H();
                jsonReader.I();
            } else {
                f10 = (float) jsonReader.q();
            }
        }
        jsonReader.i();
        return new com.airbnb.lottie.model.b(str, str2, str3, f10);
    }
}
