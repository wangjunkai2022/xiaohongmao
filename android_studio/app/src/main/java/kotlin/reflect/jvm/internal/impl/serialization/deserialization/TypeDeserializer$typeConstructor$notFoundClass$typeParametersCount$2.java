package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TypeDeserializer.kt */
/* loaded from: classes4.dex */
public final class TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$2 extends Lambda implements Function1<ProtoBuf.Type, Integer> {
    public static final TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$2 INSTANCE = new TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$2();

    TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Integer invoke(@g ProtoBuf.Type it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Integer.valueOf(it.getArgumentCount());
    }
}
