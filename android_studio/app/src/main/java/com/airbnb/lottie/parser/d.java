package com.airbnb.lottie.parser;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.List;

/* compiled from: AnimatableValueParser.java */
/* loaded from: classes.dex */
public class d {
    private d() {
    }

    @Nullable
    private static <T> List<com.airbnb.lottie.value.a<T>> a(JsonReader jsonReader, float f10, com.airbnb.lottie.f fVar, k0<T> k0Var) throws IOException {
        return r.a(jsonReader, fVar, f10, k0Var);
    }

    @Nullable
    private static <T> List<com.airbnb.lottie.value.a<T>> b(JsonReader jsonReader, com.airbnb.lottie.f fVar, k0<T> k0Var) throws IOException {
        return r.a(jsonReader, fVar, 1.0f, k0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.animatable.a c(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        return new com.airbnb.lottie.model.animatable.a(b(jsonReader, fVar, f.f4631a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.animatable.j d(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        return new com.airbnb.lottie.model.animatable.j(b(jsonReader, fVar, h.f4635a));
    }

    public static com.airbnb.lottie.model.animatable.b e(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        return f(jsonReader, fVar, true);
    }

    public static com.airbnb.lottie.model.animatable.b f(JsonReader jsonReader, com.airbnb.lottie.f fVar, boolean z9) throws IOException {
        return new com.airbnb.lottie.model.animatable.b(a(jsonReader, z9 ? com.airbnb.lottie.utils.h.e() : 1.0f, fVar, i.f4638a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.animatable.c g(JsonReader jsonReader, com.airbnb.lottie.f fVar, int i4) throws IOException {
        return new com.airbnb.lottie.model.animatable.c(b(jsonReader, fVar, new l(i4)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.animatable.d h(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        return new com.airbnb.lottie.model.animatable.d(b(jsonReader, fVar, o.f4720a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.animatable.f i(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        return new com.airbnb.lottie.model.animatable.f(a(jsonReader, com.airbnb.lottie.utils.h.e(), fVar, z.f4738a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.animatable.g j(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        return new com.airbnb.lottie.model.animatable.g(b(jsonReader, fVar, d0.f4627a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.animatable.h k(JsonReader jsonReader, com.airbnb.lottie.f fVar) throws IOException {
        return new com.airbnb.lottie.model.animatable.h(a(jsonReader, com.airbnb.lottie.utils.h.e(), fVar, e0.f4629a));
    }
}
