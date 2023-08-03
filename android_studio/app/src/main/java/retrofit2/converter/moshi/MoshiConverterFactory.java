package retrofit2.converter.moshi;

import com.squareup.moshi.h;
import com.squareup.moshi.j;
import com.squareup.moshi.u;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* loaded from: classes5.dex */
public final class MoshiConverterFactory extends Converter.Factory {
    private final boolean failOnUnknown;
    private final boolean lenient;
    private final u moshi;
    private final boolean serializeNulls;

    private MoshiConverterFactory(u uVar, boolean z9, boolean z10, boolean z11) {
        this.moshi = uVar;
        this.lenient = z9;
        this.failOnUnknown = z10;
        this.serializeNulls = z11;
    }

    public static MoshiConverterFactory create() {
        return create(new u.c().i());
    }

    private static Set<? extends Annotation> jsonAnnotations(Annotation[] annotationArr) {
        LinkedHashSet linkedHashSet = null;
        for (Annotation annotation : annotationArr) {
            if (annotation.annotationType().isAnnotationPresent(j.class)) {
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                }
                linkedHashSet.add(annotation);
            }
        }
        return linkedHashSet != null ? Collections.unmodifiableSet(linkedHashSet) : Collections.emptySet();
    }

    public MoshiConverterFactory asLenient() {
        return new MoshiConverterFactory(this.moshi, true, this.failOnUnknown, this.serializeNulls);
    }

    public MoshiConverterFactory failOnUnknown() {
        return new MoshiConverterFactory(this.moshi, this.lenient, true, this.serializeNulls);
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        h f10 = this.moshi.f(type, jsonAnnotations(annotationArr));
        if (this.lenient) {
            f10 = f10.lenient();
        }
        if (this.failOnUnknown) {
            f10 = f10.failOnUnknown();
        }
        if (this.serializeNulls) {
            f10 = f10.serializeNulls();
        }
        return new MoshiRequestBodyConverter(f10);
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        h f10 = this.moshi.f(type, jsonAnnotations(annotationArr));
        if (this.lenient) {
            f10 = f10.lenient();
        }
        if (this.failOnUnknown) {
            f10 = f10.failOnUnknown();
        }
        if (this.serializeNulls) {
            f10 = f10.serializeNulls();
        }
        return new MoshiResponseBodyConverter(f10);
    }

    public MoshiConverterFactory withNullSerialization() {
        return new MoshiConverterFactory(this.moshi, this.lenient, this.failOnUnknown, true);
    }

    public static MoshiConverterFactory create(u uVar) {
        Objects.requireNonNull(uVar, "moshi == null");
        return new MoshiConverterFactory(uVar, false, false, false);
    }
}
