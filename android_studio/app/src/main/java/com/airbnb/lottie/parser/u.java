package com.airbnb.lottie.parser;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: LottieCompositionParser.java */
/* loaded from: classes.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    static JsonReader.a f4735a = JsonReader.a.a("w", "h", "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");

    public static com.airbnb.lottie.f a(JsonReader jsonReader) throws IOException {
        HashMap hashMap;
        ArrayList arrayList;
        JsonReader jsonReader2 = jsonReader;
        float e4 = com.airbnb.lottie.utils.h.e();
        LongSparseArray<Layer> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList2 = new ArrayList();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        HashMap hashMap4 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        SparseArrayCompat<com.airbnb.lottie.model.c> sparseArrayCompat = new SparseArrayCompat<>();
        com.airbnb.lottie.f fVar = new com.airbnb.lottie.f();
        jsonReader.d();
        int i4 = 0;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        int i10 = 0;
        while (jsonReader.k()) {
            switch (jsonReader2.G(f4735a)) {
                case 0:
                    i4 = jsonReader.r();
                    continue;
                    jsonReader2 = jsonReader;
                case 1:
                    i10 = jsonReader.r();
                    continue;
                    jsonReader2 = jsonReader;
                case 2:
                    f10 = (float) jsonReader.q();
                    continue;
                    jsonReader2 = jsonReader;
                case 3:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f11 = ((float) jsonReader.q()) - 0.01f;
                    break;
                case 4:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f12 = (float) jsonReader.q();
                    break;
                case 5:
                    String[] split = jsonReader.y().split("\\.");
                    if (!com.airbnb.lottie.utils.h.j(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]), 4, 4, 0)) {
                        fVar.a("Lottie only supports bodymovin >= 4.4.0");
                    }
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    break;
                case 6:
                    b(jsonReader2, fVar, arrayList2, longSparseArray);
                default:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    jsonReader.I();
                    break;
            }
            hashMap4 = hashMap;
            arrayList3 = arrayList;
            jsonReader2 = jsonReader;
        }
        fVar.u(new Rect(0, 0, (int) (i4 * e4), (int) (i10 * e4)), f10, f11, f12, arrayList2, longSparseArray, hashMap2, hashMap3, sparseArrayCompat, hashMap4, arrayList3);
        return fVar;
    }

    private static void b(JsonReader jsonReader, com.airbnb.lottie.f fVar, List<Layer> list, LongSparseArray<Layer> longSparseArray) throws IOException {
        jsonReader.b();
        int i4 = 0;
        while (jsonReader.k()) {
            Layer b10 = s.b(jsonReader, fVar);
            if (b10.d() == Layer.LayerType.IMAGE) {
                i4++;
            }
            list.add(b10);
            longSparseArray.put(b10.b(), b10);
            if (i4 > 4) {
                com.airbnb.lottie.utils.d.d("You have " + i4 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }
        jsonReader.h();
    }
}
