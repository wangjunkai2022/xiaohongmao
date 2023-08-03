package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.g;

/* compiled from: FlexibleTypeDeserializer.kt */
/* loaded from: classes4.dex */
public interface FlexibleTypeDeserializer {

    /* compiled from: FlexibleTypeDeserializer.kt */
    /* loaded from: classes4.dex */
    public static final class ThrowException implements FlexibleTypeDeserializer {
        @g
        public static final ThrowException INSTANCE = new ThrowException();

        private ThrowException() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.FlexibleTypeDeserializer
        @g
        public KotlinType create(@g ProtoBuf.Type proto, @g String flexibleId, @g SimpleType lowerBound, @g SimpleType upperBound) {
            Intrinsics.checkNotNullParameter(proto, "proto");
            Intrinsics.checkNotNullParameter(flexibleId, "flexibleId");
            Intrinsics.checkNotNullParameter(lowerBound, "lowerBound");
            Intrinsics.checkNotNullParameter(upperBound, "upperBound");
            throw new IllegalArgumentException("This method should not be used.");
        }
    }

    @g
    KotlinType create(@g ProtoBuf.Type type, @g String str, @g SimpleType simpleType, @g SimpleType simpleType2);
}
