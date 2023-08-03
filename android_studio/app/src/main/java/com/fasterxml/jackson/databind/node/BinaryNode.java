package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public class BinaryNode extends ValueNode {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15534d = 2;

    /* renamed from: e  reason: collision with root package name */
    static final BinaryNode f15535e = new BinaryNode(new byte[0]);

    /* renamed from: c  reason: collision with root package name */
    protected final byte[] f15536c;

    public BinaryNode(byte[] bArr) {
        this.f15536c = bArr;
    }

    public static BinaryNode valueOf(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return f15535e;
        }
        return new BinaryNode(bArr);
    }

    @Override // com.fasterxml.jackson.databind.e
    public String asText() {
        return com.fasterxml.jackson.core.a.a().encode(this.f15536c, false);
    }

    @Override // com.fasterxml.jackson.databind.node.ValueNode, com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public JsonToken asToken() {
        return JsonToken.VALUE_EMBEDDED_OBJECT;
    }

    @Override // com.fasterxml.jackson.databind.e
    public byte[] binaryValue() {
        return this.f15536c;
    }

    @Override // com.fasterxml.jackson.databind.e
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof BinaryNode)) {
            return Arrays.equals(((BinaryNode) obj).f15536c, this.f15536c);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.e
    public JsonNodeType getNodeType() {
        return JsonNodeType.BINARY;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode
    public int hashCode() {
        byte[] bArr = this.f15536c;
        if (bArr == null) {
            return -1;
        }
        return bArr.length;
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.databind.f
    public final void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException {
        Base64Variant base64Variant = lVar.getConfig().getBase64Variant();
        byte[] bArr = this.f15536c;
        jsonGenerator.K0(base64Variant, bArr, 0, bArr.length);
    }

    public BinaryNode(byte[] bArr, int i4, int i10) {
        if (i4 == 0 && i10 == bArr.length) {
            this.f15536c = bArr;
            return;
        }
        byte[] bArr2 = new byte[i10];
        this.f15536c = bArr2;
        System.arraycopy(bArr, i4, bArr2, 0, i10);
    }

    public static BinaryNode valueOf(byte[] bArr, int i4, int i10) {
        if (bArr == null) {
            return null;
        }
        if (i10 == 0) {
            return f15535e;
        }
        return new BinaryNode(bArr, i4, i10);
    }
}
