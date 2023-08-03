package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Field;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReflectJavaClass.kt */
/* loaded from: classes4.dex */
public /* synthetic */ class ReflectJavaClass$fields$2 extends FunctionReference implements Function1<Field, ReflectJavaField> {
    public static final ReflectJavaClass$fields$2 INSTANCE = new ReflectJavaClass$fields$2();

    ReflectJavaClass$fields$2() {
        super(1);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    @g
    public final String getName() {
        return "<init>";
    }

    @Override // kotlin.jvm.internal.CallableReference
    @g
    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(ReflectJavaField.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    @g
    public final String getSignature() {
        return "<init>(Ljava/lang/reflect/Field;)V";
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final ReflectJavaField invoke(@g Field p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        return new ReflectJavaField(p02);
    }
}
