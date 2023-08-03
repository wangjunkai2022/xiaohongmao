package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* compiled from: PointFParser.java */
/* loaded from: classes.dex */
public class z implements k0<PointF> {

    /* renamed from: a  reason: collision with root package name */
    public static final z f4738a = new z();

    private z() {
    }

    @Override // com.airbnb.lottie.parser.k0
    /* renamed from: b */
    public PointF a(JsonReader jsonReader, float f10) throws IOException {
        JsonReader.Token D = jsonReader.D();
        if (D == JsonReader.Token.BEGIN_ARRAY) {
            return p.e(jsonReader, f10);
        }
        if (D == JsonReader.Token.BEGIN_OBJECT) {
            return p.e(jsonReader, f10);
        }
        if (D == JsonReader.Token.NUMBER) {
            PointF pointF = new PointF(((float) jsonReader.q()) * f10, ((float) jsonReader.q()) * f10);
            while (jsonReader.k()) {
                jsonReader.I();
            }
            return pointF;
        }
        throw new IllegalArgumentException("Cannot convert json to point. Next token is " + D);
    }
}
