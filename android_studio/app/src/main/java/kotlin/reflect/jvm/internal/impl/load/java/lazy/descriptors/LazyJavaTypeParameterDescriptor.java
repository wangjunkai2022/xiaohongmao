package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractLazyTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import m8.g;

/* compiled from: LazyJavaTypeParameterDescriptor.kt */
/* loaded from: classes4.dex */
public final class LazyJavaTypeParameterDescriptor extends AbstractLazyTypeParameterDescriptor {
    @g

    /* renamed from: c  reason: collision with root package name */
    private final LazyJavaResolverContext f84762c;
    @g
    private final JavaTypeParameter javaTypeParameter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaTypeParameterDescriptor(@g LazyJavaResolverContext c10, @g JavaTypeParameter javaTypeParameter, int i4, @g DeclarationDescriptor containingDeclaration) {
        super(c10.getStorageManager(), containingDeclaration, new LazyJavaAnnotations(c10, javaTypeParameter, false, 4, null), javaTypeParameter.getName(), Variance.INVARIANT, false, i4, SourceElement.NO_SOURCE, c10.getComponents().getSupertypeLoopChecker());
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(javaTypeParameter, "javaTypeParameter");
        Intrinsics.checkNotNullParameter(containingDeclaration, "containingDeclaration");
        this.f84762c = c10;
        this.javaTypeParameter = javaTypeParameter;
    }

    private final List<KotlinType> computeNotEnhancedBounds() {
        int collectionSizeOrDefault;
        List<KotlinType> listOf;
        Collection<JavaClassifierType> upperBounds = this.javaTypeParameter.getUpperBounds();
        if (upperBounds.isEmpty()) {
            SimpleType anyType = this.f84762c.getModule().getBuiltIns().getAnyType();
            Intrinsics.checkNotNullExpressionValue(anyType, "c.module.builtIns.anyType");
            SimpleType nullableAnyType = this.f84762c.getModule().getBuiltIns().getNullableAnyType();
            Intrinsics.checkNotNullExpressionValue(nullableAnyType, "c.module.builtIns.nullableAnyType");
            listOf = CollectionsKt__CollectionsJVMKt.listOf(KotlinTypeFactory.flexibleType(anyType, nullableAnyType));
            return listOf;
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(upperBounds, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (JavaClassifierType javaClassifierType : upperBounds) {
            arrayList.add(this.f84762c.getTypeResolver().transformJavaType(javaClassifierType, JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, false, this, 1, null)));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    @g
    protected List<KotlinType> processBoundsWithoutCycles(@g List<? extends KotlinType> bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        return this.f84762c.getComponents().getSignatureEnhancement().enhanceTypeParameterBounds(this, bounds, this.f84762c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    protected void reportSupertypeLoopError(@g KotlinType type) {
        Intrinsics.checkNotNullParameter(type, "type");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    @g
    protected List<KotlinType> resolveUpperBounds() {
        return computeNotEnhancedBounds();
    }
}
