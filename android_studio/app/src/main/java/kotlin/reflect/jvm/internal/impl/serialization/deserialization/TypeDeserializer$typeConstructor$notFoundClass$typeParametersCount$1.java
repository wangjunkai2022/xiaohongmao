package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TypeDeserializer.kt */
/* loaded from: classes4.dex */
public final class TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$1 extends Lambda implements Function1<ProtoBuf.Type, ProtoBuf.Type> {
    final /* synthetic */ TypeDeserializer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$1(TypeDeserializer typeDeserializer) {
        super(1);
        this.this$0 = typeDeserializer;
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final ProtoBuf.Type invoke(@g ProtoBuf.Type it) {
        DeserializationContext deserializationContext;
        Intrinsics.checkNotNullParameter(it, "it");
        deserializationContext = this.this$0.f84767c;
        return ProtoTypeTableUtilKt.outerType(it, deserializationContext.getTypeTable());
    }
}
