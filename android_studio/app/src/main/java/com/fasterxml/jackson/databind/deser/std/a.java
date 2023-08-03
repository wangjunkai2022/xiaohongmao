package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ContainerNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.q;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: JsonNodeDeserializer.java */
/* loaded from: classes.dex */
abstract class a<T extends e> extends StdDeserializer<T> {

    /* renamed from: f  reason: collision with root package name */
    protected final Boolean f15059f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JsonNodeDeserializer.java */
    /* renamed from: com.fasterxml.jackson.databind.deser.std.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0117a {

        /* renamed from: a  reason: collision with root package name */
        private ContainerNode[] f15060a;

        /* renamed from: b  reason: collision with root package name */
        private int f15061b;

        /* renamed from: c  reason: collision with root package name */
        private int f15062c;

        public ContainerNode a() {
            int i4 = this.f15061b;
            if (i4 == 0) {
                return null;
            }
            ContainerNode[] containerNodeArr = this.f15060a;
            int i10 = i4 - 1;
            this.f15061b = i10;
            return containerNodeArr[i10];
        }

        public void b(ContainerNode containerNode) {
            int i4 = this.f15061b;
            int i10 = this.f15062c;
            if (i4 < i10) {
                ContainerNode[] containerNodeArr = this.f15060a;
                this.f15061b = i4 + 1;
                containerNodeArr[i4] = containerNode;
                return;
            }
            if (this.f15060a == null) {
                this.f15062c = 10;
                this.f15060a = new ContainerNode[10];
            } else {
                int min = i10 + Math.min(4000, Math.max(20, i10 >> 1));
                this.f15062c = min;
                this.f15060a = (ContainerNode[]) Arrays.copyOf(this.f15060a, min);
            }
            ContainerNode[] containerNodeArr2 = this.f15060a;
            int i11 = this.f15061b;
            this.f15061b = i11 + 1;
            containerNodeArr2[i11] = containerNode;
        }

