package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptorKt;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import m8.g;
import m8.h;

/* compiled from: KotlinTypeFactory.kt */
/* loaded from: classes4.dex */
public final class KotlinTypeFactory {
    @g
    public static final KotlinTypeFactory INSTANCE = new KotlinTypeFactory();
    @g
    private static final Function1<KotlinTypeRefiner, SimpleType> EMPTY_REFINED_TYPE_FACTORY = KotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1.INSTANCE;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: KotlinTypeFactory.kt */
    /* loaded from: classes4.dex */
    public static final class ExpandedTypeOrRefinedConstructor {
        @h
        private final SimpleType expandedType;
        @h
        private final TypeConstructor refinedConstructor;

        public ExpandedTypeOrRefinedConstructor(@h SimpleType simpleType, @h TypeConstructor typeConstructor) {
            this.expandedType = simpleType;
            this.refinedConstructor = typeConstructor;
        }

        @h
        public final SimpleType getExpandedType() {
            return this.expandedType;
        }

        @h
        public final TypeConstructor getRefinedConstructor() {
            return this.refinedConstructor;
        }
    }

    private KotlinTypeFactory() {
    }

    @JvmStatic
    @g
    public static final SimpleType computeExpandedType(@g TypeAliasDescriptor typeAliasDescriptor, @g List<? extends TypeProjection> arguments) {
        Intrinsics.checkNotNullParameter(typeAliasDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        return new TypeAliasExpander(TypeAliasExpansionReportStrategy.DO_NOTHING.INSTANCE, false).expand(TypeAliasExpansion.Companion.create(null, typeAliasDescriptor, arguments), TypeAttributes.Companion.getEmpty());
    }

    private final MemberScope computeMemberScope(TypeConstructor typeConstructor, List<? extends TypeProjection> list, KotlinTypeRefiner kotlinTypeRefiner) {
        ClassifierDescriptor declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        if (declarationDescriptor instanceof TypeParameterDescriptor) {
            return ((TypeParameterDescriptor) declarationDescriptor).getDefaultType().getMemberScope();
        }
        if (declarationDescriptor instanceof ClassDescriptor) {
            if (kotlinTypeRefiner == null) {
                kotlinTypeRefiner = DescriptorUtilsKt.getKotlinTypeRefiner(DescriptorUtilsKt.getModule(declarationDescriptor));
            }
            if (list.isEmpty()) {
                return ModuleAwareClassDescriptorKt.getRefinedUnsubstitutedMemberScopeIfPossible((ClassDescriptor) declarationDescriptor, kotlinTypeRefiner);
            }
            return ModuleAwareClassDescriptorKt.getRefinedMemberScopeIfPossible((ClassDescriptor) declarationDescriptor, TypeConstructorSubstitution.Companion.create(typeConstructor, list), kotlinTypeRefiner);
        } else if (declarationDescriptor instanceof TypeAliasDescriptor) {
            ErrorScopeKind errorScopeKind = ErrorScopeKind.SCOPE_FOR_ABBREVIATION_TYPE;
            String name = ((TypeAliasDescriptor) declarationDescriptor).getName().toString();
            Intrinsics.checkNotNullExpressionValue(name, "descriptor.name.toString()");
            return ErrorUtils.createErrorScope(errorScopeKind, true, name);
        } else if (typeConstructor instanceof IntersectionTypeConstructor) {
            return ((IntersectionTypeConstructor) typeConstructor).createScopeForKotlinType();
        } else {
            throw new IllegalStateException("Unsupported classifier: " + declarationDescriptor + " for constructor: " + typeConstructor);
        }
    }

    @JvmStatic
    @g
    public static final UnwrappedType flexibleType(@g SimpleType lowerBound, @g SimpleType upperBound) {
        Intrinsics.checkNotNullParameter(lowerBound, "lowerBound");
        Intrinsics.checkNotNullParameter(upperBound, "upperBound");
        return Intrinsics.areEqual(lowerBound, upperBound) ? lowerBound : new FlexibleTypeImpl(lowerBound, upperBound);
    }

    @JvmStatic
    @g
    public static final SimpleType integerLiteralType(@g TypeAttributes attributes, @g IntegerLiteralTypeConstructor constructor, boolean z9) {
        List emptyList;
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return simpleTypeWithNonTrivialMemberScope(attributes, constructor, emptyList, z9, ErrorUtils.createErrorScope(ErrorScopeKind.INTEGER_LITERAL_TYPE_SCOPE, true, "unknown integer literal type"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ExpandedTypeOrRefinedConstructor refineConstructor(TypeConstructor typeConstructor, KotlinTypeRefiner kotlinTypeRefiner, List<? extends TypeProjection> list) {
        ClassifierDescriptor refineDescriptor;
        ClassifierDescriptor declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        if (declarationDescriptor == null || (refineDescriptor = kotlinTypeRefiner.refineDescriptor(declarationDescriptor)) == null) {
            return null;
        }
        if (refineDescriptor instanceof TypeAliasDescriptor) {
            return new ExpandedTypeOrRefinedConstructor(computeExpandedType((TypeAliasDescriptor) refineDescriptor, list), null);
        }
        TypeConstructor refine = refineDescriptor.getTypeConstructor().refine(kotlinTypeRefiner);
        Intrinsics.checkNotNullExpressionValue(refine, "descriptor.typeConstruct…refine(kotlinTypeRefiner)");
        return new ExpandedTypeOrRefinedConstructor(null, refine);
    }

    @JvmStatic
    @g
    public static final SimpleType simpleNotNullType(@g TypeAttributes attributes, @g ClassDescriptor descriptor, @g List<? extends TypeProjection> arguments) {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        TypeConstructor typeConstructor = descriptor.getTypeConstructor();
        Intrinsics.checkNotNullExpressionValue(typeConstructor, "descriptor.typeConstructor");
        return simpleType$default(attributes, typeConstructor, (List) arguments, false, (KotlinTypeRefiner) null, 16, (Object) null);
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final SimpleType simpleType(@g TypeAttributes attributes, @g TypeConstructor constructor, @g List<? extends TypeProjection> arguments, boolean z9, @h KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        if (attributes.isEmpty() && arguments.isEmpty() && !z9 && constructor.getDeclarationDescriptor() != null) {
            ClassifierDescriptor declarationDescriptor = constructor.getDeclarationDescriptor();
            Intrinsics.checkNotNull(declarationDescriptor);
            SimpleType defaultType = declarationDescriptor.getDefaultType();
            Intrinsics.checkNotNullExpressionValue(defaultType, "constructor.declarationDescriptor!!.defaultType");
            return defaultType;
        }
        return simpleTypeWithNonTrivialMemberScope(attributes, constructor, arguments, z9, INSTANCE.computeMemberScope(constructor, arguments, kotlinTypeRefiner), new KotlinTypeFactory$simpleType$1(constructor, arguments, attributes, z9));
    }

    public static /* synthetic */ SimpleType simpleType$default(TypeAttributes typeAttributes, TypeConstructor typeConstructor, List list, boolean z9, KotlinTypeRefiner kotlinTypeRefiner, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            kotlinTypeRefiner = null;
        }
        return simpleType(typeAttributes, typeConstructor, list, z9, kotlinTypeRefiner);
    }

    @JvmStatic
    @g
    public static final SimpleType simpleTypeWithNonTrivialMemberScope(@g TypeAttributes attributes, @g TypeConstructor constructor, @g List<? extends TypeProjection> arguments, boolean z9, @g MemberScope memberScope) {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        Intrinsics.checkNotNullParameter(memberScope, "memberScope");
        SimpleTypeImpl simpleTypeImpl = new SimpleTypeImpl(constructor, arguments, z9, memberScope, new KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1(constructor, arguments, attributes, z9, memberScope));
        return attributes.isEmpty() ? simpleTypeImpl : new SimpleTypeWithAttributes(simpleTypeImpl, attributes);
    }

    public static /* synthetic */ SimpleType simpleType$default(SimpleType simpleType, TypeAttributes typeAttributes, TypeConstructor typeConstructor, List list, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            typeAttributes = simpleType.getAttributes();
        }
        if ((i4 & 4) != 0) {
            typeConstructor = simpleType.getConstructor();
        }
        if ((i4 & 8) != 0) {
            list = simpleType.getArguments();
        }
        if ((i4 & 16) != 0) {
            z9 = simpleType.isMarkedNullable();
        }
        return simpleType(simpleType, typeAttributes, typeConstructor, list, z9);
    }

    @JvmStatic
    @g
    public static final SimpleType simpleType(@g SimpleType baseType, @g TypeAttributes annotations, @g TypeConstructor constructor, @g List<? extends TypeProjection> arguments, boolean z9) {
        Intrinsics.checkNotNullParameter(baseType, "baseType");
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        return simpleType$default(annotations, constructor, arguments, z9, (KotlinTypeRefiner) null, 16, (Object) null);
    }

    @JvmStatic
    @g
    public static final SimpleType simpleTypeWithNonTrivialMemberScope(@g TypeAttributes attributes, @g TypeConstructor constructor, @g List<? extends TypeProjection> arguments, boolean z9, @g MemberScope memberScope, @g Function1<? super KotlinTypeRefiner, ? extends SimpleType> refinedTypeFactory) {
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        Intrinsics.checkNotNullParameter(memberScope, "memberScope");
        Intrinsics.checkNotNullParameter(refinedTypeFactory, "refinedTypeFactory");
        SimpleTypeImpl simpleTypeImpl = new SimpleTypeImpl(constructor, arguments, z9, memberScope, refinedTypeFactory);
        return attributes.isEmpty() ? simpleTypeImpl : new SimpleTypeWithAttributes(simpleTypeImpl, attributes);
    }
}
