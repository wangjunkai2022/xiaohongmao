package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.PointF;
import androidx.annotation.ColorInt;
import com.airbnb.lottie.parser.moshi.JsonReader;
import io.sentry.protocol.y;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: JsonUtils.java */
/* loaded from: classes.dex */
class p {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f4721a = JsonReader.a.a(y.b.f83919g, y.b.f83920h);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JsonUtils.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4722a;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            f4722a = iArr;
            try {
                iArr[JsonReader.Token.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4722a[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4722a[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private p() {
    }

    private static PointF a(JsonReader jsonReader, float f10) throws IOException {
        jsonReader.b();
        float q9 = (float) jsonReader.q();
        float q10 = (float) jsonReader.q();
        while (jsonReader.D() != JsonReader.Token.END_ARRAY) {
            jsonReader.I();
        }
        jsonReader.h();
        return new PointF(q9 * f10, q10 * f10);
    }

    private static PointF b(JsonReader jsonReader, float f10) throws IOException {
        float q9 = (float) jsonReader.q();
        float q10 = (float) jsonReader.q();
        while (jsonReader.k()) {
            jsonReader.I();
        }
        return new PointF(q9 * f10, q10 * f10);
    }

    private static PointF c(JsonReader jsonReader, float f10) throws IOException {
        jsonReader.d();
        float f11 = 0.0f;
        float f12 = 0.0f;
        while (jsonReader.k()) {
            int G = jsonReader.G(f4721a);
            if (G == 0) {
                f11 = g(jsonReader);
            } else if (G != 1) {
                jsonReader.H();
                jsonReader.I();
            } else {
                f12 = g(jsonReader);
            }
        }
        jsonReader.i();
        return new PointF(f11 * f10, f12 * f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    public static int d(JsonReader jsonReader) throws IOException {
        jsonReader.b();
        int q9 = (int) (jsonReader.q() * 255.0d);
        int q10 = (int) (jsonReader.q() * 255.0d);
        int q11 = (int) (jsonReader.q() * 255.0d);
        while (jsonReader.k()) {
            jsonReader.I();
        }
        jsonReader.h();
        return Color.argb(255, q9, q10, q11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PointF e(JsonReader jsonReader, float f10) throws IOException {
        int i4 = a.f4722a[jsonReader.D().ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return c(jsonReader, f10);
                }
                throw new IllegalArgumentException("Unknown point starts with " + jsonReader.D());
            }
            return a(jsonReader, f10);
        }
        return b(jsonReader, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<PointF> f(JsonReader jsonReader, float f10) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.b();
        while (jsonReader.D() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.b();
            arrayList.add(e(jsonReader, f10));
            jsonReader.h();
        }
        jsonReader.h();
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float g(JsonReader jsonReader) throws IOException {
        JsonReader.Token D = jsonReader.D();
        int i4 = a.f4722a[D.ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                jsonReader.b();
                float q9 = (float) jsonReader.q();
                while (jsonReader.k()) {
                    jsonReader.I();
                }
                jsonReader.h();
                return q9;
            }
            throw new IllegalArgumentException("Unknown value for token of type " + D);
        }
        return (float) jsonReader.q();
    }
}
