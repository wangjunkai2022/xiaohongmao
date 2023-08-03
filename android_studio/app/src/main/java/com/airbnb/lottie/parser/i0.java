package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShapeStrokeParser.java */
/* loaded from: classes.dex */
public class i0 {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f4639a = JsonReader.a.a("nm", "c", "w", "o", "lc", "lj", "ml", "hd", "d");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f4640b = JsonReader.a.a("n", "v");

    private i0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static ShapeStroke a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        char c10;
        ArrayList arrayList = new ArrayList();
        String str = null;
        com.airbnb.lottie.model.animatable.b bVar = null;
        com.airbnb.lottie.model.animatable.a aVar = null;
        com.airbnb.lottie.model.animatable.d dVar = null;
        com.airbnb.lottie.model.animatable.b bVar2 = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        float f10 = 0.0f;
        boolean z9 = false;
        while (jsonReader.k()) {
            switch (jsonReader.G(f4639a)) {
                case 0:
                    str = jsonReader.y();
                    break;
                case 1:
                    aVar = d.c(jsonReader, fVar);
                    break;
                case 2:
                    bVar2 = d.e(jsonReader, fVar);
                    break;
                case 3:
                    dVar = d.h(jsonReader, fVar);
                    break;
                case 4:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.r() - 1];
                    break;
                case 5:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.r() - 1];
                    break;
                case 6:
                    f10 = (float) jsonReader.q();
                    break;
                case 7:
                    z9 = jsonReader.p();
                    break;
                case 8:
                    jsonReader.b();
                    while (jsonReader.k()) {
                        jsonReader.d();
                        String str2 = null;
                        com.airbnb.lottie.model.animatable.b bVar3 = null;
                        while (jsonReader.k()) {
                            int G = jsonReader.G(f4640b);
                            if (G == 0) {
                                str2 = jsonReader.y();
                            } else if (G != 1) {
                                jsonReader.H();
                                jsonReader.I();
                            } else {
                                bVar3 = d.e(jsonReader, fVar);
                            }
                        }
                        jsonReader.i();
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case 100:
                                if (str2.equals("d")) {
                                    c10 = 0;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 103:
                                if (str2.equals("g")) {
                                    c10 = 1;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 111:
                                if (str2.equals("o")) {
                                    c10 = 2;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            default:
                                c10 = 65535;
                                break;
                        }
                        switch (c10) {
                            case 0:
                            case 1:
                                fVar.w(true);
                                arrayList.add(bVar3);
                                break;
                            case 2:
                                bVar = bVar3;
                                break;
                        }
                    }
                    jsonReader.h();
                    if (arrayList.size() != 1) {
                        break;
                    } else {
                        arrayList.add(arrayList.get(0));
                        break;
                    }
                    break;
                default:
                    jsonReader.I();
                    break;
            }
        }
        return new ShapeStroke(str, bVar, arrayList, aVar, dVar, bVar2, lineCapType, lineJoinType, f10, z9);
    }
}
