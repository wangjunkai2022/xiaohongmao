package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.NameResolverUtilKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeserializedMemberScope.kt */
/* loaded from: classes4.dex */
public final class DeserializedMemberScope$NoReorderImplementation$functionNames$2 extends Lambda implements Function0<Set<? extends Name>> {
    final /* synthetic */ DeserializedMemberScope.NoReorderImplementation this$0;
    final /* synthetic */ DeserializedMemberScope this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedMemberScope$NoReorderImplementation$functionNames$2(DeserializedMemberScope.NoReorderImplementation noReorderImplementation, DeserializedMemberScope deserializedMemberScope) {
        super(0);
        this.this$0 = noReorderImplementation;
        this.this$1 = deserializedMemberScope;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final Set<? extends Name> invoke() {
        List<MessageLite> list;
        Set<? extends Name> plus;
        DeserializedMemberScope.NoReorderImplementation noReorderImplementation = this.this$0;
        list = noReorderImplementation.functionList;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        DeserializedMemberScope deserializedMemberScope = noReorderImplementation.this$0;
        for (MessageLite messageLite : list) {
            linkedHashSet.add(NameResolverUtilKt.getName(deserializedMemberScope.getC().getNameResolver(), ((ProtoBuf.Function) messageLite).getName()));
        }
        plus = SetsKt___SetsKt.plus((Set) linkedHashSet, (Iterable) this.this$1.getNonDeclaredFunctionNames());
        return plus;
    }
}
