package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.std.a;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;

/* loaded from: classes.dex */
public class JsonNodeDeserializer extends com.fasterxml.jackson.databind.deser.std.a<e> {

    /* renamed from: g  reason: collision with root package name */
    private static final JsonNodeDeserializer f14897g = new JsonNodeDeserializer();

    /* loaded from: classes.dex */
    static final class a extends com.fasterxml.jackson.databind.deser.std.a<ArrayNode> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f14898g = 1;

        /* renamed from: h  reason: collision with root package name */
        protected static final a f14899h = new a();

        protected a() {
            super(ArrayNode.class, Boolean.TRUE);
        }

        public static a O0() {
            return f14899h;
        }

        @Override // com.fasterxml.jackson.databind.d
        /* renamed from: M0 */
        public ArrayNode deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            if (jsonParser.p1()) {
                JsonNodeFactory nodeFactory = deserializationContext.getNodeFactory();
                ArrayNode arrayNode = nodeFactory.arrayNode();
                D0(jsonParser, deserializationContext, nodeFactory, new a.C0117a(), arrayNode);
                return arrayNode;
            }
            return (ArrayNode) deserializationContext.handleUnexpectedToken(ArrayNode.class, jsonParser);
        }

        @Override // com.fasterxml.jackson.databind.d
        /* renamed from: N0 */
        public ArrayNode deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, ArrayNode arrayNode) throws IOException {
            if (jsonParser.p1()) {
                D0(jsonParser, deserializationContext, deserializationContext.getNodeFactory(), new a.C0117a(), arrayNode);
                return arrayNode;
            }
            return (ArrayNode) deserializationContext.handleUnexpectedToken(ArrayNode.class, jsonParser);
        }
    }

    /* loaded from: classes.dex */
    static final class b extends com.fasterxml.jackson.databind.deser.std.a<ObjectNode> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f14900g = 1;

        /* renamed from: h  reason: collision with root package name */
        protected static final b f14901h = new b();

        protected b() {
            super(ObjectNode.class, Boolean.TRUE);
        }

        public static b O0() {
            return f14901h;
        }

        @Override // com.fasterxml.jackson.databind.d
        /* renamed from: M0 */
        public ObjectNode deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonNodeFactory nodeFactory = deserializationContext.getNodeFactory();
            if (jsonParser.q1()) {
                ObjectNode objectNode = nodeFactory.objectNode();
                D0(jsonParser, deserializationContext, nodeFactory, new a.C0117a(), objectNode);
                return objectNode;
            } else if (jsonParser.k1(JsonToken.FIELD_NAME)) {
                return E0(jsonParser, deserializationContext, nodeFactory, new a.C0117a());
            } else {
                if (jsonParser.k1(JsonToken.END_OBJECT)) {
                    return nodeFactory.objectNode();
                }
                return (ObjectNode) deserializationContext.handleUnexpectedToken(ObjectNode.class, jsonParser);
            }
        }

        @Override // com.fasterxml.jackson.databind.d
        /* renamed from: N0 */
        public ObjectNode deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, ObjectNode objectNode) throws IOException {
            if (!jsonParser.q1() && !jsonParser.k1(JsonToken.FIELD_NAME)) {
                return (ObjectNode) deserializationContext.handleUnexpectedToken(ObjectNode.class, jsonParser);
            }
            return (ObjectNode) L0(jsonParser, deserializationContext, objectNode, new a.C0117a());
        }
    }

    protected JsonNodeDeserializer() {
        super(e.class, null);
    }

    public static com.fasterxml.jackson.databind.d<? extends e> getDeserializer(Class<?> cls) {
        if (cls == ObjectNode.class) {
            return b.O0();
        }
        if (cls == ArrayNode.class) {
            return a.O0();
        }
        return f14897g;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.a, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public /* bridge */ /* synthetic */ Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return super.deserializeWithType(jsonParser, deserializationContext, bVar);
    }

    @Override // com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
    public Object getAbsentValue(DeserializationContext deserializationContext) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.a, com.fasterxml.jackson.databind.d
    public /* bridge */ /* synthetic */ boolean isCachable() {
        return super.isCachable();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.a, com.fasterxml.jackson.databind.d
    public /* bridge */ /* synthetic */ LogicalType logicalType() {
        return super.logicalType();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.a, com.fasterxml.jackson.databind.d
    public /* bridge */ /* synthetic */ Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return super.supportsUpdate(deserializationConfig);
    }

    @Override // com.fasterxml.jackson.databind.d
    public e deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        a.C0117a c0117a = new a.C0117a();
        JsonNodeFactory nodeFactory = deserializationContext.getNodeFactory();
        int X = jsonParser.X();
        if (X != 1) {
            if (X != 2) {
                if (X != 3) {
                    if (X != 5) {
                        return C0(jsonParser, deserializationContext);
                    }
                    return E0(jsonParser, deserializationContext, nodeFactory, c0117a);
                }
                return D0(jsonParser, deserializationContext, nodeFactory, c0117a, nodeFactory.arrayNode());
            }
            return nodeFactory.objectNode();
        }
        return D0(jsonParser, deserializationContext, nodeFactory, c0117a, nodeFactory.objectNode());
    }

    @Override // com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
    public e getNullValue(DeserializationContext deserializationContext) {
        return deserializationContext.getNodeFactory().nullNode();
    }
}
