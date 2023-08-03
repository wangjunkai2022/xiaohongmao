package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.content.MergePaths;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* compiled from: MergePathsParser.java */
/* loaded from: classes.dex */
class w {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f4736a = JsonReader.a.a("nm", "mm", "hd");

    private w() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MergePaths a(JsonReader jsonReader) throws IOException {
        String str = null;
        MergePaths.MergePathsMode mergePathsMode = null;
        boolean z9 = false;
        while (jsonReader.k()) {
            int G = jsonReader.G(f4736a);
            if (G == 0) {
                str = jsonReader.y();
            } else if (G == 1) {
                mergePathsMode = MergePaths.MergePathsMode.forId(jsonReader.r());
            } else if (G != 2) {
                jsonReader.H();
                jsonReader.I();
            } else {
                z9 = jsonReader.p();
            }
        }
        return new MergePaths(str, mergePathsMode, z9);
    }
}
