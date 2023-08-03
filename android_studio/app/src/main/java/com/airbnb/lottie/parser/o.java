package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* compiled from: IntegerParser.java */
/* loaded from: classes.dex */
public class o implements k0<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public static final o f4720a = new o();

    private o() {
    }

    @Override // com.airbnb.lottie.parser.k0
    /* renamed from: b */
    public Integer a(JsonReader jsonReader, float f10) throws IOException {
        return Integer.valueOf(Math.round(p.g(jsonReader) * f10));
    }
}
