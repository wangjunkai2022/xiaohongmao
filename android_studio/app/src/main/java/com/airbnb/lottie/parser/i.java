package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* compiled from: FloatParser.java */
/* loaded from: classes.dex */
public class i implements k0<Float> {

    /* renamed from: a  reason: collision with root package name */
    public static final i f4638a = new i();

    private i() {
    }

    @Override // com.airbnb.lottie.parser.k0
    /* renamed from: b */
    public Float a(JsonReader jsonReader, float f10) throws IOException {
        return Float.valueOf(p.g(jsonReader) * f10);
    }
}
