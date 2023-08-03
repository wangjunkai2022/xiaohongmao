package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonValueFormat;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.e;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;
import java.util.UUID;

/* loaded from: classes2.dex */
public class UUIDSerializer extends StdScalarSerializer<UUID> implements e {

    /* renamed from: e  reason: collision with root package name */
    static final char[] f15851e = "0123456789abcdef".toCharArray();

    /* renamed from: d  reason: collision with root package name */
    protected final Boolean f15852d;

    public UUIDSerializer() {
        this(null);
    }

    private static final void v(int i4, byte[] bArr, int i10) {
        bArr[i10] = (byte) (i4 >> 24);
        int i11 = i10 + 1;
        bArr[i11] = (byte) (i4 >> 16);
        int i12 = i11 + 1;
        bArr[i12] = (byte) (i4 >> 8);
        bArr[i12 + 1] = (byte) i4;
    }

    private static void w(int i4, char[] cArr, int i10) {
        x(i4 >> 16, cArr, i10);
        x(i4, cArr, i10 + 4);
    }

    private static void x(int i4, char[] cArr, int i10) {
        char[] cArr2 = f15851e;
        cArr[i10] = cArr2[(i4 >> 12) & 15];
        int i11 = i10 + 1;
        cArr[i11] = cArr2[(i4 >> 8) & 15];
        int i12 = i11 + 1;
        cArr[i12] = cArr2[(i4 >> 4) & 15];
        cArr[i12 + 1] = cArr2[i4 & 15];
    }

    private static final byte[] y(UUID uuid) {
        byte[] bArr = new byte[16];
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        v((int) (mostSignificantBits >> 32), bArr, 0);
        v((int) mostSignificantBits, bArr, 4);
        v((int) (leastSignificantBits >> 32), bArr, 8);
        v((int) leastSignificantBits, bArr, 12);
        return bArr;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        u(fVar, javaType, JsonValueFormat.UUID);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002b A[RETURN] */
    @Override // com.fasterxml.jackson.databind.ser.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fasterxml.jackson.databind.g<?> createContextual(com.fasterxml.jackson.databind.l r2, com.fasterxml.jackson.databind.BeanProperty r3) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r1 = this;
            java.lang.Class r0 = r1.handledType()
            com.fasterxml.jackson.annotation.JsonFormat$Value r2 = r1.k(r2, r3, r0)
            if (r2 == 0) goto L1c
            com.fasterxml.jackson.annotation.JsonFormat$Shape r2 = r2.getShape()
            com.fasterxml.jackson.annotation.JsonFormat$Shape r3 = com.fasterxml.jackson.annotation.JsonFormat.Shape.BINARY
            if (r2 != r3) goto L15
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            goto L1d
        L15:
            com.fasterxml.jackson.annotation.JsonFormat$Shape r3 = com.fasterxml.jackson.annotation.JsonFormat.Shape.STRING
            if (r2 != r3) goto L1c
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            goto L1d
        L1c:
            r2 = 0
        L1d:
            java.lang.Boolean r3 = r1.f15852d
            boolean r3 = java.util.Objects.equals(r2, r3)
            if (r3 != 0) goto L2b
            com.fasterxml.jackson.databind.ser.std.UUIDSerializer r3 = new com.fasterxml.jackson.databind.ser.std.UUIDSerializer
            r3.<init>(r2)
            return r3
        L2b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.UUIDSerializer.createContextual(com.fasterxml.jackson.databind.l, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.g");
    }

    protected boolean z(JsonGenerator jsonGenerator) {
        Boolean bool = this.f15852d;
        if (bool != null) {
            return bool.booleanValue();
        }
        return !(jsonGenerator instanceof t) && jsonGenerator.s();
    }

    protected UUIDSerializer(Boolean bool) {
        super(UUID.class);
        this.f15852d = bool;
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, UUID uuid) {
        return uuid.getLeastSignificantBits() == 0 && uuid.getMostSignificantBits() == 0;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(UUID uuid, JsonGenerator jsonGenerator, l lVar) throws IOException {
        if (z(jsonGenerator)) {
            jsonGenerator.L0(y(uuid));
            return;
        }
        char[] cArr = new char[36];
        long mostSignificantBits = uuid.getMostSignificantBits();
        w((int) (mostSignificantBits >> 32), cArr, 0);
        cArr[8] = shaded.org.apache.commons.codec.language.l.f93713d;
        int i4 = (int) mostSignificantBits;
        x(i4 >>> 16, cArr, 9);
        cArr[13] = shaded.org.apache.commons.codec.language.l.f93713d;
        x(i4, cArr, 14);
        cArr[18] = shaded.org.apache.commons.codec.language.l.f93713d;
        long leastSignificantBits = uuid.getLeastSignificantBits();
        x((int) (leastSignificantBits >>> 48), cArr, 19);
        cArr[23] = shaded.org.apache.commons.codec.language.l.f93713d;
        x((int) (leastSignificantBits >>> 32), cArr, 24);
        w((int) leastSignificantBits, cArr, 28);
        jsonGenerator.Q1(cArr, 0, 36);
    }
}
