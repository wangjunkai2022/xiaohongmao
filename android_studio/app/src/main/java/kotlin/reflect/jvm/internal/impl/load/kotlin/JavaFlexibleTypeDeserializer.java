package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.FlexibleTypeDeserializer;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import m8.g;

/* compiled from: JavaFlexibleTypeDeserializer.kt */
/* loaded from: classes4.dex */
public final class JavaFlexibleTypeDeserializer implements FlexibleTypeDeserializer {
    @g
    public static final JavaFlexibleTypeDeserializer INSTANCE = new JavaFlexibleTypeDeserializer();

    private JavaFlexibleTypeDeserializer() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.FlexibleTypeDeserializer
    @g
    public KotlinType create(@g ProtoBuf.Type proto, @g String flexibleId, @g SimpleType lowerBound, @g SimpleType upperBound) {
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(flexibleId, "flexibleId");
        Intrinsics.checkNotNullParameter(lowerBound, "lowerBound");
        Intrinsics.checkNotNullParameter(upperBound, "upperBound");
        if (Intrinsics.areEqual(flexibleId, "kotlin.jvm.PlatformType")) {
            if (proto.hasExtension(JvmProtoBuf.isRaw)) {
                return new RawTypeImpl(lowerBound, upperBound);
            }
            return KotlinTypeFactory.flexibleType(lowerBound, upperBound);
        }
        return ErrorUtils.createErrorType(ErrorTypeKind.ERROR_FLEXIBLE_TYPE, flexibleId, lowerBound.toString(), upperBound.toString());
    }
}
