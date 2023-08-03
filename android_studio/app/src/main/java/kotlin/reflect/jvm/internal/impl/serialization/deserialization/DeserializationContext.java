package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionSpecificBehaviorKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import m8.g;
import m8.h;

/* compiled from: context.kt */
/* loaded from: classes4.dex */
public final class DeserializationContext {
    @g
    private final DeserializationComponents components;
    @h
    private final DeserializedContainerSource containerSource;
    @g
    private final DeclarationDescriptor containingDeclaration;
    @g
    private final MemberDeserializer memberDeserializer;
    @g
    private final BinaryVersion metadataVersion;
    @g
    private final NameResolver nameResolver;
    @g
    private final TypeDeserializer typeDeserializer;
    @g
    private final TypeTable typeTable;
    @g
    private final VersionRequirementTable versionRequirementTable;

    public DeserializationContext(@g DeserializationComponents components, @g NameResolver nameResolver, @g DeclarationDescriptor containingDeclaration, @g TypeTable typeTable, @g VersionRequirementTable versionRequirementTable, @g BinaryVersion metadataVersion, @h DeserializedContainerSource deserializedContainerSource, @h TypeDeserializer typeDeserializer, @g List<ProtoBuf.TypeParameter> typeParameters) {
        Intrinsics.checkNotNullParameter(components, "components");
        Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
        Intrinsics.checkNotNullParameter(containingDeclaration, "containingDeclaration");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        Intrinsics.checkNotNullParameter(versionRequirementTable, "versionRequirementTable");
        Intrinsics.checkNotNullParameter(metadataVersion, "metadataVersion");
        Intrinsics.checkNotNullParameter(typeParameters, "typeParameters");
        this.components = components;
        this.nameResolver = nameResolver;
        this.containingDeclaration = containingDeclaration;
        this.typeTable = typeTable;
        this.versionRequirementTable = versionRequirementTable;
        this.metadataVersion = metadataVersion;
        this.containerSource = deserializedContainerSource;
        this.typeDeserializer = new TypeDeserializer(this, typeDeserializer, typeParameters, "Deserializer for \"" + containingDeclaration.getName() + '\"', (deserializedContainerSource == null || (r2 = deserializedContainerSource.getPresentableString()) == null) ? "[container not found]" : "[container not found]");
        this.memberDeserializer = new MemberDeserializer(this);
    }

    public static /* synthetic */ DeserializationContext childContext$default(DeserializationContext deserializationContext, DeclarationDescriptor declarationDescriptor, List list, NameResolver nameResolver, TypeTable typeTable, VersionRequirementTable versionRequirementTable, BinaryVersion binaryVersion, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            nameResolver = deserializationContext.nameResolver;
        }
        NameResolver nameResolver2 = nameResolver;
        if ((i4 & 8) != 0) {
            typeTable = deserializationContext.typeTable;
        }
        TypeTable typeTable2 = typeTable;
        if ((i4 & 16) != 0) {
            versionRequirementTable = deserializationContext.versionRequirementTable;
        }
        VersionRequirementTable versionRequirementTable2 = versionRequirementTable;
        if ((i4 & 32) != 0) {
            binaryVersion = deserializationContext.metadataVersion;
        }
        return deserializationContext.childContext(declarationDescriptor, list, nameResolver2, typeTable2, versionRequirementTable2, binaryVersion);
    }

    @g
    public final DeserializationContext childContext(@g DeclarationDescriptor descriptor, @g List<ProtoBuf.TypeParameter> typeParameterProtos, @g NameResolver nameResolver, @g TypeTable typeTable, @g VersionRequirementTable versionRequirementTable, @g BinaryVersion metadataVersion) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(typeParameterProtos, "typeParameterProtos");
        Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        VersionRequirementTable versionRequirementTable2 = versionRequirementTable;
        Intrinsics.checkNotNullParameter(versionRequirementTable2, "versionRequirementTable");
        Intrinsics.checkNotNullParameter(metadataVersion, "metadataVersion");
        DeserializationComponents deserializationComponents = this.components;
        if (!VersionSpecificBehaviorKt.isVersionRequirementTableWrittenCorrectly(metadataVersion)) {
            versionRequirementTable2 = this.versionRequirementTable;
        }
        return new DeserializationContext(deserializationComponents, nameResolver, descriptor, typeTable, versionRequirementTable2, metadataVersion, this.containerSource, this.typeDeserializer, typeParameterProtos);
    }

    @g
    public final DeserializationComponents getComponents() {
        return this.components;
    }

    @h
    public final DeserializedContainerSource getContainerSource() {
        return this.containerSource;
    }

    @g
    public final DeclarationDescriptor getContainingDeclaration() {
        return this.containingDeclaration;
    }

    @g
    public final MemberDeserializer getMemberDeserializer() {
        return this.memberDeserializer;
    }

    @g
    public final NameResolver getNameResolver() {
        return this.nameResolver;
    }

    @g
    public final StorageManager getStorageManager() {
        return this.components.getStorageManager();
    }

    @g
    public final TypeDeserializer getTypeDeserializer() {
        return this.typeDeserializer;
    }

    @g
    public final TypeTable getTypeTable() {
        return this.typeTable;
    }

    @g
    public final VersionRequirementTable getVersionRequirementTable() {
        return this.versionRequirementTable;
    }
}
