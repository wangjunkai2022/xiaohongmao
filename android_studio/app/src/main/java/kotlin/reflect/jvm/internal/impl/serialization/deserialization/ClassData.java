package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import m8.g;
import m8.h;

/* compiled from: ClassData.kt */
/* loaded from: classes4.dex */
public final class ClassData {
    @g
    private final ProtoBuf.Class classProto;
    @g
    private final BinaryVersion metadataVersion;
    @g
    private final NameResolver nameResolver;
    @g
    private final SourceElement sourceElement;

    public ClassData(@g NameResolver nameResolver, @g ProtoBuf.Class classProto, @g BinaryVersion metadataVersion, @g SourceElement sourceElement) {
        Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
        Intrinsics.checkNotNullParameter(classProto, "classProto");
        Intrinsics.checkNotNullParameter(metadataVersion, "metadataVersion");
        Intrinsics.checkNotNullParameter(sourceElement, "sourceElement");
        this.nameResolver = nameResolver;
        this.classProto = classProto;
        this.metadataVersion = metadataVersion;
        this.sourceElement = sourceElement;
    }

    @g
    public final NameResolver component1() {
        return this.nameResolver;
    }

    @g
    public final ProtoBuf.Class component2() {
        return this.classProto;
    }

    @g
    public final BinaryVersion component3() {
        return this.metadataVersion;
    }

    @g
    public final SourceElement component4() {
        return this.sourceElement;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassData) {
            ClassData classData = (ClassData) obj;
            return Intrinsics.areEqual(this.nameResolver, classData.nameResolver) && Intrinsics.areEqual(this.classProto, classData.classProto) && Intrinsics.areEqual(this.metadataVersion, classData.metadataVersion) && Intrinsics.areEqual(this.sourceElement, classData.sourceElement);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.nameResolver.hashCode() * 31) + this.classProto.hashCode()) * 31) + this.metadataVersion.hashCode()) * 31) + this.sourceElement.hashCode();
    }

    @g
    public String toString() {
        return "ClassData(nameResolver=" + this.nameResolver + ", classProto=" + this.classProto + ", metadataVersion=" + this.metadataVersion + ", sourceElement=" + this.sourceElement + ')';
    }
}
