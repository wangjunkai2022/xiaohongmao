package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import m8.g;
import m8.h;

/* compiled from: UnsignedType.kt */
/* loaded from: classes4.dex */
public final class UnsignedTypes {
    @g
    public static final UnsignedTypes INSTANCE = new UnsignedTypes();
    @g
    private static final HashMap<ClassId, ClassId> arrayClassIdToUnsignedClassId;
    @g
    private static final Set<Name> arrayClassesShortNames;
    @g
    private static final Set<Name> unsignedArrayTypeNames;
    @g
    private static final HashMap<UnsignedArrayType, Name> unsignedArrayTypeToArrayCall;
    @g
    private static final HashMap<ClassId, ClassId> unsignedClassIdToArrayClassId;
    @g
    private static final Set<Name> unsignedTypeNames;

    static {
        Set<Name> set;
        Set<Name> set2;
        HashMap<UnsignedArrayType, Name> hashMapOf;
        UnsignedType[] values;
        UnsignedType[] values2 = UnsignedType.values();
        ArrayList arrayList = new ArrayList(values2.length);
        for (UnsignedType unsignedType : values2) {
            arrayList.add(unsignedType.getTypeName());
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList);
        unsignedTypeNames = set;
        UnsignedArrayType[] values3 = UnsignedArrayType.values();
        ArrayList arrayList2 = new ArrayList(values3.length);
        for (UnsignedArrayType unsignedArrayType : values3) {
            arrayList2.add(unsignedArrayType.getTypeName());
        }
        set2 = CollectionsKt___CollectionsKt.toSet(arrayList2);
        unsignedArrayTypeNames = set2;
        arrayClassIdToUnsignedClassId = new HashMap<>();
        unsignedClassIdToArrayClassId = new HashMap<>();
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.to(UnsignedArrayType.UBYTEARRAY, Name.identifier("ubyteArrayOf")), TuplesKt.to(UnsignedArrayType.USHORTARRAY, Name.identifier("ushortArrayOf")), TuplesKt.to(UnsignedArrayType.UINTARRAY, Name.identifier("uintArrayOf")), TuplesKt.to(UnsignedArrayType.ULONGARRAY, Name.identifier("ulongArrayOf")));
        unsignedArrayTypeToArrayCall = hashMapOf;
        UnsignedType[] values4 = UnsignedType.values();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (UnsignedType unsignedType2 : values4) {
            linkedHashSet.add(unsignedType2.getArrayClassId().getShortClassName());
        }
        arrayClassesShortNames = linkedHashSet;
        for (UnsignedType unsignedType3 : UnsignedType.values()) {
            arrayClassIdToUnsignedClassId.put(unsignedType3.getArrayClassId(), unsignedType3.getClassId());
            unsignedClassIdToArrayClassId.put(unsignedType3.getClassId(), unsignedType3.getArrayClassId());
        }
    }

    private UnsignedTypes() {
    }

    @JvmStatic
    public static final boolean isUnsignedType(@g KotlinType type) {
        ClassifierDescriptor declarationDescriptor;
        Intrinsics.checkNotNullParameter(type, "type");
        if (TypeUtils.noExpectedType(type) || (declarationDescriptor = type.getConstructor().getDeclarationDescriptor()) == null) {
            return false;
        }
        return INSTANCE.isUnsignedClass(declarationDescriptor);
    }

    @h
    public final ClassId getUnsignedClassIdByArrayClassId(@g ClassId arrayClassId) {
        Intrinsics.checkNotNullParameter(arrayClassId, "arrayClassId");
        return arrayClassIdToUnsignedClassId.get(arrayClassId);
    }

    public final boolean isShortNameOfUnsignedArray(@g Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return arrayClassesShortNames.contains(name);
    }

    public final boolean isUnsignedClass(@g DeclarationDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        DeclarationDescriptor containingDeclaration = descriptor.getContainingDeclaration();
        return (containingDeclaration instanceof PackageFragmentDescriptor) && Intrinsics.areEqual(((PackageFragmentDescriptor) containingDeclaration).getFqName(), StandardNames.BUILT_INS_PACKAGE_FQ_NAME) && unsignedTypeNames.contains(descriptor.getName());
    }
}
