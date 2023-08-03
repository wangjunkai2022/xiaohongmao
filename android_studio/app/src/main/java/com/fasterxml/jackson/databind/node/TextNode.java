package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.g;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;

/* loaded from: classes.dex */
public class TextNode extends ValueNode {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15567d = 2;

    /* renamed from: e  reason: collision with root package name */
    static final TextNode f15568e = new TextNode("");

    /* renamed from: c  reason: collision with root package name */
    protected final String f15569c;

    public TextNode(String str) {
        this.f15569c = str;
    }

    @Deprecated
    protected static void e(StringBuilder sb, String str) {
        sb.append('\"');
        com.fasterxml.jackson.core.io.b.a(sb, str);
        sb.append('\"');
    }

    public static TextNode valueOf(String str) {
        if (str == null) {
            return null;
        }
        if (str.isEmpty()) {
            return f15568e;
        }
        return new TextNode(str);
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean asBoolean(boolean z9) {
        String str = this.f15569c;
        if (str != null) {
            String trim = str.trim();
            if ("true".equals(trim)) {
                return true;
            }
            if ("false".equals(trim)) {
                return false;
            }
            return z9;
        }
        return z9;
    }

    @Override // com.fasterxml.jackson.databind.e
    public double asDouble(double d4) {
        return g.c(this.f15569c, d4);
    }

    @Override // com.fasterxml.jackson.databind.e
    public int asInt(int i4) {
        return g.d(this.f15569c, i4);
    }

    @Override // com.fasterxml.jackson.databind.e
    public long asLong(long j4) {
        return g.e(this.f15569c, j4);
    }

    @Override // com.fasterxml.jackson.databind.e
    public String asText() {
        return this.f15569c;
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonToken asToken() {
        return JsonToken.VALUE_STRING;
    }

    @Override // com.fasterxml.jackson.databind.e
    public byte[] binaryValue() throws IOException {
        return getBinaryValue(com.fasterxml.jackson.core.a.a());
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof TextNode)) {
            return ((TextNode) obj).f15569c.equals(this.f15569c);
        }
        return false;
    }

    public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException {
        String trim = this.f15569c.trim();
        com.fasterxml.jackson.core.util.c cVar = new com.fasterxml.jackson.core.util.c(Math.max(16, Math.min(65536, ((trim.length() >> 2) * 3) + 4)));
        try {
            base64Variant.decode(trim, cVar);
            return cVar.E();
        } catch (IllegalArgumentException e4) {
            throw InvalidFormatException.from(null, String.format("Cannot access contents of TextNode as binary due to broken Base64 encoding: %s", e4.getMessage()), trim, byte[].class);
        }
    }

    @Override // com.fasterxml.jackson.databind.e
    public JsonNodeType getNodeType() {
        return JsonNodeType.STRING;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        return this.f15569c.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public final void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        String str = this.f15569c;
        if (str == null) {
            jsonGenerator.W0();
        } else {
            jsonGenerator.P1(str);
        }
    }

    @Override // com.fasterxml.jackson.databind.e
    public String textValue() {
        return this.f15569c;
    }

    @Override // com.fasterxml.jackson.databind.e
    public String asText(String str) {
        String str2 = this.f15569c;
        return str2 == null ? str : str2;
    }
}