        public int c() {
            return this.f15061b;
        }
    }

    public a(Class<T> cls, Boolean bool) {
        super((Class<?>) cls);
        this.f15059f = bool;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final e C0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonNodeFactory nodeFactory = deserializationContext.getNodeFactory();
        int X = jsonParser.X();
        if (X != 2) {
            switch (X) {
                case 6:
                    return nodeFactory.textNode(jsonParser.S0());
                case 7:
                    return J0(jsonParser, deserializationContext, nodeFactory);
                case 8:
                    return H0(jsonParser, deserializationContext, nodeFactory);
                case 9:
                    return nodeFactory.booleanNode(true);
                case 10:
                    return nodeFactory.booleanNode(false);
                case 11:
                    return nodeFactory.nullNode();
                case 12:
                    return G0(jsonParser, deserializationContext);
                default:
                    return (e) deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
            }
        }
        return nodeFactory.objectNode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ContainerNode<?> D0(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory, C0117a c0117a, ContainerNode<?> containerNode) throws IOException {
        ObjectNode objectNode;
        e textNode;
        ObjectNode objectNode2;
        int deserializationFeatures = deserializationContext.getDeserializationFeatures() & StdDeserializer.f14986d;
        ContainerNode<?> containerNode2 = containerNode;
        do {
            boolean z9 = true;
            if (containerNode2 instanceof ObjectNode) {
                ObjectNode objectNode3 = containerNode2;
                ObjectNode objectNode4 = (ObjectNode) containerNode2;
                String t12 = jsonParser.t1();
                while (t12 != null) {
                    JsonToken y12 = jsonParser.y1();
                    if (y12 == null) {
                        y12 = JsonToken.NOT_AVAILABLE;
                    }
                    int id = y12.id();
                    if (id == z9) {
                        ObjectNode objectNode5 = objectNode4;
                        ObjectNode objectNode6 = jsonNodeFactory.objectNode();
                        e replace = objectNode5.replace(t12, objectNode6);
                        if (replace != null) {
                            objectNode = objectNode6;
                            K0(jsonParser, deserializationContext, jsonNodeFactory, t12, objectNode5, replace, objectNode6);
                        } else {
                            objectNode = objectNode6;
                        }
                        c0117a.b(objectNode3);
                        objectNode4 = objectNode;
                        objectNode3 = objectNode4;
                    } else if (id != 3) {
                        switch (id) {
                            case 6:
                                textNode = jsonNodeFactory.textNode(jsonParser.S0());
                                break;
                            case 7:
                                textNode = I0(jsonParser, deserializationFeatures, jsonNodeFactory);
                                break;
                            case 8:
                                textNode = H0(jsonParser, deserializationContext, jsonNodeFactory);
                                break;
                            case 9:
                                textNode = jsonNodeFactory.booleanNode(z9);
                                break;
                            case 10:
                                textNode = jsonNodeFactory.booleanNode(false);
                                break;
                            case 11:
                                textNode = jsonNodeFactory.nullNode();
                                break;
                            default:
                                textNode = F0(jsonParser, deserializationContext);
                                break;
                        }
                        e eVar = textNode;
                        e replace2 = objectNode4.replace(t12, eVar);
                        if (replace2 != null) {
                            objectNode2 = objectNode4;
                            K0(jsonParser, deserializationContext, jsonNodeFactory, t12, objectNode4, replace2, eVar);
                        } else {
                            objectNode2 = objectNode4;
                        }
                        objectNode4 = objectNode2;
                    } else {
                        ObjectNode objectNode7 = objectNode4;
                        ArrayNode arrayNode = jsonNodeFactory.arrayNode();
                        e replace3 = objectNode7.replace(t12, arrayNode);
                        if (replace3 != null) {
                            K0(jsonParser, deserializationContext, jsonNodeFactory, t12, objectNode7, replace3, arrayNode);
                        }
                        c0117a.b(objectNode3);
                        containerNode2 = arrayNode;
                        continue;
                    }
                    t12 = jsonParser.t1();
                    z9 = true;
                }
                containerNode2 = c0117a.a();
                continue;
            } else {
                ArrayNode arrayNode2 = (ArrayNode) containerNode2;
                while (true) {
                    JsonToken y13 = jsonParser.y1();
                    if (y13 == null) {
                        y13 = JsonToken.NOT_AVAILABLE;
                    }
                    switch (y13.id()) {
                        case 1:
                            c0117a.b(containerNode2);
                            containerNode2 = jsonNodeFactory.objectNode();
                            arrayNode2.add(containerNode2);
                            continue;
                        case 2:
                        case 5:
                        default:
                            arrayNode2.add(F0(jsonParser, deserializationContext));
                        case 3:
                            c0117a.b(containerNode2);
                            containerNode2 = jsonNodeFactory.arrayNode();
                            arrayNode2.add(containerNode2);
                            continue;
                        case 4:
                            break;
                        case 6:
                            arrayNode2.add(jsonNodeFactory.textNode(jsonParser.S0()));
                        case 7:
                            arrayNode2.add(I0(jsonParser, deserializationFeatures, jsonNodeFactory));
                        case 8:
                            arrayNode2.add(H0(jsonParser, deserializationContext, jsonNodeFactory));
                        case 9:
                            arrayNode2.add(jsonNodeFactory.booleanNode(true));
                        case 10:
                            arrayNode2.add(jsonNodeFactory.booleanNode(false));
                        case 11:
                            arrayNode2.add(jsonNodeFactory.nullNode());
                    }
                }
            }
        } while (containerNode2 != null);
        return containerNode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ObjectNode E0(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory, C0117a c0117a) throws IOException {
        e D0;
        ObjectNode objectNode = jsonNodeFactory.objectNode();
        String M = jsonParser.M();
        while (M != null) {
            JsonToken y12 = jsonParser.y1();
            if (y12 == null) {
                y12 = JsonToken.NOT_AVAILABLE;
            }
            int id = y12.id();
            if (id == 1) {
                D0 = D0(jsonParser, deserializationContext, jsonNodeFactory, c0117a, jsonNodeFactory.objectNode());
            } else if (id != 3) {
                D0 = C0(jsonParser, deserializationContext);
            } else {
                D0 = D0(jsonParser, deserializationContext, jsonNodeFactory, c0117a, jsonNodeFactory.arrayNode());
            }
            e eVar = D0;
            e replace = objectNode.replace(M, eVar);
            if (replace != null) {
                K0(jsonParser, deserializationContext, jsonNodeFactory, M, objectNode, replace, eVar);
            }
            M = jsonParser.t1();
        }
        return objectNode;
    }

    protected final e F0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int X = jsonParser.X();
        if (X != 2) {
            if (X != 8) {
                if (X != 12) {
                    return (e) deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
                }
                return G0(jsonParser, deserializationContext);
            }
            return H0(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
        }
        return deserializationContext.getNodeFactory().objectNode();
    }

    protected final e G0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonNodeFactory nodeFactory = deserializationContext.getNodeFactory();
        Object A0 = jsonParser.A0();
        if (A0 == null) {
            return nodeFactory.nullNode();
        }
        if (A0.getClass() == byte[].class) {
            return nodeFactory.binaryNode((byte[]) A0);
        }
        if (A0 instanceof q) {
            return nodeFactory.rawValueNode((q) A0);
        }
        if (A0 instanceof e) {
            return (e) A0;
        }
        return nodeFactory.pojoNode(A0);
    }

    protected final e H0(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        JsonParser.NumberType J0 = jsonParser.J0();
        if (J0 == JsonParser.NumberType.BIG_DECIMAL) {
            return jsonNodeFactory.numberNode(jsonParser.y0());
        }
        if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
            if (jsonParser.r1()) {
                return jsonNodeFactory.numberNode(jsonParser.z0());
            }
            return jsonNodeFactory.numberNode(jsonParser.y0());
        } else if (J0 == JsonParser.NumberType.FLOAT) {
            return jsonNodeFactory.numberNode(jsonParser.C0());
        } else {
            return jsonNodeFactory.numberNode(jsonParser.z0());
        }
    }

    protected final e I0(JsonParser jsonParser, int i4, JsonNodeFactory jsonNodeFactory) throws IOException {
        if (i4 != 0) {
            if (DeserializationFeature.USE_BIG_INTEGER_FOR_INTS.enabledIn(i4)) {
                return jsonNodeFactory.numberNode(jsonParser.n0());
            }
            return jsonNodeFactory.numberNode(jsonParser.H0());
        }
        JsonParser.NumberType J0 = jsonParser.J0();
        if (J0 == JsonParser.NumberType.INT) {
            return jsonNodeFactory.numberNode(jsonParser.F0());
        }
        if (J0 == JsonParser.NumberType.LONG) {
            return jsonNodeFactory.numberNode(jsonParser.H0());
        }
        return jsonNodeFactory.numberNode(jsonParser.n0());
    }

    protected final e J0(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        JsonParser.NumberType J0;
        int deserializationFeatures = deserializationContext.getDeserializationFeatures();
        if ((StdDeserializer.f14986d & deserializationFeatures) != 0) {
            if (DeserializationFeature.USE_BIG_INTEGER_FOR_INTS.enabledIn(deserializationFeatures)) {
                J0 = JsonParser.NumberType.BIG_INTEGER;
            } else if (DeserializationFeature.USE_LONG_FOR_INTS.enabledIn(deserializationFeatures)) {
                J0 = JsonParser.NumberType.LONG;
            } else {
                J0 = jsonParser.J0();
            }
        } else {
            J0 = jsonParser.J0();
        }
        if (J0 == JsonParser.NumberType.INT) {
            return jsonNodeFactory.numberNode(jsonParser.F0());
        }
        if (J0 == JsonParser.NumberType.LONG) {
            return jsonNodeFactory.numberNode(jsonParser.H0());
        }
        return jsonNodeFactory.numberNode(jsonParser.n0());
    }

    protected void K0(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory, String str, ObjectNode objectNode, e eVar, e eVar2) throws IOException {
        if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_READING_DUP_TREE_KEY)) {
            deserializationContext.reportInputMismatch(e.class, "Duplicate field '%s' for `ObjectNode`: not allowed when `DeserializationFeature.FAIL_ON_READING_DUP_TREE_KEY` enabled", str);
        }
        if (deserializationContext.isEnabled(StreamReadCapability.DUPLICATE_PROPERTIES)) {
            if (eVar.isArray()) {
                ((ArrayNode) eVar).add(eVar2);
                objectNode.replace(str, eVar);
                return;
            }
            ArrayNode arrayNode = jsonNodeFactory.arrayNode();
            arrayNode.add(eVar);
            arrayNode.add(eVar2);
            objectNode.replace(str, arrayNode);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final e L0(JsonParser jsonParser, DeserializationContext deserializationContext, ObjectNode objectNode, C0117a c0117a) throws IOException {
        String M;
        e D0;
        if (jsonParser.q1()) {
            M = jsonParser.t1();
        } else if (!jsonParser.k1(JsonToken.FIELD_NAME)) {
            return (e) deserialize(jsonParser, deserializationContext);
        } else {
            M = jsonParser.M();
        }
        JsonNodeFactory nodeFactory = deserializationContext.getNodeFactory();
        while (M != null) {
            JsonToken y12 = jsonParser.y1();
            e eVar = objectNode.get(M);
            if (eVar != null) {
                if (eVar instanceof ObjectNode) {
                    if (y12 == JsonToken.START_OBJECT) {
                        e L0 = L0(jsonParser, deserializationContext, (ObjectNode) eVar, c0117a);
                        if (L0 != eVar) {
                            objectNode.set(M, L0);
                        }
                    }
                } else if ((eVar instanceof ArrayNode) && y12 == JsonToken.START_ARRAY) {
                    D0(jsonParser, deserializationContext, nodeFactory, c0117a, (ArrayNode) eVar);
                }
                M = jsonParser.t1();
            }
            if (y12 == null) {
                y12 = JsonToken.NOT_AVAILABLE;
            }
            int id = y12.id();
            if (id == 1) {
                D0 = D0(jsonParser, deserializationContext, nodeFactory, c0117a, nodeFactory.objectNode());
            } else if (id == 3) {
                D0 = D0(jsonParser, deserializationContext, nodeFactory, c0117a, nodeFactory.arrayNode());
            } else if (id == 6) {
                D0 = nodeFactory.textNode(jsonParser.S0());
            } else if (id != 7) {
                switch (id) {
                    case 9:
                        D0 = nodeFactory.booleanNode(true);
                        break;
                    case 10:
                        D0 = nodeFactory.booleanNode(false);
                        break;
                    case 11:
                        D0 = nodeFactory.nullNode();
                        break;
                    default:
                        D0 = F0(jsonParser, deserializationContext);
                        break;
                }
            } else {
                D0 = J0(jsonParser, deserializationContext, nodeFactory);
            }
            objectNode.set(M, D0);
            M = jsonParser.t1();
        }
        return objectNode;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return bVar.deserializeTypedFromAny(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Untyped;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return this.f15059f;
    }
}
