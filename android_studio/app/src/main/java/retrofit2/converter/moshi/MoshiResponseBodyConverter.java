package retrofit2.converter.moshi;

import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.h;
import java.io.IOException;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.ByteString;
import retrofit2.Converter;

/* loaded from: classes5.dex */
final class MoshiResponseBodyConverter<T> implements Converter<ResponseBody, T> {
    private static final ByteString UTF8_BOM = ByteString.decodeHex("EFBBBF");
    private final h<T> adapter;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MoshiResponseBodyConverter(h<T> hVar) {
        this.adapter = hVar;
    }

    @Override // retrofit2.Converter
    public T convert(ResponseBody responseBody) throws IOException {
        BufferedSource source = responseBody.source();
        try {
            ByteString byteString = UTF8_BOM;
            if (source.rangeEquals(0L, byteString)) {
                source.skip(byteString.size());
            }
            JsonReader H = JsonReader.H(source);
            T fromJson = this.adapter.fromJson(H);
            if (H.I() == JsonReader.Token.END_DOCUMENT) {
                return fromJson;
            }
            throw new JsonDataException("JSON document was not fully consumed.");
        } finally {
            responseBody.close();
        }
    }
}
