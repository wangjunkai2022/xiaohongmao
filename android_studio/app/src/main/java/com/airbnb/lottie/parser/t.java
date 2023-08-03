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
import java.util.Map;

/* compiled from: LottieCompositionMoshiParser.java */
/* loaded from: classes.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f4731a = JsonReader.a.a("w", "h", "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");

    /* renamed from: b  reason: collision with root package name */
    static JsonReader.a f4732b = JsonReader.a.a("id", "layers", "w", "h", "p", "u");

    /* renamed from: c  reason: collision with root package name */
    private static final JsonReader.a f4733c = JsonReader.a.a("list");

    /* renamed from: d  reason: collision with root package name */
    private static final JsonReader.a f4734d = JsonReader.a.a("cm", "tm", "dr");

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
            switch (jsonReader2.G(f4731a)) {
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
                    e(jsonReader2, fVar, arrayList2, longSparseArray);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    break;
                case 7:
                    b(jsonReader2, fVar, hashMap2, hashMap3);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    break;
                case 8:
                    d(jsonReader2, hashMap4);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    break;
                case 9:
                    c(jsonReader2, fVar, sparseArrayCompat);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    break;
                case 10:
                    f(jsonReader2, fVar, arrayList3);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    break;
                default:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    jsonReader.H();
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

    private static void b(JsonReader jsonReader, com.airbnb.lottie.f fVar, Map<String, List<Layer>> map, Map<String, com.airbnb.lottie.i> map2) throws IOException {
        jsonReader.b();
        while (jsonReader.k()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            jsonReader.d();
            String str = null;
            String str2 = null;
            String str3 = null;
            int i4 = 0;
            int i10 = 0;
            while (jsonReader.k()) {
                int G = jsonReader.G(f4732b);
                if (G == 0) {
                    str = jsonReader.y();
                } else if (G == 1) {
                    jsonReader.b();
                    while (jsonReader.k()) {
                        Layer b10 = s.b(jsonReader, fVar);
                        longSparseArray.put(b10.b(), b10);
                        arrayList.add(b10);
                    }
                    jsonReader.h();
                } else if (G == 2) {
                    i4 = jsonReader.r();
                } else if (G == 3) {
                    i10 = jsonReader.r();
                } else if (G == 4) {
                    str2 = jsonReader.y();
                } else if (G != 5) {
                    jsonReader.H();
                    jsonReader.I();
                } else {
                    str3 = jsonReader.y();
                }
            }
            jsonReader.i();
            if (str2 != null) {
                com.airbnb.lottie.i iVar = new com.airbnb.lottie.i(i4, i10, str, str2, str3);
                map2.put(iVar.e(), iVar);
            } else {
                map.put(str, arrayList);
            }
        }
        jsonReader.h();
    }

    private static void c(JsonReader jsonReader, com.airbnb.lottie.f fVar, SparseArrayCompat<com.airbnb.lottie.model.c> sparseArrayCompat) throws IOException {
        jsonReader.b();
        while (jsonReader.k()) {
            com.airbnb.lottie.model.c a10 = j.a(jsonReader, fVar);
            sparseArrayCompat.put(a10.hashCode(), a10);
        }
        jsonReader.h();
    }

    private static void d(JsonReader jsonReader, Map<String, com.airbnb.lottie.model.b> map) throws IOException {
        jsonReader.d();
        while (jsonReader.k()) {
            if (jsonReader.G(f4733c) != 0) {
                jsonReader.H();
                jsonReader.I();
            } else {
                jsonReader.b();
                while (jsonReader.k()) {
                    com.airbnb.lottie.model.b a10 = k.a(jsonReader);
                    map.put(a10.c(), a10);
                }
                jsonReader.h();
            }
        }
        jsonReader.i();
    }

    private static void e(JsonReader jsonReader, com.airbnb.lottie.f fVar, List<Layer> list, LongSparseArray<Layer> longSparseArray) throws IOException {
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

    private static void f(JsonReader jsonReader, com.airbnb.lottie.f fVar, List<com.airbnb.lottie.model.g> list) throws IOException {
        jsonReader.b();
        while (jsonReader.k()) {
            String str = null;
            jsonReader.d();
            float f10 = 0.0f;
            float f11 = 0.0f;
            while (jsonReader.k()) {
                int G = jsonReader.G(f4734d);
                if (G == 0) {
                    str = jsonReader.y();
                } else if (G == 1) {
                    f10 = (float) jsonReader.q();
                } else if (G != 2) {
                    jsonReader.H();
                    jsonReader.I();
                } else {
                    f11 = (float) jsonReader.q();
                }
            }
            jsonReader.i();
            list.add(new com.airbnb.lottie.model.g(str, f10, f11));
        }
        jsonReader.h();
    }
}
