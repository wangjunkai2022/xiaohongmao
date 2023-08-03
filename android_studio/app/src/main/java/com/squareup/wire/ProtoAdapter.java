package com.squareup.wire;

import com.squareup.wire.Message;
import com.squareup.wire.WireField;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;

/* loaded from: classes3.dex */
public abstract class ProtoAdapter<E> {
    public static final ProtoAdapter<Boolean> BOOL;
    public static final ProtoAdapter<ByteString> BYTES;
    public static final ProtoAdapter<Double> DOUBLE;
    public static final ProtoAdapter<Integer> FIXED32;
    public static final ProtoAdapter<Long> FIXED64;
    private static final int FIXED_32_SIZE = 4;
    private static final int FIXED_64_SIZE = 8;
    private static final int FIXED_BOOL_SIZE = 1;
    public static final ProtoAdapter<Float> FLOAT;
    public static final ProtoAdapter<Integer> INT32;
    public static final ProtoAdapter<Long> INT64;
    public static final ProtoAdapter<Integer> SFIXED32;
    public static final ProtoAdapter<Long> SFIXED64;
    public static final ProtoAdapter<Integer> SINT32;
    public static final ProtoAdapter<Long> SINT64;
    public static final ProtoAdapter<String> STRING;
    public static final ProtoAdapter<Integer> UINT32;
    public static final ProtoAdapter<Long> UINT64;
    private final FieldEncoding fieldEncoding;
    final Class<?> javaType;
    ProtoAdapter<List<E>> packedAdapter;
    ProtoAdapter<List<E>> repeatedAdapter;

    /* loaded from: classes3.dex */
    public static final class EnumConstantNotFoundException extends IllegalArgumentException {
        public final int value;

