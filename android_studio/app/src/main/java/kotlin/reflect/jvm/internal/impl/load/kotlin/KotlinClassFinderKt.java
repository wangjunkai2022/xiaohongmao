package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import m8.g;
import m8.h;

/* compiled from: KotlinClassFinder.kt */
/* loaded from: classes4.dex */
public final class KotlinClassFinderKt {
    @h
    public static final KotlinJvmBinaryClass findKotlinClass(@g KotlinClassFinder kotlinClassFinder, @g ClassId classId) {
        Intrinsics.checkNotNullParameter(kotlinClassFinder, "<this>");
        Intrinsics.checkNotNullParameter(classId, "classId");
        KotlinClassFinder.Result findKotlinClassOrContent = kotlinClassFinder.findKotlinClassOrContent(classId);
        if (findKotlinClassOrContent != null) {
            return findKotlinClassOrContent.toKotlinJvmBinaryClass();
        }
        return null;
    }

    @h
    public static final KotlinJvmBinaryClass findKotlinClass(@g KotlinClassFinder kotlinClassFinder, @g JavaClass javaClass) {
        Intrinsics.checkNotNullParameter(kotlinClassFinder, "<this>");
        Intrinsics.checkNotNullParameter(javaClass, "javaClass");
        KotlinClassFinder.Result findKotlinClassOrContent = kotlinClassFinder.findKotlinClassOrContent(javaClass);
        if (findKotlinClassOrContent != null) {
            return findKotlinClassOrContent.toKotlinJvmBinaryClass();
        }
        return null;
    }
}
