package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.e;
import java.io.IOException;
import java.net.InetAddress;

/* loaded from: classes2.dex */
public class InetAddressSerializer extends StdScalarSerializer<InetAddress> implements e {

    /* renamed from: d  reason: collision with root package name */
    protected final boolean f15761d;

    public InetAddressSerializer() {
        this(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0025 A[RETURN] */
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
            if (r2 == 0) goto L1a
            com.fasterxml.jackson.annotation.JsonFormat$Shape r2 = r2.getShape()
            boolean r3 = r2.isNumeric()
            if (r3 != 0) goto L18
            com.fasterxml.jackson.annotation.JsonFormat$Shape r3 = com.fasterxml.jackson.annotation.JsonFormat.Shape.ARRAY
            if (r2 != r3) goto L1a
        L18:
            r2 = 1
            goto L1b
        L1a:
            r2 = 0
        L1b:
            boolean r3 = r1.f15761d
            if (r2 == r3) goto L25
            com.fasterxml.jackson.databind.ser.std.InetAddressSerializer r3 = new com.fasterxml.jackson.databind.ser.std.InetAddressSerializer
            r3.<init>(r2)
            return r3
        L25:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.InetAddressSerializer.createContextual(com.fasterxml.jackson.databind.l, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.g");
    }

    public InetAddressSerializer(boolean z9) {
        super(InetAddress.class);
        this.f15761d = z9;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(InetAddress inetAddress, JsonGenerator jsonGenerator, l lVar) throws IOException {
        String trim;
        if (this.f15761d) {
            trim = inetAddress.getHostAddress();
        } else {
            trim = inetAddress.toString().trim();
            int indexOf = trim.indexOf(47);
            if (indexOf >= 0) {
                if (indexOf == 0) {
                    trim = trim.substring(1);
                } else {
                    trim = trim.substring(0, indexOf);
                }
            }
        }
        jsonGenerator.P1(trim);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.g
    public void serializeWithType(InetAddress inetAddress, JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.h(inetAddress, InetAddress.class, JsonToken.VALUE_STRING));
        serialize(inetAddress, jsonGenerator, lVar);
        fVar.v(jsonGenerator, o9);
    }
}
