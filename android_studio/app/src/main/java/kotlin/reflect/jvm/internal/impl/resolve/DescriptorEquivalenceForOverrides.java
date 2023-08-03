package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;
import m8.h;

/* compiled from: DescriptorEquivalenceForOverrides.kt */
/* loaded from: classes4.dex */
public final class DescriptorEquivalenceForOverrides {
    @g
    public static final DescriptorEquivalenceForOverrides INSTANCE = new DescriptorEquivalenceForOverrides();

    private DescriptorEquivalenceForOverrides() {
    }

    public static /* synthetic */ boolean areCallableDescriptorsEquivalent$default(DescriptorEquivalenceForOverrides descriptorEquivalenceForOverrides, CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2, boolean z9, boolean z10, boolean z11, KotlinTypeRefiner kotlinTypeRefiner, int i4, Object obj) {
        return descriptorEquivalenceForOverrides.areCallableDescriptorsEquivalent(callableDescriptor, callableDescriptor2, z9, (i4 & 8) != 0 ? true : z10, (i4 & 16) != 0 ? false : z11, kotlinTypeRefiner);
    }

    private final boolean areClassesEquivalent(ClassDescriptor classDescriptor, ClassDescriptor classDescriptor2) {
        return Intrinsics.areEqual(classDescriptor.getTypeConstructor(), classDescriptor2.getTypeConstructor());
    }

