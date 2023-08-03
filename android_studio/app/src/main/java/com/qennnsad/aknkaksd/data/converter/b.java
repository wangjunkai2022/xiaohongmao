package com.qennnsad.aknkaksd.data.converter;

import com.google.gson.TypeAdapter;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Converter;

/* compiled from: DecodeResponseBodyConverter.java */
/* loaded from: classes3.dex */
public class b<T> implements Converter<ResponseBody, T> {

    /* renamed from: a  reason: collision with root package name */
    private final TypeAdapter<T> f47687a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(TypeAdapter<T> typeAdapter) {
        this.f47687a = typeAdapter;
    }

    @Override // retrofit2.Converter
    /* renamed from: a */
    public T convert(ResponseBody responseBody) throws IOException {
        return this.f47687a.fromJson(responseBody.string());
    }
}
