package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.databind.util.q;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public class JsonNodeFactory implements Serializable, b {

    /* renamed from: b  reason: collision with root package name */
    private static final long f15552b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final JsonNodeFactory f15553c;

    /* renamed from: d  reason: collision with root package name */
    private static final JsonNodeFactory f15554d;
    public static final JsonNodeFactory instance;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f15555a;

    static {
        JsonNodeFactory jsonNodeFactory = new JsonNodeFactory(false);
        f15553c = jsonNodeFactory;
        f15554d = new JsonNodeFactory(true);
        instance = jsonNodeFactory;
    }

    public JsonNodeFactory(boolean z9) {
        this.f15555a = z9;
    }

    public static JsonNodeFactory withExactBigDecimals(boolean z9) {
        return z9 ? f15554d : f15553c;
    }

    protected boolean a(long j4) {
        return ((long) ((int) j4)) == j4;
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public ArrayNode arrayNode() {
        return new ArrayNode(this);
    }

    public com.fasterxml.jackson.databind.e missingNode() {
        return MissingNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public ObjectNode objectNode() {
        return new ObjectNode(this);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public ValueNode pojoNode(Object obj) {
        return new POJONode(obj);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public ValueNode rawValueNode(q qVar) {
        return new POJONode(qVar);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public ArrayNode arrayNode(int i4) {
        return new ArrayNode(this, i4);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public BooleanNode booleanNode(boolean z9) {
        return z9 ? BooleanNode.getTrue() : BooleanNode.getFalse();
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public NullNode nullNode() {
        return NullNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public TextNode textNode(String str) {
        return TextNode.valueOf(str);
    }

    protected JsonNodeFactory() {
        this(false);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public BinaryNode binaryNode(byte[] bArr) {
        return BinaryNode.valueOf(bArr);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public BinaryNode binaryNode(byte[] bArr, int i4, int i10) {
        return BinaryNode.valueOf(bArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public NumericNode numberNode(byte b10) {
        return IntNode.valueOf(b10);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public ValueNode numberNode(Byte b10) {
        return b10 == null ? nullNode() : IntNode.valueOf(b10.intValue());
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public NumericNode numberNode(short s9) {
        return ShortNode.valueOf(s9);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public ValueNode numberNode(Short sh) {
        return sh == null ? nullNode() : ShortNode.valueOf(sh.shortValue());
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public NumericNode numberNode(int i4) {
        return IntNode.valueOf(i4);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public ValueNode numberNode(Integer num) {
        return num == null ? nullNode() : IntNode.valueOf(num.intValue());
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public NumericNode numberNode(long j4) {
        return LongNode.valueOf(j4);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public ValueNode numberNode(Long l10) {
        if (l10 == null) {
            return nullNode();
        }
        return LongNode.valueOf(l10.longValue());
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public ValueNode numberNode(BigInteger bigInteger) {
        if (bigInteger == null) {
            return nullNode();
        }
        return BigIntegerNode.valueOf(bigInteger);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public NumericNode numberNode(float f10) {
        return FloatNode.valueOf(f10);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public ValueNode numberNode(Float f10) {
        return f10 == null ? nullNode() : FloatNode.valueOf(f10.floatValue());
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public NumericNode numberNode(double d4) {
        return DoubleNode.valueOf(d4);
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public ValueNode numberNode(Double d4) {
        return d4 == null ? nullNode() : DoubleNode.valueOf(d4.doubleValue());
    }

    @Override // com.fasterxml.jackson.databind.node.b
    public ValueNode numberNode(BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            return nullNode();
        }
        if (this.f15555a) {
            return DecimalNode.valueOf(bigDecimal);
        }
        if (bigDecimal.signum() == 0) {
            return DecimalNode.ZERO;
        }
        try {
            bigDecimal = bigDecimal.stripTrailingZeros();
        } catch (ArithmeticException unused) {
        }
        return DecimalNode.valueOf(bigDecimal);
    }
}
