package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.node.ContainerNode;
import com.fasterxml.jackson.databind.util.q;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public abstract class ContainerNode<T extends ContainerNode<T>> extends BaseJsonNode implements b {

    /* renamed from: c  reason: collision with root package name */
    private static final long f15539c = 1;

    /* renamed from: b  reason: collision with root package name */
    protected final JsonNodeFactory f15540b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ContainerNode(JsonNodeFactory jsonNodeFactory) {
        this.f15540b = jsonNodeFactory;
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final ArrayNode arrayNode() {
        return this.f15540b.arrayNode();
    }

    @Override // com.fasterxml.jackson.databind.e
    public String asText() {
        return "";
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.m
    public abstract JsonToken asToken();

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public abstract com.fasterxml.jackson.databind.e get(int i4);

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public abstract com.fasterxml.jackson.databind.e get(String str);

    public com.fasterxml.jackson.databind.e missingNode() {
        return this.f15540b.missingNode();
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final ObjectNode objectNode() {
        return this.f15540b.objectNode();
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final ValueNode pojoNode(Object obj) {
        return this.f15540b.pojoNode(obj);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final ValueNode rawValueNode(q qVar) {
        return this.f15540b.rawValueNode(qVar);
    }

    public abstract T removeAll();

    @Override // com.fasterxml.jackson.databind.e, com.fasterxml.jackson.core.m
    public abstract int size();

    @Override // com.fasterxml.jackson.databind.node.b
    public final ArrayNode arrayNode(int i4) {
        return this.f15540b.arrayNode(i4);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final BooleanNode booleanNode(boolean z9) {
        return this.f15540b.booleanNode(z9);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final NullNode nullNode() {
        return this.f15540b.nullNode();
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final TextNode textNode(String str) {
        return this.f15540b.textNode(str);
    }

    protected ContainerNode() {
        this.f15540b = null;
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final BinaryNode binaryNode(byte[] bArr) {
        return this.f15540b.binaryNode(bArr);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final BinaryNode binaryNode(byte[] bArr, int i4, int i10) {
        return this.f15540b.binaryNode(bArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final NumericNode numberNode(byte b10) {
        return this.f15540b.numberNode(b10);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final NumericNode numberNode(short s9) {
        return this.f15540b.numberNode(s9);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final NumericNode numberNode(int i4) {
        return this.f15540b.numberNode(i4);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final NumericNode numberNode(long j4) {
        return this.f15540b.numberNode(j4);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final NumericNode numberNode(float f10) {
        return this.f15540b.numberNode(f10);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final NumericNode numberNode(double d4) {
        return this.f15540b.numberNode(d4);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final ValueNode numberNode(BigInteger bigInteger) {
        return this.f15540b.numberNode(bigInteger);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final ValueNode numberNode(BigDecimal bigDecimal) {
        return this.f15540b.numberNode(bigDecimal);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final ValueNode numberNode(Byte b10) {
        return this.f15540b.numberNode(b10);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final ValueNode numberNode(Short sh) {
        return this.f15540b.numberNode(sh);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final ValueNode numberNode(Integer num) {
        return this.f15540b.numberNode(num);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final ValueNode numberNode(Long l10) {
        return this.f15540b.numberNode(l10);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final ValueNode numberNode(Float f10) {
        return this.f15540b.numberNode(f10);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public final ValueNode numberNode(Double d4) {
        return this.f15540b.numberNode(d4);
    }
}
