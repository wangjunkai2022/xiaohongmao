package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KotlinTypeFactory.kt */
/* loaded from: classes4.dex */
public final class KotlinTypeFactory$simpleType$1 extends Lambda implements Function1<KotlinTypeRefiner, SimpleType> {
    final /* synthetic */ List<TypeProjection> $arguments;
    final /* synthetic */ TypeAttributes $attributes;
    final /* synthetic */ TypeConstructor $constructor;
    final /* synthetic */ boolean $nullable;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KotlinTypeFactory$simpleType$1(TypeConstructor typeConstructor, List<? extends TypeProjection> list, TypeAttributes typeAttributes, boolean z9) {
        super(1);
        this.$constructor = typeConstructor;
        this.$arguments = list;
        this.$attributes = typeAttributes;
        this.$nullable = z9;
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final SimpleType invoke(@g KotlinTypeRefiner refiner) {
        KotlinTypeFactory.ExpandedTypeOrRefinedConstructor refineConstructor;
        Intrinsics.checkNotNullParameter(refiner, "refiner");
        refineConstructor = KotlinTypeFactory.INSTANCE.refineConstructor(this.$constructor, refiner, this.$arguments);
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
        return KotlinTypeFactory.simpleType(typeAttributes, refinedConstructor, this.$arguments, this.$nullable, refiner);
    }
}
