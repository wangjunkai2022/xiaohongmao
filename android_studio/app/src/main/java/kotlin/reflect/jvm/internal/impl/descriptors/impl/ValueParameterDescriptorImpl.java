package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import m8.g;
import m8.h;

/* compiled from: ValueParameterDescriptorImpl.kt */
/* loaded from: classes4.dex */
public class ValueParameterDescriptorImpl extends VariableDescriptorImpl implements ValueParameterDescriptor {
    @g
    public static final Companion Companion = new Companion(null);
    private final boolean declaresDefaultValue;
    private final int index;
    private final boolean isCrossinline;
    private final boolean isNoinline;
    @g
    private final ValueParameterDescriptor original;
    @h
    private final KotlinType varargElementType;

    /* compiled from: ValueParameterDescriptorImpl.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @g
        public final ValueParameterDescriptorImpl createWithDestructuringDeclarations(@g CallableDescriptor containingDeclaration, @h ValueParameterDescriptor valueParameterDescriptor, int i4, @g Annotations annotations, @g Name name, @g KotlinType outType, boolean z9, boolean z10, boolean z11, @h KotlinType kotlinType, @g SourceElement source, @h Function0<? extends List<? extends VariableDescriptor>> function0) {
            Intrinsics.checkNotNullParameter(containingDeclaration, "containingDeclaration");
            Intrinsics.checkNotNullParameter(annotations, "annotations");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(outType, "outType");
            Intrinsics.checkNotNullParameter(source, "source");
            if (function0 == null) {
                return new ValueParameterDescriptorImpl(containingDeclaration, valueParameterDescriptor, i4, annotations, name, outType, z9, z10, z11, kotlinType, source);
            }
            return new WithDestructuringDeclaration(containingDeclaration, valueParameterDescriptor, i4, annotations, name, outType, z9, z10, z11, kotlinType, source, function0);
        }
    }

    /* compiled from: ValueParameterDescriptorImpl.kt */
    /* loaded from: classes4.dex */
    public static final class WithDestructuringDeclaration extends ValueParameterDescriptorImpl {
        @g
        private final Lazy destructuringVariables$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithDestructuringDeclaration(@g CallableDescriptor containingDeclaration, @h ValueParameterDescriptor valueParameterDescriptor, int i4, @g Annotations annotations, @g Name name, @g KotlinType outType, boolean z9, boolean z10, boolean z11, @h KotlinType kotlinType, @g SourceElement source, @g Function0<? extends List<? extends VariableDescriptor>> destructuringVariables) {
            super(containingDeclaration, valueParameterDescriptor, i4, annotations, name, outType, z9, z10, z11, kotlinType, source);
            Lazy lazy;
            Intrinsics.checkNotNullParameter(containingDeclaration, "containingDeclaration");
            Intrinsics.checkNotNullParameter(annotations, "annotations");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(outType, "outType");
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(destructuringVariables, "destructuringVariables");
            lazy = LazyKt__LazyJVMKt.lazy(destructuringVariables);
            this.destructuringVariables$delegate = lazy;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
        @g
        public ValueParameterDescriptor copy(@g CallableDescriptor newOwner, @g Name newName, int i4) {
            Intrinsics.checkNotNullParameter(newOwner, "newOwner");
            Intrinsics.checkNotNullParameter(newName, "newName");
            Annotations annotations = getAnnotations();
            Intrinsics.checkNotNullExpressionValue(annotations, "annotations");
            KotlinType type = getType();
            Intrinsics.checkNotNullExpressionValue(type, "type");
            boolean declaresDefaultValue = declaresDefaultValue();
            boolean isCrossinline = isCrossinline();
            boolean isNoinline = isNoinline();
            KotlinType varargElementType = getVarargElementType();
            SourceElement NO_SOURCE = SourceElement.NO_SOURCE;
            Intrinsics.checkNotNullExpressionValue(NO_SOURCE, "NO_SOURCE");
            return new WithDestructuringDeclaration(newOwner, null, i4, annotations, newName, type, declaresDefaultValue, isCrossinline, isNoinline, varargElementType, NO_SOURCE, new ValueParameterDescriptorImpl$WithDestructuringDeclaration$copy$1(this));
        }

        @g
        public final List<VariableDescriptor> getDestructuringVariables() {
            return (List) this.destructuringVariables$delegate.getValue();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ValueParameterDescriptorImpl(@g CallableDescriptor containingDeclaration, @h ValueParameterDescriptor valueParameterDescriptor, int i4, @g Annotations annotations, @g Name name, @g KotlinType outType, boolean z9, boolean z10, boolean z11, @h KotlinType kotlinType, @g SourceElement source) {
        super(containingDeclaration, annotations, name, outType, source);
        Intrinsics.checkNotNullParameter(containingDeclaration, "containingDeclaration");
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(outType, "outType");
        Intrinsics.checkNotNullParameter(source, "source");
        this.index = i4;
        this.declaresDefaultValue = z9;
        this.isCrossinline = z10;
        this.isNoinline = z11;
        this.varargElementType = kotlinType;
        this.original = valueParameterDescriptor == null ? this : valueParameterDescriptor;
    }

    @JvmStatic
    @g
    public static final ValueParameterDescriptorImpl createWithDestructuringDeclarations(@g CallableDescriptor callableDescriptor, @h ValueParameterDescriptor valueParameterDescriptor, int i4, @g Annotations annotations, @g Name name, @g KotlinType kotlinType, boolean z9, boolean z10, boolean z11, @h KotlinType kotlinType2, @g SourceElement sourceElement, @h Function0<? extends List<? extends VariableDescriptor>> function0) {
        return Companion.createWithDestructuringDeclarations(callableDescriptor, valueParameterDescriptor, i4, annotations, name, kotlinType, z9, z10, z11, kotlinType2, sourceElement, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public <R, D> R accept(@g DeclarationDescriptorVisitor<R, D> visitor, D d4) {
        Intrinsics.checkNotNullParameter(visitor, "visitor");
        return visitor.visitValueParameterDescriptor(this, d4);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
    @g
    public ValueParameterDescriptor copy(@g CallableDescriptor newOwner, @g Name newName, int i4) {
        Intrinsics.checkNotNullParameter(newOwner, "newOwner");
        Intrinsics.checkNotNullParameter(newName, "newName");
        Annotations annotations = getAnnotations();
        Intrinsics.checkNotNullExpressionValue(annotations, "annotations");
        KotlinType type = getType();
        Intrinsics.checkNotNullExpressionValue(type, "type");
        boolean declaresDefaultValue = declaresDefaultValue();
        boolean isCrossinline = isCrossinline();
        boolean isNoinline = isNoinline();
        KotlinType varargElementType = getVarargElementType();
        SourceElement NO_SOURCE = SourceElement.NO_SOURCE;
        Intrinsics.checkNotNullExpressionValue(NO_SOURCE, "NO_SOURCE");
        return new ValueParameterDescriptorImpl(newOwner, null, i4, annotations, newName, type, declaresDefaultValue, isCrossinline, isNoinline, varargElementType, NO_SOURCE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
    public boolean declaresDefaultValue() {
        if (this.declaresDefaultValue) {
            CallableDescriptor containingDeclaration = getContainingDeclaration();
            Intrinsics.checkNotNull(containingDeclaration, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableMemberDescriptor");
            if (((CallableMemberDescriptor) containingDeclaration).getKind().isReal()) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    @h
    public Void getCompileTimeInitializer() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    public /* bridge */ /* synthetic */ ConstantValue getCompileTimeInitializer() {
        return (ConstantValue) getCompileTimeInitializer();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
    public int getIndex() {
        return this.index;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    @g
    public Collection<ValueParameterDescriptor> getOverriddenDescriptors() {
        int collectionSizeOrDefault;
        Collection<? extends CallableDescriptor> overriddenDescriptors = getContainingDeclaration().getOverriddenDescriptors();
        Intrinsics.checkNotNullExpressionValue(overriddenDescriptors, "containingDeclaration.overriddenDescriptors");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(overriddenDescriptors, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CallableDescriptor callableDescriptor : overriddenDescriptors) {
            arrayList.add(callableDescriptor.getValueParameters().get(getIndex()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
    @h
    public KotlinType getVarargElementType() {
        return this.varargElementType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    @g
    public DescriptorVisibility getVisibility() {
        DescriptorVisibility LOCAL = DescriptorVisibilities.LOCAL;
        Intrinsics.checkNotNullExpressionValue(LOCAL, "LOCAL");
        return LOCAL;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
    public boolean isCrossinline() {
        return this.isCrossinline;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    public boolean isLateInit() {
        return ValueParameterDescriptor.DefaultImpls.isLateInit(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor
    public boolean isNoinline() {
        return this.isNoinline;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    public boolean isVar() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    public CallableDescriptor getContainingDeclaration() {
        DeclarationDescriptor containingDeclaration = super.getContainingDeclaration();
        Intrinsics.checkNotNull(containingDeclaration, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor");
        return (CallableDescriptor) containingDeclaration;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    @g
    public ValueParameterDescriptor substitute(@g TypeSubstitutor substitutor) {
        Intrinsics.checkNotNullParameter(substitutor, "substitutor");
        if (substitutor.isEmpty()) {
            return this;
        }
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    public ValueParameterDescriptor getOriginal() {
        ValueParameterDescriptor valueParameterDescriptor = this.original;
        return valueParameterDescriptor == this ? this : valueParameterDescriptor.getOriginal();
    }
}
