package com.airbnb.lottie.parser;

import android.graphics.Path;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShapeFillParser.java */
/* loaded from: classes.dex */
public class f0 {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f4632a = JsonReader.a.a("nm", "c", "o", "fillEnabled", "r", "hd");

    private f0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.content.i a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        String str = null;
        com.airbnb.lottie.model.animatable.a aVar = null;
        com.airbnb.lottie.model.animatable.d dVar = null;
        int i4 = 1;
        boolean z9 = false;
        boolean z10 = false;
        while (jsonReader.k()) {
            int G = jsonReader.G(f4632a);
            if (G == 0) {
                str = jsonReader.y();
            } else if (G == 1) {
                aVar = d.c(jsonReader, fVar);
            } else if (G == 2) {
                dVar = d.h(jsonReader, fVar);
            } else if (G == 3) {
                z9 = jsonReader.p();
            } else if (G == 4) {
                i4 = jsonReader.r();
            } else if (G != 5) {
                jsonReader.H();
                jsonReader.I();
            } else {
                z10 = jsonReader.p();
            }
        }
        return new com.airbnb.lottie.model.content.i(str, z9, i4 == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, aVar, dVar, z10);
    }
}
