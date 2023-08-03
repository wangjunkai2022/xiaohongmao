package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Set;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeserializedMemberScope.kt */
/* loaded from: classes4.dex */
public final class DeserializedMemberScope$classifierNamesLazy$2 extends Lambda implements Function0<Set<? extends Name>> {
    final /* synthetic */ DeserializedMemberScope this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedMemberScope$classifierNamesLazy$2(DeserializedMemberScope deserializedMemberScope) {
        super(0);
        this.this$0 = deserializedMemberScope;
    }

    @Override // kotlin.jvm.functions.Function0
    @h
    public final Set<? extends Name> invoke() {
        DeserializedMemberScope.Implementation implementation;
        Set plus;
        Set<? extends Name> plus2;
        Set<Name> nonDeclaredClassifierNames = this.this$0.getNonDeclaredClassifierNames();
        if (nonDeclaredClassifierNames == null) {
            return null;
        }
        Set<Name> classNames$deserialization = this.this$0.getClassNames$deserialization();
        implementation = this.this$0.impl;
        plus = SetsKt___SetsKt.plus((Set) classNames$deserialization, (Iterable) implementation.getTypeAliasNames());
        plus2 = SetsKt___SetsKt.plus(plus, (Iterable) nonDeclaredClassifierNames);
        return plus2;
    }
}