    public static /* synthetic */ boolean areEquivalent$default(DescriptorEquivalenceForOverrides descriptorEquivalenceForOverrides, DeclarationDescriptor declarationDescriptor, DeclarationDescriptor declarationDescriptor2, boolean z9, boolean z10, int i4, Object obj) {
        if ((i4 & 8) != 0) {
            z10 = true;
        }
        return descriptorEquivalenceForOverrides.areEquivalent(declarationDescriptor, declarationDescriptor2, z9, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean areTypeParametersEquivalent$default(DescriptorEquivalenceForOverrides descriptorEquivalenceForOverrides, TypeParameterDescriptor typeParameterDescriptor, TypeParameterDescriptor typeParameterDescriptor2, boolean z9, Function2 function2, int i4, Object obj) {
        if ((i4 & 8) != 0) {
            function2 = DescriptorEquivalenceForOverrides$areTypeParametersEquivalent$1.INSTANCE;
        }
        return descriptorEquivalenceForOverrides.areTypeParametersEquivalent(typeParameterDescriptor, typeParameterDescriptor2, z9, function2);
    }

    private final boolean ownersEquivalent(DeclarationDescriptor declarationDescriptor, DeclarationDescriptor declarationDescriptor2, Function2<? super DeclarationDescriptor, ? super DeclarationDescriptor, Boolean> function2, boolean z9) {
        DeclarationDescriptor containingDeclaration = declarationDescriptor.getContainingDeclaration();
        DeclarationDescriptor containingDeclaration2 = declarationDescriptor2.getContainingDeclaration();
        if (!(containingDeclaration instanceof CallableMemberDescriptor) && !(containingDeclaration2 instanceof CallableMemberDescriptor)) {
            return areEquivalent$default(this, containingDeclaration, containingDeclaration2, z9, false, 8, null);
        }
        return function2.invoke(containingDeclaration, containingDeclaration2).booleanValue();
    }

    private final SourceElement singleSource(CallableDescriptor callableDescriptor) {
        Object singleOrNull;
        while (callableDescriptor instanceof CallableMemberDescriptor) {
            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) callableDescriptor;
            if (callableMemberDescriptor.getKind() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                break;
            }
            Collection<? extends CallableMemberDescriptor> overriddenDescriptors = callableMemberDescriptor.getOverriddenDescriptors();
            Intrinsics.checkNotNullExpressionValue(overriddenDescriptors, "overriddenDescriptors");
            singleOrNull = CollectionsKt___CollectionsKt.singleOrNull(overriddenDescriptors);
            callableDescriptor = (CallableMemberDescriptor) singleOrNull;
            if (callableDescriptor == null) {
                return null;
            }
        }
        return callableDescriptor.getSource();
    }

    public final boolean areCallableDescriptorsEquivalent(@g final CallableDescriptor a10, @g final CallableDescriptor b10, final boolean z9, boolean z10, boolean z11, @g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        if (Intrinsics.areEqual(a10, b10)) {
            return true;
        }
        if (Intrinsics.areEqual(a10.getName(), b10.getName())) {
            if (z10 && (a10 instanceof MemberDescriptor) && (b10 instanceof MemberDescriptor) && ((MemberDescriptor) a10).isExpect() != ((MemberDescriptor) b10).isExpect()) {
                return false;
            }
            if ((!Intrinsics.areEqual(a10.getContainingDeclaration(), b10.getContainingDeclaration()) || (z9 && Intrinsics.areEqual(singleSource(a10), singleSource(b10)))) && !DescriptorUtils.isLocal(a10) && !DescriptorUtils.isLocal(b10) && ownersEquivalent(a10, b10, DescriptorEquivalenceForOverrides$areCallableDescriptorsEquivalent$1.INSTANCE, z9)) {
                OverridingUtil create = OverridingUtil.create(kotlinTypeRefiner, new KotlinTypeChecker.TypeConstructorEquality() { // from class: kotlin.reflect.jvm.internal.impl.resolve.DescriptorEquivalenceForOverrides$areCallableDescriptorsEquivalent$overridingUtil$1

                    /* compiled from: DescriptorEquivalenceForOverrides.kt */
                    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.DescriptorEquivalenceForOverrides$areCallableDescriptorsEquivalent$overridingUtil$1$1  reason: invalid class name */
                    /* loaded from: classes4.dex */
                    static final class AnonymousClass1 extends Lambda implements Function2<DeclarationDescriptor, DeclarationDescriptor, Boolean> {
                        final /* synthetic */ CallableDescriptor $a;
                        final /* synthetic */ CallableDescriptor $b;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
                            super(2);
                            this.$a = callableDescriptor;
                            this.$b = callableDescriptor2;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        @g
                        public final Boolean invoke(@h DeclarationDescriptor declarationDescriptor, @h DeclarationDescriptor declarationDescriptor2) {
                            return Boolean.valueOf(Intrinsics.areEqual(declarationDescriptor, this.$a) && Intrinsics.areEqual(declarationDescriptor2, this.$b));
                        }
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker.TypeConstructorEquality
                    public final boolean equals(@g TypeConstructor c12, @g TypeConstructor c22) {
                        Intrinsics.checkNotNullParameter(c12, "c1");
                        Intrinsics.checkNotNullParameter(c22, "c2");
                        if (Intrinsics.areEqual(c12, c22)) {
                            return true;
                        }
                        ClassifierDescriptor declarationDescriptor = c12.getDeclarationDescriptor();
                        ClassifierDescriptor declarationDescriptor2 = c22.getDeclarationDescriptor();
                        if ((declarationDescriptor instanceof TypeParameterDescriptor) && (declarationDescriptor2 instanceof TypeParameterDescriptor)) {
                            return DescriptorEquivalenceForOverrides.INSTANCE.areTypeParametersEquivalent((TypeParameterDescriptor) declarationDescriptor, (TypeParameterDescriptor) declarationDescriptor2, z9, new AnonymousClass1(a10, b10));
                        }
                        return false;
                    }
                });
                Intrinsics.checkNotNullExpressionValue(create, "a: CallableDescriptor,\n …= a && y == b }\n        }");
                OverridingUtil.OverrideCompatibilityInfo.Result result = create.isOverridableBy(a10, b10, null, !z11).getResult();
                OverridingUtil.OverrideCompatibilityInfo.Result result2 = OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE;
                return result == result2 && create.isOverridableBy(b10, a10, null, z11 ^ true).getResult() == result2;
            }
            return false;
        }
        return false;
    }

    public final boolean areEquivalent(@h DeclarationDescriptor declarationDescriptor, @h DeclarationDescriptor declarationDescriptor2, boolean z9, boolean z10) {
        if ((declarationDescriptor instanceof ClassDescriptor) && (declarationDescriptor2 instanceof ClassDescriptor)) {
            return areClassesEquivalent((ClassDescriptor) declarationDescriptor, (ClassDescriptor) declarationDescriptor2);
        }
        if ((declarationDescriptor instanceof TypeParameterDescriptor) && (declarationDescriptor2 instanceof TypeParameterDescriptor)) {
            return areTypeParametersEquivalent$default(this, (TypeParameterDescriptor) declarationDescriptor, (TypeParameterDescriptor) declarationDescriptor2, z9, null, 8, null);
        }
        if ((declarationDescriptor instanceof CallableDescriptor) && (declarationDescriptor2 instanceof CallableDescriptor)) {
            return areCallableDescriptorsEquivalent$default(this, (CallableDescriptor) declarationDescriptor, (CallableDescriptor) declarationDescriptor2, z9, z10, false, KotlinTypeRefiner.Default.INSTANCE, 16, null);
        }
        return ((declarationDescriptor instanceof PackageFragmentDescriptor) && (declarationDescriptor2 instanceof PackageFragmentDescriptor)) ? Intrinsics.areEqual(((PackageFragmentDescriptor) declarationDescriptor).getFqName(), ((PackageFragmentDescriptor) declarationDescriptor2).getFqName()) : Intrinsics.areEqual(declarationDescriptor, declarationDescriptor2);
    }

    @JvmOverloads
    public final boolean areTypeParametersEquivalent(@g TypeParameterDescriptor a10, @g TypeParameterDescriptor b10, boolean z9) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        return areTypeParametersEquivalent$default(this, a10, b10, z9, null, 8, null);
    }

    @JvmOverloads
    public final boolean areTypeParametersEquivalent(@g TypeParameterDescriptor a10, @g TypeParameterDescriptor b10, boolean z9, @g Function2<? super DeclarationDescriptor, ? super DeclarationDescriptor, Boolean> equivalentCallables) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        Intrinsics.checkNotNullParameter(equivalentCallables, "equivalentCallables");
        if (Intrinsics.areEqual(a10, b10)) {
            return true;
        }
        return !Intrinsics.areEqual(a10.getContainingDeclaration(), b10.getContainingDeclaration()) && ownersEquivalent(a10, b10, equivalentCallables, z9) && a10.getIndex() == b10.getIndex();
    }
}
