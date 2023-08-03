package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* compiled from: PathKeyframeParser.java */
/* loaded from: classes.dex */
class x {
    private x() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.animation.keyframe.h a(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        return new com.airbnb.lottie.animation.keyframe.h(fVar, q.b(jsonReader, fVar, com.airbnb.lottie.utils.h.e(), y.f4737a, jsonReader.D() == JsonReader.Token.BEGIN_OBJECT));
    }
}