        /* JADX INFO: Access modifiers changed from: package-private */
        public EnumConstantNotFoundException(int i4, Class<?> cls) {
            super("Unknown enum tag " + i4 + " for " + cls.getCanonicalName());
            this.value = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class MapEntryProtoAdapter<K, V> extends ProtoAdapter<Map.Entry<K, V>> {
        final ProtoAdapter<K> keyAdapter;
        final ProtoAdapter<V> valueAdapter;

        MapEntryProtoAdapter(ProtoAdapter<K> protoAdapter, ProtoAdapter<V> protoAdapter2) {
            super(FieldEncoding.LENGTH_DELIMITED, null);
            this.keyAdapter = protoAdapter;
            this.valueAdapter = protoAdapter2;
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void encode(ProtoWriter protoWriter, Object obj) throws IOException {
            encode(protoWriter, (Map.Entry) ((Map.Entry) obj));
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int encodedSize(Object obj) {
            return encodedSize((Map.Entry) ((Map.Entry) obj));
        }

        @Override // com.squareup.wire.ProtoAdapter
        public Map.Entry<K, V> decode(ProtoReader protoReader) {
            throw new UnsupportedOperationException();
        }

        public void encode(ProtoWriter protoWriter, Map.Entry<K, V> entry) throws IOException {
            this.keyAdapter.encodeWithTag(protoWriter, 1, entry.getKey());
            this.valueAdapter.encodeWithTag(protoWriter, 2, entry.getValue());
        }

        public int encodedSize(Map.Entry<K, V> entry) {
            return this.keyAdapter.encodedSizeWithTag(1, entry.getKey()) + this.valueAdapter.encodedSizeWithTag(2, entry.getValue());
        }
    }

    /* loaded from: classes3.dex */
    private static final class MapProtoAdapter<K, V> extends ProtoAdapter<Map<K, V>> {
        private final MapEntryProtoAdapter<K, V> entryAdapter;

        MapProtoAdapter(ProtoAdapter<K> protoAdapter, ProtoAdapter<V> protoAdapter2) {
            super(FieldEncoding.LENGTH_DELIMITED, null);
            this.entryAdapter = new MapEntryProtoAdapter<>(protoAdapter, protoAdapter2);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void encode(ProtoWriter protoWriter, Object obj) throws IOException {
            encode(protoWriter, (Map) ((Map) obj));
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void encodeWithTag(ProtoWriter protoWriter, int i4, Object obj) throws IOException {
            encodeWithTag(protoWriter, i4, (Map) ((Map) obj));
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int encodedSize(Object obj) {
            return encodedSize((Map) ((Map) obj));
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int encodedSizeWithTag(int i4, Object obj) {
            return encodedSizeWithTag(i4, (Map) ((Map) obj));
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Object redact(Object obj) {
            return redact((Map) ((Map) obj));
        }

        @Override // com.squareup.wire.ProtoAdapter
        public Map<K, V> decode(ProtoReader protoReader) throws IOException {
            long beginMessage = protoReader.beginMessage();
            K k10 = null;
            V v9 = null;
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    break;
                } else if (nextTag == 1) {
                    k10 = this.entryAdapter.keyAdapter.decode(protoReader);
                } else if (nextTag == 2) {
                    v9 = this.entryAdapter.valueAdapter.decode(protoReader);
                }
            }
            protoReader.endMessage(beginMessage);
            if (k10 != null) {
                if (v9 != null) {
                    return Collections.singletonMap(k10, v9);
                }
                throw new IllegalStateException("Map entry with null value");
            }
            throw new IllegalStateException("Map entry with null key");
        }

        public void encode(ProtoWriter protoWriter, Map<K, V> map) {
            throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
        }

        public void encodeWithTag(ProtoWriter protoWriter, int i4, Map<K, V> map) throws IOException {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                this.entryAdapter.encodeWithTag(protoWriter, i4, entry);
            }
        }

        public int encodedSize(Map<K, V> map) {
            throw new UnsupportedOperationException("Repeated values can only be sized with a tag.");
        }

        public int encodedSizeWithTag(int i4, Map<K, V> map) {
            int i10 = 0;
            for (Map.Entry<K, V> entry : map.entrySet()) {
                i10 += this.entryAdapter.encodedSizeWithTag(i4, entry);
            }
            return i10;
        }

        public Map<K, V> redact(Map<K, V> map) {
            return Collections.emptyMap();
        }
    }

    static {
        FieldEncoding fieldEncoding = FieldEncoding.VARINT;
        BOOL = new ProtoAdapter<Boolean>(fieldEncoding, Boolean.class) { // from class: com.squareup.wire.ProtoAdapter.1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Boolean bool) {
                return 1;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Boolean decode(ProtoReader protoReader) throws IOException {
                int readVarint32 = protoReader.readVarint32();
                if (readVarint32 == 0) {
                    return Boolean.FALSE;
                }
                if (readVarint32 == 1) {
                    return Boolean.TRUE;
                }
                throw new IOException(String.format("Invalid boolean value 0x%02x", Integer.valueOf(readVarint32)));
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Boolean bool) throws IOException {
                protoWriter.writeVarint32(bool.booleanValue() ? 1 : 0);
            }
        };
        INT32 = new ProtoAdapter<Integer>(fieldEncoding, Integer.class) { // from class: com.squareup.wire.ProtoAdapter.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Integer decode(ProtoReader protoReader) throws IOException {
                return Integer.valueOf(protoReader.readVarint32());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Integer num) throws IOException {
                protoWriter.writeSignedVarint32(num.intValue());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Integer num) {
                return ProtoWriter.int32Size(num.intValue());
            }
        };
        UINT32 = new ProtoAdapter<Integer>(fieldEncoding, Integer.class) { // from class: com.squareup.wire.ProtoAdapter.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Integer decode(ProtoReader protoReader) throws IOException {
                return Integer.valueOf(protoReader.readVarint32());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Integer num) throws IOException {
                protoWriter.writeVarint32(num.intValue());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Integer num) {
                return ProtoWriter.varint32Size(num.intValue());
            }
        };
        SINT32 = new ProtoAdapter<Integer>(fieldEncoding, Integer.class) { // from class: com.squareup.wire.ProtoAdapter.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Integer decode(ProtoReader protoReader) throws IOException {
                return Integer.valueOf(ProtoWriter.decodeZigZag32(protoReader.readVarint32()));
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Integer num) throws IOException {
                protoWriter.writeVarint32(ProtoWriter.encodeZigZag32(num.intValue()));
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Integer num) {
                return ProtoWriter.varint32Size(ProtoWriter.encodeZigZag32(num.intValue()));
            }
        };
        FieldEncoding fieldEncoding2 = FieldEncoding.FIXED32;
        ProtoAdapter<Integer> protoAdapter = new ProtoAdapter<Integer>(fieldEncoding2, Integer.class) { // from class: com.squareup.wire.ProtoAdapter.5
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Integer num) {
                return 4;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Integer decode(ProtoReader protoReader) throws IOException {
                return Integer.valueOf(protoReader.readFixed32());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Integer num) throws IOException {
                protoWriter.writeFixed32(num.intValue());
            }
        };
        FIXED32 = protoAdapter;
        SFIXED32 = protoAdapter;
        INT64 = new ProtoAdapter<Long>(fieldEncoding, Long.class) { // from class: com.squareup.wire.ProtoAdapter.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Long decode(ProtoReader protoReader) throws IOException {
                return Long.valueOf(protoReader.readVarint64());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Long l10) throws IOException {
                protoWriter.writeVarint64(l10.longValue());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Long l10) {
                return ProtoWriter.varint64Size(l10.longValue());
            }
        };
        UINT64 = new ProtoAdapter<Long>(fieldEncoding, Long.class) { // from class: com.squareup.wire.ProtoAdapter.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Long decode(ProtoReader protoReader) throws IOException {
                return Long.valueOf(protoReader.readVarint64());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Long l10) throws IOException {
                protoWriter.writeVarint64(l10.longValue());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Long l10) {
                return ProtoWriter.varint64Size(l10.longValue());
            }
        };
        SINT64 = new ProtoAdapter<Long>(fieldEncoding, Long.class) { // from class: com.squareup.wire.ProtoAdapter.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Long decode(ProtoReader protoReader) throws IOException {
                return Long.valueOf(ProtoWriter.decodeZigZag64(protoReader.readVarint64()));
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Long l10) throws IOException {
                protoWriter.writeVarint64(ProtoWriter.encodeZigZag64(l10.longValue()));
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Long l10) {
                return ProtoWriter.varint64Size(ProtoWriter.encodeZigZag64(l10.longValue()));
            }
        };
        FieldEncoding fieldEncoding3 = FieldEncoding.FIXED64;
        ProtoAdapter<Long> protoAdapter2 = new ProtoAdapter<Long>(fieldEncoding3, Long.class) { // from class: com.squareup.wire.ProtoAdapter.9
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Long l10) {
                return 8;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Long decode(ProtoReader protoReader) throws IOException {
                return Long.valueOf(protoReader.readFixed64());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Long l10) throws IOException {
                protoWriter.writeFixed64(l10.longValue());
            }
        };
        FIXED64 = protoAdapter2;
        SFIXED64 = protoAdapter2;
        FLOAT = new ProtoAdapter<Float>(fieldEncoding2, Float.class) { // from class: com.squareup.wire.ProtoAdapter.10
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Float f10) {
                return 4;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Float decode(ProtoReader protoReader) throws IOException {
                return Float.valueOf(Float.intBitsToFloat(protoReader.readFixed32()));
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Float f10) throws IOException {
                protoWriter.writeFixed32(Float.floatToIntBits(f10.floatValue()));
            }
        };
        DOUBLE = new ProtoAdapter<Double>(fieldEncoding3, Double.class) { // from class: com.squareup.wire.ProtoAdapter.11
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Double d4) {
                return 8;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Double decode(ProtoReader protoReader) throws IOException {
                return Double.valueOf(Double.longBitsToDouble(protoReader.readFixed64()));
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Double d4) throws IOException {
                protoWriter.writeFixed64(Double.doubleToLongBits(d4.doubleValue()));
            }
        };
        FieldEncoding fieldEncoding4 = FieldEncoding.LENGTH_DELIMITED;
        STRING = new ProtoAdapter<String>(fieldEncoding4, String.class) { // from class: com.squareup.wire.ProtoAdapter.12
            @Override // com.squareup.wire.ProtoAdapter
            public String decode(ProtoReader protoReader) throws IOException {
                return protoReader.readString();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, String str) throws IOException {
                protoWriter.writeString(str);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(String str) {
                return ProtoWriter.utf8Length(str);
            }
        };
        BYTES = new ProtoAdapter<ByteString>(fieldEncoding4, ByteString.class) { // from class: com.squareup.wire.ProtoAdapter.13
            @Override // com.squareup.wire.ProtoAdapter
            public ByteString decode(ProtoReader protoReader) throws IOException {
                return protoReader.readBytes();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, ByteString byteString) throws IOException {
                protoWriter.writeBytes(byteString);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ByteString byteString) {
                return byteString.size();
            }
        };
    }

