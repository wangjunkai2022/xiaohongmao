package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeAliasConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;

/* compiled from: AbstractTypeAliasDescriptor.kt */
/* loaded from: classes4.dex */
public abstract class AbstractTypeAliasDescriptor extends DeclarationDescriptorNonRootImpl implements TypeAliasDescriptor {
    private List<? extends TypeParameterDescriptor> declaredTypeParametersImpl;
    @g
    private final AbstractTypeAliasDescriptor$typeConstructor$1 typeConstructor;
    @g
    private final DescriptorVisibility visibilityImpl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$typeConstructor$1] */
    public AbstractTypeAliasDescriptor(@g DeclarationDescriptor containingDeclaration, @g Annotations annotations, @g Name name, @g SourceElement sourceElement, @g DescriptorVisibility visibilityImpl) {
        super(containingDeclaration, annotations, name, sourceElement);
        Intrinsics.checkNotNullParameter(containingDeclaration, "containingDeclaration");
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(sourceElement, "sourceElement");
        Intrinsics.checkNotNullParameter(visibilityImpl, "visibilityImpl");
        this.visibilityImpl = visibilityImpl;
        this.typeConstructor = new TypeConstructor() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor$typeConstructor$1
            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            @g
            public KotlinBuiltIns getBuiltIns() {
                return DescriptorUtilsKt.getBuiltIns(getDeclarationDescriptor());
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            @g
            public List<TypeParameterDescriptor> getParameters() {
                return AbstractTypeAliasDescriptor.this.getTypeConstructorTypeParameters();
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            @g
            /* renamed from: getSupertypes */
            public Collection<KotlinType> mo1364getSupertypes() {
                Collection<KotlinType> mo1364getSupertypes = getDeclarationDescriptor().getUnderlyingType().getConstructor().mo1364getSupertypes();
                Intrinsics.checkNotNullExpressionValue(mo1364getSupertypes, "declarationDescriptor.un…pe.constructor.supertypes");
                return mo1364getSupertypes;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            public boolean isDenotable() {
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            @g
            public TypeConstructor refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
                Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
                return this;
            }

            @g
            public String toString() {
                return "[typealias " + getDeclarationDescriptor().getName().asString() + ']';
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            @g
            public TypeAliasDescriptor getDeclarationDescriptor() {
                return AbstractTypeAliasDescriptor.this;
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public <R, D> R accept(@g DeclarationDescriptorVisitor<R, D> visitor, D d4) {
        Intrinsics.checkNotNullParameter(visitor, "visitor");
        return visitor.visitTypeAliasDescriptor(this, d4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final SimpleType computeDefaultType() {
        MemberScope memberScope;
        ClassDescriptor classDescriptor = getClassDescriptor();
        if (classDescriptor == null || (memberScope = classDescriptor.getUnsubstitutedMemberScope()) == null) {
            memberScope = MemberScope.Empty.INSTANCE;
        }
        SimpleType makeUnsubstitutedType = TypeUtils.makeUnsubstitutedType(this, memberScope, new AbstractTypeAliasDescriptor$computeDefaultType$1(this));
        Intrinsics.checkNotNullExpressionValue(makeUnsubstitutedType, "@OptIn(TypeRefinement::c…s)?.defaultType\n        }");
        return makeUnsubstitutedType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    @g
    public List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        List list = this.declaredTypeParametersImpl;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("declaredTypeParametersImpl");
            return null;
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    @g
    public Modality getModality() {
        return Modality.FINAL;
    }

    @g
    protected abstract StorageManager getStorageManager();

    @g
    public final Collection<TypeAliasConstructorDescriptor> getTypeAliasConstructors() {
        List emptyList;
        ClassDescriptor classDescriptor = getClassDescriptor();
        if (classDescriptor == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        Collection<ClassConstructorDescriptor> constructors = classDescriptor.getConstructors();
        Intrinsics.checkNotNullExpressionValue(constructors, "classDescriptor.constructors");
        ArrayList arrayList = new ArrayList();
        for (ClassConstructorDescriptor it : constructors) {
            TypeAliasConstructorDescriptorImpl.Companion companion = TypeAliasConstructorDescriptorImpl.Companion;
            StorageManager storageManager = getStorageManager();
            Intrinsics.checkNotNullExpressionValue(it, "it");
            TypeAliasConstructorDescriptor createIfAvailable = companion.createIfAvailable(storageManager, this, it);
            if (createIfAvailable != null) {
                arrayList.add(createIfAvailable);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    @g
    public TypeConstructor getTypeConstructor() {
        return this.typeConstructor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public abstract List<TypeParameterDescriptor> getTypeConstructorTypeParameters();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    @g
    public DescriptorVisibility getVisibility() {
        return this.visibilityImpl;
    }

    public final void initialize(@g List<? extends TypeParameterDescriptor> declaredTypeParameters) {
        Intrinsics.checkNotNullParameter(declaredTypeParameters, "declaredTypeParameters");
        this.declaredTypeParametersImpl = declaredTypeParameters;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public boolean isInner() {
        return TypeUtils.contains(getUnderlyingType(), new AbstractTypeAliasDescriptor$isInner$1(this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl
    @g
    public String toString() {
        return "typealias " + getName().asString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    public TypeAliasDescriptor getOriginal() {
        DeclarationDescriptorWithSource original = super.getOriginal();
        Intrinsics.checkNotNull(original, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeAliasDescriptor");
        return (TypeAliasDescriptor) original;
    }
}
