package com.giphy.sdk.core.models.json;

import androidx.exifinterface.media.ExifInterface;
import com.giphy.sdk.core.models.Media;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: MainAdapterFactory.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\tH\u0016¨\u0006\n"}, d2 = {"Lcom/giphy/sdk/core/models/json/MainAdapterFactory;", "Lcom/google/gson/TypeAdapterFactory;", "()V", "create", "Lcom/google/gson/TypeAdapter;", ExifInterface.GPS_DIRECTION_TRUE, "gson", "Lcom/google/gson/Gson;", "type", "Lcom/google/gson/reflect/TypeToken;", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class MainAdapterFactory implements TypeAdapterFactory {
    @Override // com.google.gson.TypeAdapterFactory
    @g
    public <T> TypeAdapter<T> create(@g Gson gson, @g TypeToken<T> type) {
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(type, "type");
        final TypeAdapter<T> delegateAdapter = gson.getDelegateAdapter(this, type);
        return new TypeAdapter<T>() { // from class: com.giphy.sdk.core.models.json.MainAdapterFactory$create$1
            /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object] */
            @Override // com.google.gson.TypeAdapter
            public T read(@g JsonReader in) throws IOException {
                Intrinsics.checkNotNullParameter(in, "in");
                ?? read = TypeAdapter.this.read(in);
                if (read instanceof Media) {
                    ((Media) read).postProcess();
                }
                return read;
            }

            @Override // com.google.gson.TypeAdapter
            public void write(@g JsonWriter out, T t9) throws IOException {
                Intrinsics.checkNotNullParameter(out, "out");
                TypeAdapter.this.write(out, t9);
            }
        };
    }
}