    public ProtoAdapter(FieldEncoding fieldEncoding, Class<?> cls) {
        this.fieldEncoding = fieldEncoding;
        this.javaType = cls;
    }

    private ProtoAdapter<List<E>> createPacked() {
        FieldEncoding fieldEncoding = this.fieldEncoding;
        FieldEncoding fieldEncoding2 = FieldEncoding.LENGTH_DELIMITED;
        if (fieldEncoding != fieldEncoding2) {
            return new ProtoAdapter<List<E>>(fieldEncoding2, List.class) { // from class: com.squareup.wire.ProtoAdapter.14
                @Override // com.squareup.wire.ProtoAdapter
                public /* bridge */ /* synthetic */ void encode(ProtoWriter protoWriter, Object obj) throws IOException {
                    encode(protoWriter, (List) ((List) obj));
                }

                @Override // com.squareup.wire.ProtoAdapter
                public /* bridge */ /* synthetic */ void encodeWithTag(ProtoWriter protoWriter, int i4, Object obj) throws IOException {
                    encodeWithTag(protoWriter, i4, (List) ((List) obj));
                }

                @Override // com.squareup.wire.ProtoAdapter
                public /* bridge */ /* synthetic */ int encodedSize(Object obj) {
                    return encodedSize((List) ((List) obj));
                }

                @Override // com.squareup.wire.ProtoAdapter
                public /* bridge */ /* synthetic */ int encodedSizeWithTag(int i4, Object obj) {
                    return encodedSizeWithTag(i4, (List) ((List) obj));
                }

                @Override // com.squareup.wire.ProtoAdapter
                public /* bridge */ /* synthetic */ Object redact(Object obj) {
                    return redact((List) ((List) obj));
                }

                @Override // com.squareup.wire.ProtoAdapter
                public List<E> decode(ProtoReader protoReader) throws IOException {
                    return Collections.singletonList(ProtoAdapter.this.decode(protoReader));
                }

                public void encode(ProtoWriter protoWriter, List<E> list) throws IOException {
                    int size = list.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        ProtoAdapter.this.encode(protoWriter, (ProtoWriter) list.get(i4));
                    }
                }

                public void encodeWithTag(ProtoWriter protoWriter, int i4, List<E> list) throws IOException {
                    if (list.isEmpty()) {
                        return;
                    }
                    super.encodeWithTag(protoWriter, i4, (int) list);
                }

                public int encodedSize(List<E> list) {
                    int size = list.size();
                    int i4 = 0;
                    for (int i10 = 0; i10 < size; i10++) {
                        i4 += ProtoAdapter.this.encodedSize(list.get(i10));
                    }
                    return i4;
                }

                public int encodedSizeWithTag(int i4, List<E> list) {
                    if (list.isEmpty()) {
                        return 0;
                    }
                    return super.encodedSizeWithTag(i4, (int) list);
                }

                public List<E> redact(List<E> list) {
                    return Collections.emptyList();
                }
            };
        }
        throw new IllegalArgumentException("Unable to pack a length-delimited type.");
    }

