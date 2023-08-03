package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import m8.g;
import m8.h;

/* compiled from: ProtoBufUtil.kt */
/* loaded from: classes4.dex */
public final class ProtoBufUtilKt {
    /* JADX WARN: Multi-variable type inference failed */
    @h
    public static final <M extends GeneratedMessageLite.ExtendableMessage<M>, T> T getExtensionOrNull(@g GeneratedMessageLite.ExtendableMessage<M> extendableMessage, @g GeneratedMessageLite.GeneratedExtension<M, T> extension) {
        Intrinsics.checkNotNullParameter(extendableMessage, "<this>");
        Intrinsics.checkNotNullParameter(extension, "extension");
        if (extendableMessage.hasExtension(extension)) {
            return (T) extendableMessage.getExtension(extension);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h
    public static final <M extends GeneratedMessageLite.ExtendableMessage<M>, T> T getExtensionOrNull(@g GeneratedMessageLite.ExtendableMessage<M> extendableMessage, @g GeneratedMessageLite.GeneratedExtension<M, List<T>> extension, int i4) {
        Intrinsics.checkNotNullParameter(extendableMessage, "<this>");
        Intrinsics.checkNotNullParameter(extension, "extension");
        if (i4 < extendableMessage.getExtensionCount(extension)) {
            return (T) extendableMessage.getExtension(extension, i4);
        }
        return null;
    }
}
