package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.databind.util.q;
import java.math.BigDecimal;
import java.math.BigInteger;

/* compiled from: JsonNodeCreator.java */
/* loaded from: classes.dex */
public interface b {
    ArrayNode arrayNode();

    ArrayNode arrayNode(int i4);

    ValueNode binaryNode(byte[] bArr);

    ValueNode binaryNode(byte[] bArr, int i4, int i10);

    ValueNode booleanNode(boolean z9);

    ValueNode nullNode();

    ValueNode numberNode(byte b10);

    ValueNode numberNode(double d4);

    ValueNode numberNode(float f10);

    ValueNode numberNode(int i4);

    ValueNode numberNode(long j4);

    ValueNode numberNode(Byte b10);

    ValueNode numberNode(Double d4);

    ValueNode numberNode(Float f10);

    ValueNode numberNode(Integer num);

    ValueNode numberNode(Long l10);

    ValueNode numberNode(Short sh);

    ValueNode numberNode(BigDecimal bigDecimal);

    ValueNode numberNode(BigInteger bigInteger);

    ValueNode numberNode(short s9);

    ObjectNode objectNode();

    ValueNode pojoNode(Object obj);

    ValueNode rawValueNode(q qVar);

    ValueNode textNode(String str);
}
