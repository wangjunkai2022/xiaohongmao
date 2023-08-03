package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;

/* loaded from: classes.dex */
public class StackTraceElementDeserializer extends StdScalarDeserializer<StackTraceElement> {

    /* renamed from: g  reason: collision with root package name */
    private static final long f14980g = 1;

    public StackTraceElementDeserializer() {
        super(StackTraceElement.class);
    }

    @Deprecated
    protected StackTraceElement C0(DeserializationContext deserializationContext, String str, String str2, String str3, int i4, String str4, String str5) {
        return D0(deserializationContext, str, str2, str3, i4, str4, str5, null);
    }

    protected StackTraceElement D0(DeserializationContext deserializationContext, String str, String str2, String str3, int i4, String str4, String str5, String str6) {
        return new StackTraceElement(str, str2, str3, i4);
    }

    @Override // com.fasterxml.jackson.databind.d
    public StackTraceElement deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int Z;
        JsonToken W = jsonParser.W();
        if (W != JsonToken.START_OBJECT) {
            if (W == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                jsonParser.y1();
                StackTraceElement deserialize = deserialize(jsonParser, deserializationContext);
                if (jsonParser.y1() != JsonToken.END_ARRAY) {
                    y0(jsonParser, deserializationContext);
                }
                return deserialize;
            }
            return (StackTraceElement) deserializationContext.handleUnexpectedToken(this.f14988a, jsonParser);
        }
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = "";
        String str5 = str4;
        String str6 = str5;
        int i4 = -1;
        while (true) {
            JsonToken z12 = jsonParser.z1();
            if (z12 != JsonToken.END_OBJECT) {
                String M = jsonParser.M();
                if ("className".equals(M)) {
                    str4 = jsonParser.S0();
                } else if ("classLoaderName".equals(M)) {
                    str3 = jsonParser.S0();
                } else if ("fileName".equals(M)) {
                    str6 = jsonParser.S0();
                } else if ("lineNumber".equals(M)) {
                    if (z12.isNumeric()) {
                        Z = jsonParser.F0();
                    } else {
                        Z = Z(jsonParser, deserializationContext);
                    }
                    i4 = Z;
                } else if ("methodName".equals(M)) {
                    str5 = jsonParser.S0();
                } else if (!"nativeMethod".equals(M)) {
                    if ("moduleName".equals(M)) {
                        str = jsonParser.S0();
                    } else if ("moduleVersion".equals(M)) {
                        str2 = jsonParser.S0();
                    } else if (!"declaringClass".equals(M) && !KSYMediaMeta.IJKM_KEY_FORMAT.equals(M)) {
                        z0(jsonParser, deserializationContext, this.f14988a, M);
                    }
                }
                jsonParser.U1();
            } else {
                return D0(deserializationContext, str4, str5, str6, i4, str, str2, str3);
            }
        }
    }
}
