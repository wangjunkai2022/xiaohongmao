package kotlin.reflect.jvm.internal.impl.types.error;

import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import m8.g;
import m8.h;

/* compiled from: ErrorFunctionDescriptor.kt */
/* loaded from: classes4.dex */
public final class ErrorFunctionDescriptor extends SimpleFunctionDescriptorImpl {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ErrorFunctionDescriptor(@g ClassDescriptor containingDeclaration) {
        super(containingDeclaration, null, Annotations.Companion.getEMPTY(), Name.special(ErrorEntity.ERROR_FUNCTION.getDebugText()), CallableMemberDescriptor.Kind.DECLARATION, SourceElement.NO_SOURCE);
        List<ReceiverParameterDescriptor> emptyList;
        List<? extends TypeParameterDescriptor> emptyList2;
        List<ValueParameterDescriptor> emptyList3;
        Intrinsics.checkNotNullParameter(containingDeclaration, "containingDeclaration");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        initialize((ReceiverParameterDescriptor) null, (ReceiverParameterDescriptor) null, emptyList, emptyList2, emptyList3, (KotlinType) ErrorUtils.createErrorType(ErrorTypeKind.RETURN_TYPE_FOR_FUNCTION, new String[0]), Modality.OPEN, DescriptorVisibilities.PUBLIC);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    @g
    public SimpleFunctionDescriptor copy(@g DeclarationDescriptor newOwner, @g Modality modality, @g DescriptorVisibility visibility, @g CallableMemberDescriptor.Kind kind, boolean z9) {
        Intrinsics.checkNotNullParameter(newOwner, "newOwner");
        Intrinsics.checkNotNullParameter(modality, "modality");
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        Intrinsics.checkNotNullParameter(kind, "kind");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    @g
    protected FunctionDescriptorImpl createSubstitutedCopy(@g DeclarationDescriptor newOwner, @h FunctionDescriptor functionDescriptor, @g CallableMemberDescriptor.Kind kind, @h Name name, @g Annotations annotations, @g SourceElement source) {
        Intrinsics.checkNotNullParameter(newOwner, "newOwner");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Intrinsics.checkNotNullParameter(source, "source");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    @h
    public <V> V getUserData(@g CallableDescriptor.UserDataKey<V> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public boolean isSuspend() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    @g
    public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> newCopyBuilder() {
        return new FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor>() { // from class: kotlin.reflect.jvm.internal.impl.types.error.ErrorFunctionDescriptor$newCopyBuilder$1
            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public <V> FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> putUserData(@g CallableDescriptor.UserDataKey<V> userDataKey, V v9) {
                Intrinsics.checkNotNullParameter(userDataKey, "userDataKey");
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setAdditionalAnnotations(@g Annotations additionalAnnotations) {
                Intrinsics.checkNotNullParameter(additionalAnnotations, "additionalAnnotations");
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setCopyOverrides(boolean z9) {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setDispatchReceiverParameter(@h ReceiverParameterDescriptor receiverParameterDescriptor) {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setDropOriginalInContainingParts() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setExtensionReceiverParameter(@h ReceiverParameterDescriptor receiverParameterDescriptor) {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setHiddenForResolutionEverywhereBesideSupercalls() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setHiddenToOvercomeSignatureClash() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setKind(@g CallableMemberDescriptor.Kind kind) {
                Intrinsics.checkNotNullParameter(kind, "kind");
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setModality(@g Modality modality) {
                Intrinsics.checkNotNullParameter(modality, "modality");
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setName(@g Name name) {
                Intrinsics.checkNotNullParameter(name, "name");
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setOriginal(@h CallableMemberDescriptor callableMemberDescriptor) {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setOwner(@g DeclarationDescriptor owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setPreserveSourceElement() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setReturnType(@g KotlinType type) {
                Intrinsics.checkNotNullParameter(type, "type");
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setSignatureChange() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setSubstitution(@g TypeSubstitution substitution) {
                Intrinsics.checkNotNullParameter(substitution, "substitution");
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setTypeParameters(@g List<? extends TypeParameterDescriptor> parameters) {
                Intrinsics.checkNotNullParameter(parameters, "parameters");
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setValueParameters(@g List<? extends ValueParameterDescriptor> parameters) {
                Intrinsics.checkNotNullParameter(parameters, "parameters");
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public FunctionDescriptor.CopyBuilder<SimpleFunctionDescriptor> setVisibility(@g DescriptorVisibility visibility) {
                Intrinsics.checkNotNullParameter(visibility, "visibility");
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
            @g
            public SimpleFunctionDescriptor build() {
                return ErrorFunctionDescriptor.this;
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public void setOverriddenDescriptors(@g Collection<? extends CallableMemberDescriptor> overriddenDescriptors) {
        Intrinsics.checkNotNullParameter(overriddenDescriptors, "overriddenDescriptors");
    }
}
