package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KClassImpl.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Ljava/lang/reflect/Type;", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class KClassImpl$Data$supertypes$2$1$1 extends Lambda implements Function0<Type> {
    final /* synthetic */ KotlinType $kotlinType;
    final /* synthetic */ KClassImpl<T>.Data this$0;
    final /* synthetic */ KClassImpl<T> this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KClassImpl$Data$supertypes$2$1$1(KotlinType kotlinType, KClassImpl<T>.Data data, KClassImpl<T> kClassImpl) {
        super(0);
        this.$kotlinType = kotlinType;
        this.this$0 = data;
        this.this$1 = kClassImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final Type invoke() {
        int indexOf;
        ClassifierDescriptor declarationDescriptor = this.$kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof ClassDescriptor) {
            Class<?> javaClass = UtilKt.toJavaClass((ClassDescriptor) declarationDescriptor);
            if (javaClass != null) {
                if (Intrinsics.areEqual(this.this$1.getJClass().getSuperclass(), javaClass)) {
                    Type genericSuperclass = this.this$1.getJClass().getGenericSuperclass();
                    Intrinsics.checkNotNullExpressionValue(genericSuperclass, "{\n                      …ass\n                    }");
                    return genericSuperclass;
                }
                Class<?>[] interfaces = this.this$1.getJClass().getInterfaces();
                Intrinsics.checkNotNullExpressionValue(interfaces, "jClass.interfaces");
                indexOf = ArraysKt___ArraysKt.indexOf(interfaces, javaClass);
                if (indexOf >= 0) {
                    Type type = this.this$1.getJClass().getGenericInterfaces()[indexOf];
                    Intrinsics.checkNotNullExpressionValue(type, "{\n                      …ex]\n                    }");
                    return type;
                }
                throw new KotlinReflectionInternalError("No superclass of " + this.this$0 + " in Java reflection for " + declarationDescriptor);
            }
            throw new KotlinReflectionInternalError("Unsupported superclass of " + this.this$0 + ": " + declarationDescriptor);
        }
        throw new KotlinReflectionInternalError("Supertype not a class: " + declarationDescriptor);
    }
}
