package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* compiled from: ScaleXYParser.java */
/* loaded from: classes.dex */
public class d0 implements k0<com.airbnb.lottie.value.k> {

    /* renamed from: a  reason: collision with root package name */
    public static final d0 f4627a = new d0();

    private d0() {
    }

    @Override // com.airbnb.lottie.parser.k0
    /* renamed from: b */
    public com.airbnb.lottie.value.k a(JsonReader jsonReader, float f10) throws IOException {
        boolean z9 = jsonReader.D() == JsonReader.Token.BEGIN_ARRAY;
        if (z9) {
            jsonReader.b();
        }
        float q9 = (float) jsonReader.q();
        float q10 = (float) jsonReader.q();
        while (jsonReader.k()) {
            jsonReader.I();
        }
        if (z9) {
            jsonReader.h();
        }
        return new com.airbnb.lottie.value.k((q9 / 100.0f) * f10, (q10 / 100.0f) * f10);
    }
}
