package com.qennnsad.aknkaksd.data.converter;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.qennnsad.aknkaksd.util.o0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Objects;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* compiled from: DecodeConverterFactory.java */
/* loaded from: classes3.dex */
public class a extends Converter.Factory {

    /* renamed from: a  reason: collision with root package name */
    private final Gson f47686a;

    private a(Gson gson) {
        Objects.requireNonNull(gson, "gson == null");
        this.f47686a = gson;
    }

    public static a a() {
        return b(new Gson());
    }

    public static a b(Gson gson) {
        return new a(gson);
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        for (Annotation annotation : annotationArr) {
            o0.g("DecodeConverterFactory", "Annotation:" + annotation.toString());
        }
        return new b(this.f47686a.getAdapter(TypeToken.get(type)));
    }
}
