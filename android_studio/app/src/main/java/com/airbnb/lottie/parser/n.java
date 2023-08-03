package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GradientStrokeParser.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f4717a = JsonReader.a.a("nm", "g", "o", "t", "s", "e", "w", "lc", "lj", "ml", "hd", "d");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f4718b = JsonReader.a.a("p", "k");

    /* renamed from: c  reason: collision with root package name */
    private static final JsonReader.a f4719c = JsonReader.a.a("n", "v");

    private n() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.content.e a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        com.airbnb.lottie.model.animatable.c cVar;
        ArrayList arrayList = new ArrayList();
        String str = null;
        GradientType gradientType = null;
        com.airbnb.lottie.model.animatable.c cVar2 = null;
        com.airbnb.lottie.model.animatable.d dVar = null;
        com.airbnb.lottie.model.animatable.f fVar2 = null;
        com.airbnb.lottie.model.animatable.f fVar3 = null;
        com.airbnb.lottie.model.animatable.b bVar = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        float f10 = 0.0f;
        com.airbnb.lottie.model.animatable.b bVar2 = null;
        boolean z9 = false;
        while (jsonReader.k()) {
            switch (jsonReader.G(f4717a)) {
                case 0:
                    str = jsonReader.y();
                    break;
                case 1:
                    int i4 = -1;
                    jsonReader.d();
                    while (jsonReader.k()) {
                        int G = jsonReader.G(f4718b);
                        if (G != 0) {
                            cVar = cVar2;
                            if (G != 1) {
                                jsonReader.H();
                                jsonReader.I();
                            } else {
                                cVar2 = d.g(jsonReader, fVar, i4);
                            }
                        } else {
                            cVar = cVar2;
                            i4 = jsonReader.r();
                        }
                        cVar2 = cVar;
                    }
                    jsonReader.i();
                    break;
                case 2:
                    dVar = d.h(jsonReader, fVar);
                    break;
                case 3:
                    gradientType = jsonReader.r() == 1 ? GradientType.LINEAR : GradientType.RADIAL;
                    break;
                case 4:
                    fVar2 = d.i(jsonReader, fVar);
                    break;
                case 5:
                    fVar3 = d.i(jsonReader, fVar);
                    break;
                case 6:
                    bVar = d.e(jsonReader, fVar);
                    break;
                case 7:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.r() - 1];
                    break;
                case 8:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.r() - 1];
                    break;
                case 9:
                    f10 = (float) jsonReader.q();
                    break;
                case 10:
                    z9 = jsonReader.p();
                    break;
                case 11:
                    jsonReader.b();
                    while (jsonReader.k()) {
                        jsonReader.d();
                        String str2 = null;
                        com.airbnb.lottie.model.animatable.b bVar3 = null;
                        while (jsonReader.k()) {
                            int G2 = jsonReader.G(f4719c);
                            if (G2 != 0) {
                                com.airbnb.lottie.model.animatable.b bVar4 = bVar2;
                                if (G2 != 1) {
                                    jsonReader.H();
                                    jsonReader.I();
                                } else {
                                    bVar3 = d.e(jsonReader, fVar);
                                }
                                bVar2 = bVar4;
                            } else {
                                str2 = jsonReader.y();
                            }
                        }
                        com.airbnb.lottie.model.animatable.b bVar5 = bVar2;
                        jsonReader.i();
                        if (str2.equals("o")) {
                            bVar2 = bVar3;
                        } else {
                            if (str2.equals("d") || str2.equals("g")) {
                                fVar.w(true);
                                arrayList.add(bVar3);
                            }
                            bVar2 = bVar5;
                        }
                    }
                    com.airbnb.lottie.model.animatable.b bVar6 = bVar2;
                    jsonReader.h();
                    if (arrayList.size() == 1) {
                        arrayList.add(arrayList.get(0));
                    }
                    bVar2 = bVar6;
                    break;
                default:
                    jsonReader.H();
                    jsonReader.I();
                    break;
            }
        }
        return new com.airbnb.lottie.model.content.e(str, gradientType, cVar2, dVar, fVar2, fVar3, bVar, lineCapType, lineJoinType, f10, arrayList, bVar2, z9);
    }
}
