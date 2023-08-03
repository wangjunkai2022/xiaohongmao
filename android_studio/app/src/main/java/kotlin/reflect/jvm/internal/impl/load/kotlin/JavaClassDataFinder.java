package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassData;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder;
import m8.g;
import m8.h;

/* compiled from: JavaClassDataFinder.kt */
/* loaded from: classes4.dex */
public final class JavaClassDataFinder implements ClassDataFinder {
    @g
    private final DeserializedDescriptorResolver deserializedDescriptorResolver;
    @g
    private final KotlinClassFinder kotlinClassFinder;

    public JavaClassDataFinder(@g KotlinClassFinder kotlinClassFinder, @g DeserializedDescriptorResolver deserializedDescriptorResolver) {
        Intrinsics.checkNotNullParameter(kotlinClassFinder, "kotlinClassFinder");
        Intrinsics.checkNotNullParameter(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        this.kotlinClassFinder = kotlinClassFinder;
        this.deserializedDescriptorResolver = deserializedDescriptorResolver;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder
    @h
    public ClassData findClassData(@g ClassId classId) {
        Intrinsics.checkNotNullParameter(classId, "classId");
        KotlinJvmBinaryClass findKotlinClass = KotlinClassFinderKt.findKotlinClass(this.kotlinClassFinder, classId);
        if (findKotlinClass == null) {
            return null;
        }
        Intrinsics.areEqual(findKotlinClass.getClassId(), classId);
        return this.deserializedDescriptorResolver.readClassData$descriptors_jvm(findKotlinClass);
    }
}
