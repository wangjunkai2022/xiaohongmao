package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import m8.g;

/* compiled from: ReflectKotlinClass.kt */
/* loaded from: classes4.dex */
final class SignatureSerializer {
    @g
    public static final SignatureSerializer INSTANCE = new SignatureSerializer();

    private SignatureSerializer() {
    }

    @g
    public final String constructorDesc(@g Constructor<?> constructor) {
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Intrinsics.checkNotNullExpressionValue(parameterTypes, "constructor.parameterTypes");
        for (Class<?> parameterType : parameterTypes) {
            Intrinsics.checkNotNullExpressionValue(parameterType, "parameterType");
            sb.append(ReflectClassUtilKt.getDesc(parameterType));
        }
        sb.append(")V");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }

    @g
    public final String fieldDesc(@g Field field) {
        Intrinsics.checkNotNullParameter(field, "field");
        Class<?> type = field.getType();
        Intrinsics.checkNotNullExpressionValue(type, "field.type");
        return ReflectClassUtilKt.getDesc(type);
    }

    @g
    public final String methodDesc(@g Method method) {
        Intrinsics.checkNotNullParameter(method, "method");
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        Class<?>[] parameterTypes = method.getParameterTypes();
        Intrinsics.checkNotNullExpressionValue(parameterTypes, "method.parameterTypes");
        for (Class<?> parameterType : parameterTypes) {
            Intrinsics.checkNotNullExpressionValue(parameterType, "parameterType");
            sb.append(ReflectClassUtilKt.getDesc(parameterType));
        }
        sb.append(")");
        Class<?> returnType = method.getReturnType();
        Intrinsics.checkNotNullExpressionValue(returnType, "method.returnType");
        sb.append(ReflectClassUtilKt.getDesc(returnType));
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }
}
