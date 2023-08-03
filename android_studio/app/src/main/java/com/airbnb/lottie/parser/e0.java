package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.facebook.common.callercontext.ContextChain;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: ShapeDataParser.java */
/* loaded from: classes.dex */
public class e0 implements k0<com.airbnb.lottie.model.content.h> {

    /* renamed from: a  reason: collision with root package name */
    public static final e0 f4629a = new e0();

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f4630b = JsonReader.a.a("c", "v", ContextChain.TAG_INFRA, "o");

    private e0() {
    }

    @Override // com.airbnb.lottie.parser.k0
    /* renamed from: b */
    public com.airbnb.lottie.model.content.h a(JsonReader jsonReader, float f10) throws IOException {
        if (jsonReader.D() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.b();
        }
        jsonReader.d();
        List<PointF> list = null;
        List<PointF> list2 = null;
        List<PointF> list3 = null;
        boolean z9 = false;
        while (jsonReader.k()) {
            int G = jsonReader.G(f4630b);
            if (G == 0) {
                z9 = jsonReader.p();
            } else if (G == 1) {
                list = p.f(jsonReader, f10);
            } else if (G == 2) {
                list2 = p.f(jsonReader, f10);
            } else if (G != 3) {
                jsonReader.H();
                jsonReader.I();
            } else {
                list3 = p.f(jsonReader, f10);
            }
        }
        jsonReader.i();
        if (jsonReader.D() == JsonReader.Token.END_ARRAY) {
            jsonReader.h();
        }
        if (list != null && list2 != null && list3 != null) {
            if (list.isEmpty()) {
                return new com.airbnb.lottie.model.content.h(new PointF(), false, Collections.emptyList());
            }
            int size = list.size();
            PointF pointF = list.get(0);
            ArrayList arrayList = new ArrayList(size);
            for (int i4 = 1; i4 < size; i4++) {
                PointF pointF2 = list.get(i4);
                int i10 = i4 - 1;
                arrayList.add(new com.airbnb.lottie.model.a(com.airbnb.lottie.utils.g.a(list.get(i10), list3.get(i10)), com.airbnb.lottie.utils.g.a(pointF2, list2.get(i4)), pointF2));
            }
            if (z9) {
                PointF pointF3 = list.get(0);
                int i11 = size - 1;
                arrayList.add(new com.airbnb.lottie.model.a(com.airbnb.lottie.utils.g.a(list.get(i11), list3.get(i11)), com.airbnb.lottie.utils.g.a(pointF3, list2.get(0)), pointF3));
            }
            return new com.airbnb.lottie.model.content.h(pointF, z9, arrayList);
        }
        throw new IllegalArgumentException("Shape data was missing information.");
    }
}
