package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.List;

/* loaded from: classes4.dex */
public interface LazyStringList extends ProtocolStringList {
    void add(ByteString byteString);

    ByteString getByteString(int i4);

    List<?> getUnderlyingElements();

    LazyStringList getUnmodifiableView();
}
