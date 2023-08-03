package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;

/* loaded from: classes2.dex */
public class InetSocketAddressSerializer extends StdScalarSerializer<InetSocketAddress> {
    public InetSocketAddressSerializer() {
        super(InetSocketAddress.class);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(InetSocketAddress inetSocketAddress, JsonGenerator jsonGenerator, l lVar) throws IOException {
        String substring;
        InetAddress address = inetSocketAddress.getAddress();
        String hostName = address == null ? inetSocketAddress.getHostName() : address.toString().trim();
        int indexOf = hostName.indexOf(47);
        if (indexOf >= 0) {
            if (indexOf == 0) {
                if (address instanceof Inet6Address) {
                    substring = "[" + hostName.substring(1) + "]";
                } else {
                    substring = hostName.substring(1);
                }
                hostName = substring;
            } else {
                hostName = hostName.substring(0, indexOf);
            }
        }
        jsonGenerator.P1(hostName + ":" + inetSocketAddress.getPort());
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.g
    public void serializeWithType(InetSocketAddress inetSocketAddress, JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.h(inetSocketAddress, InetSocketAddress.class, JsonToken.VALUE_STRING));
        serialize(inetSocketAddress, jsonGenerator, lVar);
        fVar.v(jsonGenerator, o9);
    }
}
