package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Set;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import m8.g;
import m8.h;

/* compiled from: ClassDeserializer.kt */
/* loaded from: classes4.dex */
public final class ClassDeserializer {
    @g
    private static final Set<ClassId> BLACK_LIST;
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final Function1<ClassKey, ClassDescriptor> classes;
    @g
    private final DeserializationComponents components;

    /* compiled from: ClassDeserializer.kt */
    /* loaded from: classes4.dex */
    public static final class ClassKey {
        @h
        private final ClassData classData;
        @g
        private final ClassId classId;

        public ClassKey(@g ClassId classId, @h ClassData classData) {
            Intrinsics.checkNotNullParameter(classId, "classId");
            this.classId = classId;
            this.classData = classData;
        }

        public boolean equals(@h Object obj) {
            return (obj instanceof ClassKey) && Intrinsics.areEqual(this.classId, ((ClassKey) obj).classId);
        }

        @h
        public final ClassData getClassData() {
            return this.classData;
        }

        @g
        public final ClassId getClassId() {
            return this.classId;
        }

        public int hashCode() {
            return this.classId.hashCode();
        }
    }

    /* compiled from: ClassDeserializer.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final Set<ClassId> getBLACK_LIST() {
            return ClassDeserializer.BLACK_LIST;
        }
    }

    static {
        Set<ClassId> of;
        of = SetsKt__SetsJVMKt.setOf(ClassId.topLevel(StandardNames.FqNames.cloneable.toSafe()));
        BLACK_LIST = of;
    }

    public ClassDeserializer(@g DeserializationComponents components) {
        Intrinsics.checkNotNullParameter(components, "components");
        this.components = components;
        this.classes = components.getStorageManager().createMemoizedFunctionWithNullableValues(new ClassDeserializer$classes$1(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x00b8 A[EDGE_INSN: B:102:0x00b8->B:94:0x00b8 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor createClass(kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer.ClassKey r13) {
        /*
            r12 = this;
            kotlin.reflect.jvm.internal.impl.name.ClassId r0 = r13.getClassId()
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents r1 = r12.components
            java.lang.Iterable r1 = r1.getFictitiousClassDescriptorFactories()
            java.util.Iterator r1 = r1.iterator()
        Le:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L21
            java.lang.Object r2 = r1.next()
            kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory r2 = (kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory) r2
            kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor r2 = r2.createClass(r0)
            if (r2 == 0) goto Le
            return r2
        L21:
            java.util.Set<kotlin.reflect.jvm.internal.impl.name.ClassId> r1 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer.BLACK_LIST
            boolean r1 = r1.contains(r0)
            r2 = 0
            if (r1 == 0) goto L2b
            return r2
        L2b:
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassData r13 = r13.getClassData()
            if (r13 != 0) goto L3e
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents r13 = r12.components
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder r13 = r13.getClassDataFinder()
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassData r13 = r13.findClassData(r0)
            if (r13 != 0) goto L3e
            return r2
        L3e:
            kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver r1 = r13.component1()
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class r10 = r13.component2()
            kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion r11 = r13.component3()
            kotlin.reflect.jvm.internal.impl.descriptors.SourceElement r13 = r13.component4()
            kotlin.reflect.jvm.internal.impl.name.ClassId r3 = r0.getOuterClassId()
            java.lang.String r4 = "classId.shortClassName"
            if (r3 == 0) goto L79
            r5 = 2
            kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor r3 = deserializeClass$default(r12, r3, r2, r5, r2)
            boolean r5 = r3 instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor
            if (r5 == 0) goto L62
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor r3 = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor) r3
            goto L63
        L62:
            r3 = r2
        L63:
            if (r3 != 0) goto L66
            return r2
        L66:
            kotlin.reflect.jvm.internal.impl.name.Name r0 = r0.getShortClassName()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r4)
            boolean r0 = r3.hasNestedClass$deserialization(r0)
            if (r0 != 0) goto L74
            return r2
        L74:
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext r0 = r3.getC()
            goto Le4
        L79:
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents r3 = r12.components
            kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider r3 = r3.getPackageFragmentProvider()
            kotlin.reflect.jvm.internal.impl.name.FqName r5 = r0.getPackageFqName()
            java.lang.String r6 = "classId.packageFqName"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            java.util.List r3 = kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderKt.packageFragments(r3, r5)
            java.util.Iterator r3 = r3.iterator()
        L90:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto Lb7
            java.lang.Object r5 = r3.next()
            r6 = r5
            kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor r6 = (kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor) r6
            boolean r7 = r6 instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragment
            if (r7 == 0) goto Lb3
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragment r6 = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragment) r6
            kotlin.reflect.jvm.internal.impl.name.Name r7 = r0.getShortClassName()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r4)
            boolean r6 = r6.hasTopLevelClass(r7)
            if (r6 == 0) goto Lb1
            goto Lb3
        Lb1:
            r6 = 0
            goto Lb4
        Lb3:
            r6 = 1
        Lb4:
            if (r6 == 0) goto L90
            goto Lb8
        Lb7:
            r5 = r2
        Lb8:
            r4 = r5
            kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor r4 = (kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor) r4
            if (r4 != 0) goto Lbe
            return r2
        Lbe:
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents r3 = r12.components
            kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable r6 = new kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable r0 = r10.getTypeTable()
            java.lang.String r2 = "classProto.typeTable"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            r6.<init>(r0)
            kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable$Companion r0 = kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable.Companion
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable r2 = r10.getVersionRequirementTable()
            java.lang.String r5 = "classProto.versionRequirementTable"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r5)
            kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable r7 = r0.create(r2)
            r9 = 0
            r5 = r1
            r8 = r11
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext r0 = r3.createContext(r4, r5, r6, r7, r8, r9)
        Le4:
            r4 = r0
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor r0 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor
            r3 = r0
            r5 = r10
            r6 = r1
            r7 = r11
            r8 = r13
            r3.<init>(r4, r5, r6, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer.createClass(kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer$ClassKey):kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor");
    }

    public static /* synthetic */ ClassDescriptor deserializeClass$default(ClassDeserializer classDeserializer, ClassId classId, ClassData classData, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            classData = null;
        }
        return classDeserializer.deserializeClass(classId, classData);
    }

    @h
    public final ClassDescriptor deserializeClass(@g ClassId classId, @h ClassData classData) {
        Intrinsics.checkNotNullParameter(classId, "classId");
        return this.classes.invoke(new ClassKey(classId, classData));
    }
}
