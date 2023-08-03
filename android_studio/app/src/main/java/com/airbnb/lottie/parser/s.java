package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.Rect;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* compiled from: LayerParser.java */
/* loaded from: classes.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f4728a = JsonReader.a.a("nm", "ind", "refId", p.a.f93055i, "parent", com.ksyun.media.player.d.d.ap, "sh", "sc", "ks", com.google.android.exoplayer2.text.ttml.d.f25722n, "masksProperties", "shapes", "t", "ef", "sr", "st", "w", "h", "ip", "op", "tm", "cl", "hd");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f4729b = JsonReader.a.a("d", "a");

    /* renamed from: c  reason: collision with root package name */
    private static final JsonReader.a f4730c = JsonReader.a.a("nm");

    private s() {
    }

    public static Layer a(com.airbnb.lottie.f fVar) {
        Rect b10 = fVar.b();
        return new Layer(Collections.emptyList(), fVar, "__container", -1L, Layer.LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new com.airbnb.lottie.model.animatable.l(), 0, 0, 0, 0.0f, 0.0f, b10.width(), b10.height(), null, null, Collections.emptyList(), Layer.MatteType.NONE, null, false);
    }

    public static Layer b(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        ArrayList arrayList;
        ArrayList arrayList2;
        Layer.MatteType matteType = Layer.MatteType.NONE;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        jsonReader.d();
        Float valueOf = Float.valueOf(1.0f);
        Float valueOf2 = Float.valueOf(0.0f);
        Layer.MatteType matteType2 = matteType;
        Layer.LayerType layerType = null;
        String str = null;
        com.airbnb.lottie.model.animatable.l lVar = null;
        com.airbnb.lottie.model.animatable.j jVar = null;
        com.airbnb.lottie.model.animatable.k kVar = null;
        com.airbnb.lottie.model.animatable.b bVar = null;
        long j4 = -1;
        float f10 = 0.0f;
        float f11 = 0.0f;
        int i4 = 0;
        int i10 = 0;
        int i11 = 0;
        float f12 = 1.0f;
        float f13 = 0.0f;
        int i12 = 0;
        int i13 = 0;
        boolean z9 = false;
        long j10 = 0;
        String str2 = null;
        String str3 = "UNSET";
        while (jsonReader.k()) {
            switch (jsonReader.G(f4728a)) {
                case 0:
                    str3 = jsonReader.y();
                    break;
                case 1:
                    j10 = jsonReader.r();
                    break;
                case 2:
                    str = jsonReader.y();
                    break;
                case 3:
                    int r9 = jsonReader.r();
                    layerType = Layer.LayerType.UNKNOWN;
                    if (r9 >= layerType.ordinal()) {
                        break;
                    } else {
                        layerType = Layer.LayerType.values()[r9];
                        break;
                    }
                case 4:
                    j4 = jsonReader.r();
                    break;
                case 5:
                    i4 = (int) (jsonReader.r() * com.airbnb.lottie.utils.h.e());
                    break;
                case 6:
                    i10 = (int) (jsonReader.r() * com.airbnb.lottie.utils.h.e());
                    break;
                case 7:
                    i11 = Color.parseColor(jsonReader.y());
                    break;
                case 8:
                    lVar = c.g(jsonReader, fVar);
                    break;
                case 9:
                    matteType2 = Layer.MatteType.values()[jsonReader.r()];
                    fVar.t(1);
                    break;
                case 10:
                    jsonReader.b();
                    while (jsonReader.k()) {
                        arrayList3.add(v.a(jsonReader, fVar));
                    }
                    fVar.t(arrayList3.size());
                    jsonReader.h();
                    break;
                case 11:
                    jsonReader.b();
                    while (jsonReader.k()) {
                        com.airbnb.lottie.model.content.b a10 = g.a(jsonReader, fVar);
                        if (a10 != null) {
                            arrayList4.add(a10);
                        }
                    }
                    jsonReader.h();
                    break;
                case 12:
                    jsonReader.d();
                    while (jsonReader.k()) {
                        int G = jsonReader.G(f4729b);
                        if (G == 0) {
                            jVar = d.d(jsonReader, fVar);
                        } else if (G != 1) {
                            jsonReader.H();
                            jsonReader.I();
                        } else {
                            jsonReader.b();
                            if (jsonReader.k()) {
                                kVar = b.a(jsonReader, fVar);
                            }
                            while (jsonReader.k()) {
                                jsonReader.I();
                            }
                            jsonReader.h();
                        }
                    }
                    jsonReader.i();
                    break;
                case 13:
                    jsonReader.b();
                    ArrayList arrayList5 = new ArrayList();
                    while (jsonReader.k()) {
                        jsonReader.d();
                        while (jsonReader.k()) {
                            if (jsonReader.G(f4730c) != 0) {
                                jsonReader.H();
                                jsonReader.I();
                            } else {
                                arrayList5.add(jsonReader.y());
                            }
                        }
                        jsonReader.i();
                    }
                    jsonReader.h();
                    fVar.a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList5);
                    break;
                case 14:
                    f12 = (float) jsonReader.q();
                    break;
                case 15:
                    f13 = (float) jsonReader.q();
                    break;
                case 16:
                    i12 = (int) (jsonReader.r() * com.airbnb.lottie.utils.h.e());
                    break;
                case 17:
                    i13 = (int) (jsonReader.r() * com.airbnb.lottie.utils.h.e());
                    break;
                case 18:
                    f10 = (float) jsonReader.q();
                    break;
                case 19:
                    f11 = (float) jsonReader.q();
                    break;
                case 20:
                    bVar = d.f(jsonReader, fVar, false);
                    break;
                case 21:
                    str2 = jsonReader.y();
                    break;
                case 22:
                    z9 = jsonReader.p();
                    break;
                default:
                    jsonReader.H();
                    jsonReader.I();
                    break;
            }
        }
        jsonReader.i();
        float f14 = f10 / f12;
        float f15 = f11 / f12;
        ArrayList arrayList6 = new ArrayList();
        if (f14 > 0.0f) {
            arrayList = arrayList3;
            arrayList2 = arrayList6;
            arrayList2.add(new com.airbnb.lottie.value.a(fVar, valueOf2, valueOf2, null, 0.0f, Float.valueOf(f14)));
        } else {
            arrayList = arrayList3;
            arrayList2 = arrayList6;
        }
        if (f15 <= 0.0f) {
            f15 = fVar.f();
        }
        arrayList2.add(new com.airbnb.lottie.value.a(fVar, valueOf, valueOf, null, f14, Float.valueOf(f15)));
        arrayList2.add(new com.airbnb.lottie.value.a(fVar, valueOf2, valueOf2, null, f15, Float.valueOf(Float.MAX_VALUE)));
        if (str3.endsWith(".ai") || "ai".equals(str2)) {
            fVar.a("Convert your Illustrator layers to shape layers.");
        }
        return new Layer(arrayList4, fVar, str3, j10, layerType, j4, str, arrayList, lVar, i4, i10, i11, f12, f13, i12, i13, jVar, kVar, arrayList2, matteType2, bVar, z9);
    }
}
