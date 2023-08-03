package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: KeyframesParser.java */
/* loaded from: classes.dex */
class r {

    /* renamed from: a  reason: collision with root package name */
    static JsonReader.a f4727a = JsonReader.a.a("k");

    private r() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> List<com.airbnb.lottie.value.a<T>> a(JsonReader jsonReader, com.airbnb.lottie.f fVar, float f10, k0<T> k0Var) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.D() == JsonReader.Token.STRING) {
            fVar.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.d();
        while (jsonReader.k()) {
            if (jsonReader.G(f4727a) != 0) {
                jsonReader.I();
            } else if (jsonReader.D() == JsonReader.Token.BEGIN_ARRAY) {
                jsonReader.b();
                if (jsonReader.D() == JsonReader.Token.NUMBER) {
                    arrayList.add(q.b(jsonReader, fVar, f10, k0Var, false));
                } else {
                    while (jsonReader.k()) {
                        arrayList.add(q.b(jsonReader, fVar, f10, k0Var, true));
                    }
                }
                jsonReader.h();
            } else {
                arrayList.add(q.b(jsonReader, fVar, f10, k0Var, false));
            }
        }
        jsonReader.i();
        b(arrayList);
        return arrayList;
    }

    public static <T> void b(List<? extends com.airbnb.lottie.value.a<T>> list) {
        int i4;
        T t9;
        int size = list.size();
        int i10 = 0;
        while (true) {
            i4 = size - 1;
            if (i10 >= i4) {
                break;
            }
            com.airbnb.lottie.value.a<T> aVar = list.get(i10);
            i10++;
            com.airbnb.lottie.value.a<T> aVar2 = list.get(i10);
            aVar.f5654f = Float.valueOf(aVar2.f5653e);
            if (aVar.f5651c == null && (t9 = aVar2.f5650b) != null) {
                aVar.f5651c = t9;
                if (aVar instanceof com.airbnb.lottie.animation.keyframe.h) {
                    ((com.airbnb.lottie.animation.keyframe.h) aVar).i();
                }
            }
        }
        com.airbnb.lottie.value.a<T> aVar3 = list.get(i4);
        if ((aVar3.f5650b == null || aVar3.f5651c == null) && list.size() > 1) {
            list.remove(aVar3);
        }
    }
}
