package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import java.io.IOException;
import java.util.Arrays;
import java.util.UUID;

/* loaded from: classes.dex */
public class UUIDDeserializer extends FromStringDeserializer<UUID> {

    /* renamed from: g  reason: collision with root package name */
    private static final long f15045g = 1;

    /* renamed from: h  reason: collision with root package name */
    static final int[] f15046h;

    static {
        int[] iArr = new int[127];
        f15046h = iArr;
        Arrays.fill(iArr, -1);
        for (int i4 = 0; i4 < 10; i4++) {
            f15046h[i4 + 48] = i4;
        }
        for (int i10 = 0; i10 < 6; i10++) {
            int[] iArr2 = f15046h;
            int i11 = i10 + 10;
            iArr2[i10 + 97] = i11;
            iArr2[i10 + 65] = i11;
        }
    }

    public UUIDDeserializer() {
        super(UUID.class);
    }

    private UUID J0(String str, DeserializationContext deserializationContext) throws IOException {
        return (UUID) deserializationContext.handleWeirdStringValue(handledType(), str, "UUID has to be represented by standard 36-char representation", new Object[0]);
    }

    private UUID M0(byte[] bArr, DeserializationContext deserializationContext) throws JsonMappingException {
        if (bArr.length == 16) {
            return new UUID(O0(bArr, 0), O0(bArr, 8));
        }
        JsonParser parser = deserializationContext.getParser();
        throw InvalidFormatException.from(parser, "Can only construct UUIDs from byte[16]; got " + bArr.length + " bytes", bArr, handledType());
    }

    private static int N0(byte[] bArr, int i4) {
        return (bArr[i4 + 3] & 255) | (bArr[i4] << com.google.common.base.c.B) | ((bArr[i4 + 1] & 255) << 16) | ((bArr[i4 + 2] & 255) << 8);
    }

    private static long O0(byte[] bArr, int i4) {
        return ((N0(bArr, i4 + 4) << 32) >>> 32) | (N0(bArr, i4) << 32);
    }

    int I0(String str, int i4, DeserializationContext deserializationContext, char c10) throws JsonMappingException {
        throw deserializationContext.weirdStringException(str, handledType(), String.format("Non-hex character '%c' (value 0x%s), not valid for UUID String", Character.valueOf(c10), Integer.toHexString(c10)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
    /* renamed from: K0 */
    public UUID _deserialize(String str, DeserializationContext deserializationContext) throws IOException {
        if (str.length() != 36) {
            if (str.length() == 24) {
                return M0(com.fasterxml.jackson.core.a.a().decode(str), deserializationContext);
            }
            return J0(str, deserializationContext);
        }
        if (str.charAt(8) != '-' || str.charAt(13) != '-' || str.charAt(18) != '-' || str.charAt(23) != '-') {
            J0(str, deserializationContext);
        }
        int R0 = R0(str, 24, deserializationContext);
        return new UUID((Q0(str, 0, deserializationContext) << 32) + ((R0(str, 9, deserializationContext) << 16) | R0(str, 14, deserializationContext)), ((Q0(str, 28, deserializationContext) << 32) >>> 32) | ((R0 | (R0(str, 19, deserializationContext) << 16)) << 32));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
    /* renamed from: L0 */
    public UUID C0(Object obj, DeserializationContext deserializationContext) throws IOException {
        if (obj instanceof byte[]) {
            return M0((byte[]) obj, deserializationContext);
        }
        return (UUID) super.C0(obj, deserializationContext);
    }

    int P0(String str, int i4, DeserializationContext deserializationContext) throws JsonMappingException {
        char charAt = str.charAt(i4);
        int i10 = i4 + 1;
        char charAt2 = str.charAt(i10);
        if (charAt <= 127 && charAt2 <= 127) {
            int[] iArr = f15046h;
            int i11 = iArr[charAt2] | (iArr[charAt] << 4);
            if (i11 >= 0) {
                return i11;
            }
        }
        if (charAt <= 127 && f15046h[charAt] >= 0) {
            return I0(str, i10, deserializationContext, charAt2);
        }
        return I0(str, i4, deserializationContext, charAt);
    }

    int Q0(String str, int i4, DeserializationContext deserializationContext) throws JsonMappingException {
        return (P0(str, i4, deserializationContext) << 24) + (P0(str, i4 + 2, deserializationContext) << 16) + (P0(str, i4 + 4, deserializationContext) << 8) + P0(str, i4 + 6, deserializationContext);
    }

    int R0(String str, int i4, DeserializationContext deserializationContext) throws JsonMappingException {
        return (P0(str, i4, deserializationContext) << 8) + P0(str, i4 + 2, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) {
        return new UUID(0L, 0L);
    }
}
