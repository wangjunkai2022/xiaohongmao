package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeAliasConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import m8.g;
import m8.h;

/* compiled from: DeserializedMemberDescriptor.kt */
/* loaded from: classes4.dex */
public final class DeserializedTypeAliasDescriptor extends AbstractTypeAliasDescriptor implements DeserializedMemberDescriptor {
    private Collection<? extends TypeAliasConstructorDescriptor> constructors;
    @h
    private final DeserializedContainerSource containerSource;
    private SimpleType defaultTypeImpl;
    private SimpleType expandedType;
    @g
    private final NameResolver nameResolver;
    @g
    private final ProtoBuf.TypeAlias proto;
    @g
    private final StorageManager storageManager;
    private List<? extends TypeParameterDescriptor> typeConstructorParameters;
    @g
    private final TypeTable typeTable;
    private SimpleType underlyingType;
    @g
    private final VersionRequirementTable versionRequirementTable;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public DeserializedTypeAliasDescriptor(@m8.g kotlin.reflect.jvm.internal.impl.storage.StorageManager r13, @m8.g kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r14, @m8.g kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations r15, @m8.g kotlin.reflect.jvm.internal.impl.name.Name r16, @m8.g kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility r17, @m8.g kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.TypeAlias r18, @m8.g kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver r19, @m8.g kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable r20, @m8.g kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable r21, @m8.h kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource r22) {
        /*
            r12 = this;
            r6 = r12
            r7 = r13
            r8 = r18
            r9 = r19
            r10 = r20
            r11 = r21
            java.lang.String r0 = "storageManager"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            java.lang.String r0 = "containingDeclaration"
            r1 = r14
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            java.lang.String r0 = "annotations"
            r2 = r15
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            java.lang.String r0 = "name"
            r3 = r16
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "visibility"
            r5 = r17
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "proto"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "nameResolver"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "typeTable"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "versionRequirementTable"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            kotlin.reflect.jvm.internal.impl.descriptors.SourceElement r4 = kotlin.reflect.jvm.internal.impl.descriptors.SourceElement.NO_SOURCE
            java.lang.String r0 = "NO_SOURCE"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)
            r0 = r12
            r0.<init>(r1, r2, r3, r4, r5)
            r6.storageManager = r7
            r6.proto = r8
            r6.nameResolver = r9
            r6.typeTable = r10
            r6.versionRequirementTable = r11
            r0 = r22
            r6.containerSource = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor.<init>(kotlin.reflect.jvm.internal.impl.storage.StorageManager, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations, kotlin.reflect.jvm.internal.impl.name.Name, kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility, kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias, kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable, kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor
    @h
    public ClassDescriptor getClassDescriptor() {
        if (KotlinTypeKt.isError(getExpandedType())) {
            return null;
        }
        ClassifierDescriptor declarationDescriptor = getExpandedType().getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof ClassDescriptor) {
            return (ClassDescriptor) declarationDescriptor;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    @h
    public DeserializedContainerSource getContainerSource() {
        return this.containerSource;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    @g
    public SimpleType getDefaultType() {
        SimpleType simpleType = this.defaultTypeImpl;
        if (simpleType == null) {
            Intrinsics.throwUninitializedPropertyAccessException("defaultTypeImpl");
            return null;
        }
        return simpleType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor
    @g
    public SimpleType getExpandedType() {
        SimpleType simpleType = this.expandedType;
        if (simpleType != null) {
            return simpleType;
        }
        Intrinsics.throwUninitializedPropertyAccessException("expandedType");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    @g
    public NameResolver getNameResolver() {
        return this.nameResolver;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor
    @g
    protected StorageManager getStorageManager() {
        return this.storageManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor
    @g
    public List<TypeParameterDescriptor> getTypeConstructorTypeParameters() {
        List list = this.typeConstructorParameters;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("typeConstructorParameters");
            return null;
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    @g
    public TypeTable getTypeTable() {
        return this.typeTable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor
    @g
    public SimpleType getUnderlyingType() {
        SimpleType simpleType = this.underlyingType;
        if (simpleType != null) {
            return simpleType;
        }
        Intrinsics.throwUninitializedPropertyAccessException("underlyingType");
        return null;
    }

    @g
    public VersionRequirementTable getVersionRequirementTable() {
        return this.versionRequirementTable;
    }

    public final void initialize(@g List<? extends TypeParameterDescriptor> declaredTypeParameters, @g SimpleType underlyingType, @g SimpleType expandedType) {
        Intrinsics.checkNotNullParameter(declaredTypeParameters, "declaredTypeParameters");
        Intrinsics.checkNotNullParameter(underlyingType, "underlyingType");
        Intrinsics.checkNotNullParameter(expandedType, "expandedType");
        initialize(declaredTypeParameters);
        this.underlyingType = underlyingType;
        this.expandedType = expandedType;
        this.typeConstructorParameters = TypeParameterUtilsKt.computeConstructorTypeParameters(this);
        this.defaultTypeImpl = computeDefaultType();
        this.constructors = getTypeAliasConstructors();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor
    @g
    public ProtoBuf.TypeAlias getProto() {
        return this.proto;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    @g
    public TypeAliasDescriptor substitute(@g TypeSubstitutor substitutor) {
        Intrinsics.checkNotNullParameter(substitutor, "substitutor");
        if (substitutor.isEmpty()) {
            return this;
        }
        StorageManager storageManager = getStorageManager();
        DeclarationDescriptor containingDeclaration = getContainingDeclaration();
        Intrinsics.checkNotNullExpressionValue(containingDeclaration, "containingDeclaration");
        Annotations annotations = getAnnotations();
        Intrinsics.checkNotNullExpressionValue(annotations, "annotations");
        Name name = getName();
        Intrinsics.checkNotNullExpressionValue(name, "name");
        DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = new DeserializedTypeAliasDescriptor(storageManager, containingDeclaration, annotations, name, getVisibility(), getProto(), getNameResolver(), getTypeTable(), getVersionRequirementTable(), getContainerSource());
        List<TypeParameterDescriptor> declaredTypeParameters = getDeclaredTypeParameters();
        SimpleType underlyingType = getUnderlyingType();
        Variance variance = Variance.INVARIANT;
        KotlinType safeSubstitute = substitutor.safeSubstitute(underlyingType, variance);
        Intrinsics.checkNotNullExpressionValue(safeSubstitute, "substitutor.safeSubstitu…Type, Variance.INVARIANT)");
        SimpleType asSimpleType = TypeSubstitutionKt.asSimpleType(safeSubstitute);
        KotlinType safeSubstitute2 = substitutor.safeSubstitute(getExpandedType(), variance);
        Intrinsics.checkNotNullExpressionValue(safeSubstitute2, "substitutor.safeSubstitu…Type, Variance.INVARIANT)");
        deserializedTypeAliasDescriptor.initialize(declaredTypeParameters, asSimpleType, TypeSubstitutionKt.asSimpleType(safeSubstitute2));
        return deserializedTypeAliasDescriptor;
    }
}
