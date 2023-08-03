package retrofit2.converter.moshi;

import com.squareup.moshi.h;
import com.squareup.moshi.q;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import retrofit2.Converter;

/* loaded from: classes5.dex */
final class MoshiRequestBodyConverter<T> implements Converter<T, RequestBody> {
    private static final MediaType MEDIA_TYPE = MediaType.get("application/json; charset=UTF-8");
    private final h<T> adapter;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MoshiRequestBodyConverter(h<T> hVar) {
        this.adapter = hVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // retrofit2.Converter
    public /* bridge */ /* synthetic */ RequestBody convert(Object obj) throws IOException {
        return convert2((MoshiRequestBodyConverter<T>) obj);
    }

    @Override // retrofit2.Converter
    /* renamed from: convert  reason: avoid collision after fix types in other method */
    public RequestBody convert2(T t9) throws IOException {
        Buffer buffer = new Buffer();
        this.adapter.toJson(q.E(buffer), (q) t9);
        return RequestBody.create(MEDIA_TYPE, buffer.readByteString());
    }
}
