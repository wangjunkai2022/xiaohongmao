package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import io.sentry.protocol.y;
import java.io.IOException;
import java.util.ArrayList;

/* compiled from: AnimatablePathValueParser.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f4619a = JsonReader.a.a("k", y.b.f83919g, y.b.f83920h);

    private a() {
    }

    public static com.airbnb.lottie.model.animatable.e a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.D() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.b();
            while (jsonReader.k()) {
                arrayList.add(x.a(jsonReader, fVar));
            }
            jsonReader.h();
            r.b(arrayList);
        } else {
            arrayList.add(new com.airbnb.lottie.value.a(p.e(jsonReader, com.airbnb.lottie.utils.h.e())));
        }
        return new com.airbnb.lottie.model.animatable.e(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.animatable.m<PointF, PointF> b(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        jsonReader.d();
        com.airbnb.lottie.model.animatable.e eVar = null;
        com.airbnb.lottie.model.animatable.b bVar = null;
        com.airbnb.lottie.model.animatable.b bVar2 = null;
        boolean z9 = false;
        while (jsonReader.D() != JsonReader.Token.END_OBJECT) {
            int G = jsonReader.G(f4619a);
            if (G == 0) {
                eVar = a(jsonReader, fVar);
            } else if (G != 1) {
                if (G != 2) {
                    jsonReader.H();
                    jsonReader.I();
                } else if (jsonReader.D() == JsonReader.Token.STRING) {
                    jsonReader.I();
                    z9 = true;
                } else {
                    bVar2 = d.e(jsonReader, fVar);
                }
            } else if (jsonReader.D() == JsonReader.Token.STRING) {
                jsonReader.I();
                z9 = true;
            } else {
                bVar = d.e(jsonReader, fVar);
            }
        }
        jsonReader.i();
        if (z9) {
            fVar.a("Lottie doesn't support expressions.");
        }
        return eVar != null ? eVar : new com.airbnb.lottie.model.animatable.i(bVar, bVar2);
    }
}
