package com.squareup.moshi;

import androidx.exifinterface.media.ExifInterface;
import java.lang.annotation.Annotation;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Set;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.TypesJVMKt;

/* compiled from: -MoshiKotlinTypesExtensions.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a'\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0086\b\u001a\u0011\u0010\u0005\u001a\u00020\u0004\"\u0006\b\u0000\u0010\u0001\u0018\u0001H\u0087\b\u001a\u0011\u0010\u0006\u001a\u00020\u0004\"\u0006\b\u0000\u0010\u0001\u0018\u0001H\u0087\b\u001a\f\u0010\t\u001a\u00020\b*\u00020\u0007H\u0007\u001a\u000e\u0010\u000b\u001a\u00020\b*\u0006\u0012\u0002\b\u00030\n\u001a\n\u0010\r\u001a\u00020\b*\u00020\f\"\u0019\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u000e*\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "", "e", "Ljava/lang/reflect/WildcardType;", "f", "g", "Lkotlin/reflect/KType;", "Ljava/lang/reflect/GenericArrayType;", "c", "Lkotlin/reflect/KClass;", "b", "Ljava/lang/reflect/Type;", "a", "Ljava/lang/Class;", "d", "(Ljava/lang/reflect/Type;)Ljava/lang/Class;", "rawType", "moshi"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class b0 {
    @m8.g
    public static final GenericArrayType a(@m8.g Type type) {
        Intrinsics.checkNotNullParameter(type, "<this>");
        GenericArrayType b10 = z.b(type);
        Intrinsics.checkNotNullExpressionValue(b10, "arrayOf(this)");
        return b10;
    }

    @m8.g
    public static final GenericArrayType b(@m8.g KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        return a(JvmClassMappingKt.getJavaClass((KClass) kClass));
    }

    @m8.g
    @ExperimentalStdlibApi
    public static final GenericArrayType c(@m8.g KType kType) {
        Intrinsics.checkNotNullParameter(kType, "<this>");
        return a(TypesJVMKt.getJavaType(kType));
    }

    @m8.g
    public static final Class<?> d(@m8.g Type type) {
        Intrinsics.checkNotNullParameter(type, "<this>");
        Class<?> j4 = z.j(type);
        Intrinsics.checkNotNullExpressionValue(j4, "getRawType(this)");
        return j4;
    }

    public static final /* synthetic */ <T extends Annotation> Set<Annotation> e(Set<? extends Annotation> set) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return z.o(set, Annotation.class);
    }

    @ExperimentalStdlibApi
    public static final /* synthetic */ <T> WildcardType f() {
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        Type javaType = TypesJVMKt.getJavaType((KType) null);
        if (javaType instanceof Class) {
            javaType = com.squareup.moshi.internal.c.a((Class) javaType);
            Intrinsics.checkNotNullExpressionValue(javaType, "boxIfPrimitive(type)");
        }
        WildcardType p9 = z.p(javaType);
        Intrinsics.checkNotNullExpressionValue(p9, "subtypeOf(type)");
        return p9;
    }

    @ExperimentalStdlibApi
    public static final /* synthetic */ <T> WildcardType g() {
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        Type javaType = TypesJVMKt.getJavaType((KType) null);
        if (javaType instanceof Class) {
            javaType = com.squareup.moshi.internal.c.a((Class) javaType);
            Intrinsics.checkNotNullExpressionValue(javaType, "boxIfPrimitive(type)");
        }
        WildcardType q9 = z.q(javaType);
        Intrinsics.checkNotNullExpressionValue(q9, "supertypeOf(type)");
        return q9;
    }
}
