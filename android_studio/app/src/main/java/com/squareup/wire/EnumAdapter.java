package com.squareup.wire;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
import java.io.IOException;

/* loaded from: classes3.dex */
public abstract class EnumAdapter<E extends WireEnum> extends ProtoAdapter<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    public EnumAdapter(Class<E> cls) {
        super(FieldEncoding.VARINT, cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ void encode(ProtoWriter protoWriter, Object obj) throws IOException {
        encode(protoWriter, (ProtoWriter) ((WireEnum) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.wire.ProtoAdapter
    public /* bridge */ /* synthetic */ int encodedSize(Object obj) {
        return encodedSize((EnumAdapter<E>) ((WireEnum) obj));
    }

    protected abstract E fromValue(int i4);

    @Override // com.squareup.wire.ProtoAdapter
    public final E decode(ProtoReader protoReader) throws IOException {
        int readVarint32 = protoReader.readVarint32();
        E fromValue = fromValue(readVarint32);
        if (fromValue != null) {
            return fromValue;
        }
        throw new ProtoAdapter.EnumConstantNotFoundException(readVarint32, this.javaType);
    }

    public final void encode(ProtoWriter protoWriter, E e4) throws IOException {
        protoWriter.writeVarint32(e4.getValue());
    }

    public final int encodedSize(E e4) {
        return ProtoWriter.varint32Size(e4.getValue());
    }
}
