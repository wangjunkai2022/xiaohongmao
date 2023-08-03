package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KotlinTypeFactory.kt */
/* loaded from: classes4.dex */
public final class KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1 extends Lambda implements Function1<KotlinTypeRefiner, SimpleType> {
    final /* synthetic */ List<TypeProjection> $arguments;
    final /* synthetic */ TypeAttributes $attributes;
    final /* synthetic */ TypeConstructor $constructor;
    final /* synthetic */ MemberScope $memberScope;
    final /* synthetic */ boolean $nullable;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1(TypeConstructor typeConstructor, List<? extends TypeProjection> list, TypeAttributes typeAttributes, boolean z9, MemberScope memberScope) {
        super(1);
        this.$constructor = typeConstructor;
        this.$arguments = list;
        this.$attributes = typeAttributes;
        this.$nullable = z9;
        this.$memberScope = memberScope;
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final SimpleType invoke(@g KotlinTypeRefiner kotlinTypeRefiner) {
        KotlinTypeFactory.ExpandedTypeOrRefinedConstructor refineConstructor;
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        refineConstructor = KotlinTypeFactory.INSTANCE.refineConstructor(this.$constructor, kotlinTypeRefiner, this.$arguments);
        if (refineConstructor == null) {
            return null;
        }
        SimpleType expandedType = refineConstructor.getExpandedType();
        if (expandedType != null) {
            return expandedType;
        }
        TypeAttributes typeAttributes = this.$attributes;
        TypeConstructor refinedConstructor = refineConstructor.getRefinedConstructor();
        Intrinsics.checkNotNull(refinedConstructor);
        return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(typeAttributes, refinedConstructor, this.$arguments, this.$nullable, this.$memberScope);
    }
}
