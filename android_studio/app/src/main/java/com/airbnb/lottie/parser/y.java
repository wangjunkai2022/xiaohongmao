package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* compiled from: PathParser.java */
/* loaded from: classes.dex */
public class y implements k0<PointF> {

    /* renamed from: a  reason: collision with root package name */
    public static final y f4737a = new y();

    private y() {
    }

    @Override // com.airbnb.lottie.parser.k0
    /* renamed from: b */
    public PointF a(JsonReader jsonReader, float f10) throws IOException {
        return p.e(jsonReader, f10);
    }
}
