package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: typeParameterUtils.kt */
/* loaded from: classes4.dex */
public final class CapturedTypeParameterDescriptor implements TypeParameterDescriptor {
    @g
    private final DeclarationDescriptor declarationDescriptor;
    private final int declaredTypeParametersCount;
    @g
    private final TypeParameterDescriptor originalDescriptor;

    public CapturedTypeParameterDescriptor(@g TypeParameterDescriptor originalDescriptor, @g DeclarationDescriptor declarationDescriptor, int i4) {
        Intrinsics.checkNotNullParameter(originalDescriptor, "originalDescriptor");
        Intrinsics.checkNotNullParameter(declarationDescriptor, "declarationDescriptor");
        this.originalDescriptor = originalDescriptor;
        this.declarationDescriptor = declarationDescriptor;
        this.declaredTypeParametersCount = i4;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public <R, D> R accept(DeclarationDescriptorVisitor<R, D> declarationDescriptorVisitor, D d4) {
        return (R) this.originalDescriptor.accept(declarationDescriptorVisitor, d4);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    @g
    public Annotations getAnnotations() {
        return this.originalDescriptor.getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    public DeclarationDescriptor getContainingDeclaration() {
        return this.declarationDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    @g
    public SimpleType getDefaultType() {
        return this.originalDescriptor.getDefaultType();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public int getIndex() {
        return this.declaredTypeParametersCount + this.originalDescriptor.getIndex();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Named
    @g
    public Name getName() {
        return this.originalDescriptor.getName();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource
    @g
    public SourceElement getSource() {
        return this.originalDescriptor.getSource();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    @g
    public StorageManager getStorageManager() {
        return this.originalDescriptor.getStorageManager();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    @g
    public TypeConstructor getTypeConstructor() {
        return this.originalDescriptor.getTypeConstructor();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    @g
    public List<KotlinType> getUpperBounds() {
        return this.originalDescriptor.getUpperBounds();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    @g
    public Variance getVariance() {
        return this.originalDescriptor.getVariance();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public boolean isCapturedFromOuterDeclaration() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public boolean isReified() {
        return this.originalDescriptor.isReified();
    }

    @g
    public String toString() {
        return this.originalDescriptor + "[inner-copy]";
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    public TypeParameterDescriptor getOriginal() {
        TypeParameterDescriptor original = this.originalDescriptor.getOriginal();
        Intrinsics.checkNotNullExpressionValue(original, "originalDescriptor.original");
        return original;
    }
}
