package com.airbnb.lottie.parser;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* compiled from: ColorParser.java */
/* loaded from: classes.dex */
public class f implements k0<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public static final f f4631a = new f();

    private f() {
    }

    @Override // com.airbnb.lottie.parser.k0
    /* renamed from: b */
    public Integer a(JsonReader jsonReader, float f10) throws IOException {
        boolean z9 = jsonReader.D() == JsonReader.Token.BEGIN_ARRAY;
        if (z9) {
            jsonReader.b();
        }
        double q9 = jsonReader.q();
        double q10 = jsonReader.q();
        double q11 = jsonReader.q();
        double q12 = jsonReader.q();
        if (z9) {
            jsonReader.h();
        }
        if (q9 <= 1.0d && q10 <= 1.0d && q11 <= 1.0d && q12 <= 1.0d) {
            q9 *= 255.0d;
            q10 *= 255.0d;
            q11 *= 255.0d;
            q12 *= 255.0d;
        }
        return Integer.valueOf(Color.argb((int) q12, (int) q9, (int) q10, (int) q11));
    }
}
