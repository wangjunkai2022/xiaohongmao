package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Map;
import java.util.Set;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeserializedMemberScope.kt */
/* loaded from: classes4.dex */
public final class DeserializedMemberScope$OptimizedImplementation$variableNames$2 extends Lambda implements Function0<Set<? extends Name>> {
    final /* synthetic */ DeserializedMemberScope.OptimizedImplementation this$0;
    final /* synthetic */ DeserializedMemberScope this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedMemberScope$OptimizedImplementation$variableNames$2(DeserializedMemberScope.OptimizedImplementation optimizedImplementation, DeserializedMemberScope deserializedMemberScope) {
        super(0);
        this.this$0 = optimizedImplementation;
        this.this$1 = deserializedMemberScope;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final Set<? extends Name> invoke() {
        Map map;
        Set<? extends Name> plus;
        map = this.this$0.propertyProtosBytes;
        plus = SetsKt___SetsKt.plus(map.keySet(), (Iterable) this.this$1.getNonDeclaredVariableNames());
        return plus;
    }
}