    private ProtoAdapter<List<E>> createRepeated() {
        return new ProtoAdapter<List<E>>(this.fieldEncoding, List.class) { // from class: com.squareup.wire.ProtoAdapter.15
            @Override // com.squareup.wire.ProtoAdapter
            public /* bridge */ /* synthetic */ void encode(ProtoWriter protoWriter, Object obj) throws IOException {
                encode(protoWriter, (List) ((List) obj));
            }

            @Override // com.squareup.wire.ProtoAdapter
            public /* bridge */ /* synthetic */ void encodeWithTag(ProtoWriter protoWriter, int i4, Object obj) throws IOException {
                encodeWithTag(protoWriter, i4, (List) ((List) obj));
            }

            @Override // com.squareup.wire.ProtoAdapter
            public /* bridge */ /* synthetic */ int encodedSize(Object obj) {
                return encodedSize((List) ((List) obj));
            }

            @Override // com.squareup.wire.ProtoAdapter
            public /* bridge */ /* synthetic */ int encodedSizeWithTag(int i4, Object obj) {
                return encodedSizeWithTag(i4, (List) ((List) obj));
            }

            @Override // com.squareup.wire.ProtoAdapter
            public /* bridge */ /* synthetic */ Object redact(Object obj) {
                return redact((List) ((List) obj));
            }

            @Override // com.squareup.wire.ProtoAdapter
            public List<E> decode(ProtoReader protoReader) throws IOException {
                return Collections.singletonList(ProtoAdapter.this.decode(protoReader));
            }

            public void encode(ProtoWriter protoWriter, List<E> list) {
                throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
            }

            public void encodeWithTag(ProtoWriter protoWriter, int i4, List<E> list) throws IOException {
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ProtoAdapter.this.encodeWithTag(protoWriter, i4, list.get(i10));
                }
            }

            public int encodedSize(List<E> list) {
                throw new UnsupportedOperationException("Repeated values can only be sized with a tag.");
            }

            public int encodedSizeWithTag(int i4, List<E> list) {
                int size = list.size();
                int i10 = 0;
                for (int i11 = 0; i11 < size; i11++) {
                    i10 += ProtoAdapter.this.encodedSizeWithTag(i4, list.get(i11));
                }
                return i10;
            }

            public List<E> redact(List<E> list) {
                return Collections.emptyList();
            }
        };
    }

    public static <M extends Message> ProtoAdapter<M> get(M m9) {
        return get(m9.getClass());
    }

    public static <E extends WireEnum> RuntimeEnumAdapter<E> newEnumAdapter(Class<E> cls) {
        return new RuntimeEnumAdapter<>(cls);
    }

    public static <K, V> ProtoAdapter<Map<K, V>> newMapAdapter(ProtoAdapter<K> protoAdapter, ProtoAdapter<V> protoAdapter2) {
        return new MapProtoAdapter(protoAdapter, protoAdapter2);
    }

    public static <M extends Message<M, B>, B extends Message.Builder<M, B>> ProtoAdapter<M> newMessageAdapter(Class<M> cls) {
        return RuntimeMessageAdapter.create(cls);
    }

    public final ProtoAdapter<List<E>> asPacked() {
        ProtoAdapter<List<E>> protoAdapter = this.packedAdapter;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        ProtoAdapter<List<E>> createPacked = createPacked();
        this.packedAdapter = createPacked;
        return createPacked;
    }

    public final ProtoAdapter<List<E>> asRepeated() {
        ProtoAdapter<List<E>> protoAdapter = this.repeatedAdapter;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        ProtoAdapter<List<E>> createRepeated = createRepeated();
        this.repeatedAdapter = createRepeated;
        return createRepeated;
    }

    public abstract E decode(ProtoReader protoReader) throws IOException;

    public final E decode(byte[] bArr) throws IOException {
        Preconditions.checkNotNull(bArr, "bytes == null");
        return decode(new Buffer().write(bArr));
    }

    public abstract void encode(ProtoWriter protoWriter, E e4) throws IOException;

    public final void encode(BufferedSink bufferedSink, E e4) throws IOException {
        Preconditions.checkNotNull(e4, "value == null");
        Preconditions.checkNotNull(bufferedSink, "sink == null");
        encode(new ProtoWriter(bufferedSink), (ProtoWriter) e4);
    }

    public void encodeWithTag(ProtoWriter protoWriter, int i4, E e4) throws IOException {
        if (e4 == null) {
            return;
        }
        protoWriter.writeTag(i4, this.fieldEncoding);
        if (this.fieldEncoding == FieldEncoding.LENGTH_DELIMITED) {
            protoWriter.writeVarint32(encodedSize(e4));
        }
        encode(protoWriter, (ProtoWriter) e4);
    }

    public abstract int encodedSize(E e4);

    public int encodedSizeWithTag(int i4, E e4) {
        if (e4 == null) {
            return 0;
        }
        int encodedSize = encodedSize(e4);
        if (this.fieldEncoding == FieldEncoding.LENGTH_DELIMITED) {
            encodedSize += ProtoWriter.varint32Size(encodedSize);
        }
        return encodedSize + ProtoWriter.tagSize(i4);
    }

    public E redact(E e4) {
        return null;
    }

    public String toString(E e4) {
        return e4.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public ProtoAdapter<?> withLabel(WireField.Label label) {
        if (label.isRepeated()) {
            if (label.isPacked()) {
                return asPacked();
            }
            return asRepeated();
        }
        return this;
    }

    public static <M> ProtoAdapter<M> get(Class<M> cls) {
        try {
            return (ProtoAdapter) cls.getField("ADAPTER").get(null);
        } catch (IllegalAccessException | NoSuchFieldException e4) {
            throw new IllegalArgumentException("failed to access " + cls.getName() + "#ADAPTER", e4);
        }
    }

    public final E decode(ByteString byteString) throws IOException {
        Preconditions.checkNotNull(byteString, "bytes == null");
        return decode(new Buffer().write(byteString));
    }

    public static ProtoAdapter<?> get(String str) {
        try {
            int indexOf = str.indexOf(35);
            String substring = str.substring(0, indexOf);
            return (ProtoAdapter) Class.forName(substring).getField(str.substring(indexOf + 1)).get(null);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e4) {
            throw new IllegalArgumentException("failed to access " + str, e4);
        }
    }

    public final byte[] encode(E e4) {
        Preconditions.checkNotNull(e4, "value == null");
        Buffer buffer = new Buffer();
        try {
            encode((BufferedSink) buffer, (Buffer) e4);
            return buffer.readByteArray();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    public final E decode(InputStream inputStream) throws IOException {
        Preconditions.checkNotNull(inputStream, "stream == null");
        return decode(Okio.buffer(Okio.source(inputStream)));
    }

    public final E decode(BufferedSource bufferedSource) throws IOException {
        Preconditions.checkNotNull(bufferedSource, "source == null");
        return decode(new ProtoReader(bufferedSource));
    }

    public final void encode(OutputStream outputStream, E e4) throws IOException {
        Preconditions.checkNotNull(e4, "value == null");
        Preconditions.checkNotNull(outputStream, "stream == null");
        BufferedSink buffer = Okio.buffer(Okio.sink(outputStream));
        encode(buffer, (BufferedSink) e4);
        buffer.emit();
    }
}
