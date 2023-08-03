package com.airbnb.lottie.parser;

import android.graphics.Path;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GradientFillParser.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f4646a = JsonReader.a.a("nm", "g", "o", "t", "s", "e", "r", "hd");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f4647b = JsonReader.a.a("p", "k");

    private m() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.content.d a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        Path.FillType fillType = Path.FillType.WINDING;
        String str = null;
        GradientType gradientType = null;
        com.airbnb.lottie.model.animatable.c cVar = null;
        com.airbnb.lottie.model.animatable.d dVar = null;
        com.airbnb.lottie.model.animatable.f fVar2 = null;
        com.airbnb.lottie.model.animatable.f fVar3 = null;
        boolean z9 = false;
        while (jsonReader.k()) {
            switch (jsonReader.G(f4646a)) {
                case 0:
                    str = jsonReader.y();
                    break;
                case 1:
                    int i4 = -1;
                    jsonReader.d();
                    while (jsonReader.k()) {
                        int G = jsonReader.G(f4647b);
                        if (G == 0) {
                            i4 = jsonReader.r();
                        } else if (G != 1) {
                            jsonReader.H();
                            jsonReader.I();
                        } else {
                            cVar = d.g(jsonReader, fVar, i4);
                        }
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
                    fillType = jsonReader.r() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                    break;
                case 7:
                    z9 = jsonReader.p();
                    break;
                default:
                    jsonReader.H();
                    jsonReader.I();
                    break;
            }
        }
        return new com.airbnb.lottie.model.content.d(str, gradientType, fillType, cVar, dVar, fVar2, fVar3, null, null, z9);
    }
}
