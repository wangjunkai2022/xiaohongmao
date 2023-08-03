package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceFile;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.IncompatibleVersionErrorData;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import m8.g;
import m8.h;

/* compiled from: KotlinJvmBinarySourceElement.kt */
/* loaded from: classes4.dex */
public final class KotlinJvmBinarySourceElement implements DeserializedContainerSource {
    @g
    private final DeserializedContainerAbiStability abiStability;
    @g
    private final KotlinJvmBinaryClass binaryClass;
    @h
    private final IncompatibleVersionErrorData<JvmMetadataVersion> incompatibility;
    private final boolean isPreReleaseInvisible;

    public KotlinJvmBinarySourceElement(@g KotlinJvmBinaryClass binaryClass, @h IncompatibleVersionErrorData<JvmMetadataVersion> incompatibleVersionErrorData, boolean z9, @g DeserializedContainerAbiStability abiStability) {
        Intrinsics.checkNotNullParameter(binaryClass, "binaryClass");
        Intrinsics.checkNotNullParameter(abiStability, "abiStability");
        this.binaryClass = binaryClass;
        this.incompatibility = incompatibleVersionErrorData;
        this.isPreReleaseInvisible = z9;
        this.abiStability = abiStability;
    }

    @g
    public final KotlinJvmBinaryClass getBinaryClass() {
        return this.binaryClass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.SourceElement
    @g
    public SourceFile getContainingFile() {
        SourceFile NO_SOURCE_FILE = SourceFile.NO_SOURCE_FILE;
        Intrinsics.checkNotNullExpressionValue(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource
    @g
    public String getPresentableString() {
        return "Class '" + this.binaryClass.getClassId().asSingleFqName().asString() + '\'';
    }

    @g
    public String toString() {
        return KotlinJvmBinarySourceElement.class.getSimpleName() + ": " + this.binaryClass;
    }
}
