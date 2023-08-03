package kotlin.reflect.jvm.internal.impl.load.kotlin;

import com.fasterxml.jackson.core.e;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceFile;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.IncompatibleVersionErrorData;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import m8.h;

/* compiled from: JvmPackagePartSource.kt */
/* loaded from: classes4.dex */
public final class JvmPackagePartSource implements DeserializedContainerSource {
    @g
    private final DeserializedContainerAbiStability abiStability;
    @g
    private final JvmClassName className;
    @h
    private final JvmClassName facadeClassName;
    @h
    private final IncompatibleVersionErrorData<JvmMetadataVersion> incompatibility;
    private final boolean isPreReleaseInvisible;
    @h
    private final KotlinJvmBinaryClass knownJvmBinaryClass;
    @g
    private final String moduleName;

    public JvmPackagePartSource(@g JvmClassName className, @h JvmClassName jvmClassName, @g ProtoBuf.Package packageProto, @g NameResolver nameResolver, @h IncompatibleVersionErrorData<JvmMetadataVersion> incompatibleVersionErrorData, boolean z9, @g DeserializedContainerAbiStability abiStability, @h KotlinJvmBinaryClass kotlinJvmBinaryClass) {
        Intrinsics.checkNotNullParameter(className, "className");
        Intrinsics.checkNotNullParameter(packageProto, "packageProto");
        Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
        Intrinsics.checkNotNullParameter(abiStability, "abiStability");
        this.className = className;
        this.facadeClassName = jvmClassName;
        this.incompatibility = incompatibleVersionErrorData;
        this.isPreReleaseInvisible = z9;
        this.abiStability = abiStability;
        this.knownJvmBinaryClass = kotlinJvmBinaryClass;
        GeneratedMessageLite.GeneratedExtension<ProtoBuf.Package, Integer> packageModuleName = JvmProtoBuf.packageModuleName;
        Intrinsics.checkNotNullExpressionValue(packageModuleName, "packageModuleName");
        Integer num = (Integer) ProtoBufUtilKt.getExtensionOrNull(packageProto, packageModuleName);
        this.moduleName = (num == null || (r2 = nameResolver.getString(num.intValue())) == null) ? "main" : "main";
    }

    @g
    public final ClassId getClassId() {
        return new ClassId(getClassName().getPackageFqName(), getSimpleName());
    }

    @g
    public JvmClassName getClassName() {
        return this.className;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.SourceElement
    @g
    public SourceFile getContainingFile() {
        SourceFile NO_SOURCE_FILE = SourceFile.NO_SOURCE_FILE;
        Intrinsics.checkNotNullExpressionValue(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }

    @h
    public JvmClassName getFacadeClassName() {
        return this.facadeClassName;
    }

    @h
    public final KotlinJvmBinaryClass getKnownJvmBinaryClass() {
        return this.knownJvmBinaryClass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource
    @g
    public String getPresentableString() {
        return "Class '" + getClassId().asSingleFqName().asString() + '\'';
    }

    @g
    public final Name getSimpleName() {
        String substringAfterLast$default;
        String internalName = getClassName().getInternalName();
        Intrinsics.checkNotNullExpressionValue(internalName, "className.internalName");
        substringAfterLast$default = StringsKt__StringsKt.substringAfterLast$default(internalName, (char) e.f13819f, (String) null, 2, (Object) null);
        Name identifier = Name.identifier(substringAfterLast$default);
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(className.int….substringAfterLast('/'))");
        return identifier;
    }

    @g
    public String toString() {
        return JvmPackagePartSource.class.getSimpleName() + ": " + getClassName();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public JvmPackagePartSource(@m8.g kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass r11, @m8.g kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Package r12, @m8.g kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver r13, @m8.h kotlin.reflect.jvm.internal.impl.serialization.deserialization.IncompatibleVersionErrorData<kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion> r14, boolean r15, @m8.g kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability r16) {
        /*
            r10 = this;
            java.lang.String r0 = "kotlinClass"
            r9 = r11
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.lang.String r0 = "packageProto"
            r4 = r12
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            java.lang.String r0 = "nameResolver"
            r5 = r13
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            java.lang.String r0 = "abiStability"
            r8 = r16
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            kotlin.reflect.jvm.internal.impl.name.ClassId r0 = r11.getClassId()
            kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName r2 = kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName.byClassId(r0)
            java.lang.String r0 = "byClassId(kotlinClass.classId)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader r0 = r11.getClassHeader()
            java.lang.String r0 = r0.getMultifileClassName()
            r1 = 0
            if (r0 == 0) goto L40
            int r3 = r0.length()
            if (r3 <= 0) goto L39
            r3 = 1
            goto L3a
        L39:
            r3 = 0
        L3a:
            if (r3 == 0) goto L40
            kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName r1 = kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName.byInternalName(r0)
        L40:
            r3 = r1
            r1 = r10
            r4 = r12
            r5 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            r9 = r11
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.JvmPackagePartSource.<init>(kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass, kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package, kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver, kotlin.reflect.jvm.internal.impl.serialization.deserialization.IncompatibleVersionErrorData, boolean, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability):void");
    }
}
