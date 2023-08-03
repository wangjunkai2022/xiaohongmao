package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PolystarShapeParser.java */
/* loaded from: classes.dex */
public class a0 {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f4620a = JsonReader.a.a("nm", "sy", "pt", "p", "r", "or", io.sentry.protocol.h.f83693h, "ir", "is", "hd");

    private a0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PolystarShape a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        String str = null;
        PolystarShape.Type type = null;
        com.airbnb.lottie.model.animatable.b bVar = null;
        com.airbnb.lottie.model.animatable.m<PointF, PointF> mVar = null;
        com.airbnb.lottie.model.animatable.b bVar2 = null;
        com.airbnb.lottie.model.animatable.b bVar3 = null;
        com.airbnb.lottie.model.animatable.b bVar4 = null;
        com.airbnb.lottie.model.animatable.b bVar5 = null;
        com.airbnb.lottie.model.animatable.b bVar6 = null;
        boolean z9 = false;
        while (jsonReader.k()) {
            switch (jsonReader.G(f4620a)) {
                case 0:
                    str = jsonReader.y();
                    break;
                case 1:
                    type = PolystarShape.Type.forValue(jsonReader.r());
                    break;
                case 2:
                    bVar = d.f(jsonReader, fVar, false);
                    break;
                case 3:
                    mVar = a.b(jsonReader, fVar);
                    break;
                case 4:
                    bVar2 = d.f(jsonReader, fVar, false);
                    break;
                case 5:
                    bVar4 = d.e(jsonReader, fVar);
                    break;
                case 6:
                    bVar6 = d.f(jsonReader, fVar, false);
                    break;
                case 7:
                    bVar3 = d.e(jsonReader, fVar);
                    break;
                case 8:
                    bVar5 = d.f(jsonReader, fVar, false);
                    break;
                case 9:
                    z9 = jsonReader.p();
                    break;
                default:
                    jsonReader.H();
                    jsonReader.I();
                    break;
            }
        }
        return new PolystarShape(str, type, bVar, mVar, bVar2, bVar3, bVar4, bVar5, bVar6, z9);
    }
}
