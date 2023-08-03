package kotlin.reflect.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KParameter;
import kotlin.reflect.jvm.internal.JvmFunctionSignature;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.InlineClassAwareCallerKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KFunctionImpl.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u0012\u0012\u0002\b\u0003 \u0002*\b\u0012\u0002\b\u0003\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/calls/Caller;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class KFunctionImpl$caller$2 extends Lambda implements Function0<Caller<? extends Member>> {
    final /* synthetic */ KFunctionImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KFunctionImpl$caller$2(KFunctionImpl kFunctionImpl) {
        super(0);
        this.this$0 = kFunctionImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Caller<? extends Member> invoke() {
        int collectionSizeOrDefault;
        Object constructor;
        Caller createStaticMethodCaller;
        int collectionSizeOrDefault2;
        JvmFunctionSignature mapSignature = RuntimeTypeMapper.INSTANCE.mapSignature(this.this$0.getDescriptor());
        if (mapSignature instanceof JvmFunctionSignature.KotlinConstructor) {
            if (this.this$0.isAnnotationConstructor()) {
                Class<?> jClass = this.this$0.getContainer().getJClass();
                List<KParameter> parameters = this.this$0.getParameters();
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
                for (KParameter kParameter : parameters) {
                    String name = kParameter.getName();
                    Intrinsics.checkNotNull(name);
                    arrayList.add(name);
                }
                return new AnnotationConstructorCaller(jClass, arrayList, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.KOTLIN, null, 16, null);
            }
            constructor = this.this$0.getContainer().findConstructorBySignature(((JvmFunctionSignature.KotlinConstructor) mapSignature).getConstructorDesc());
        } else if (mapSignature instanceof JvmFunctionSignature.KotlinFunction) {
            JvmFunctionSignature.KotlinFunction kotlinFunction = (JvmFunctionSignature.KotlinFunction) mapSignature;
            constructor = this.this$0.getContainer().findMethodBySignature(kotlinFunction.getMethodName(), kotlinFunction.getMethodDesc());
        } else if (mapSignature instanceof JvmFunctionSignature.JavaMethod) {
            constructor = ((JvmFunctionSignature.JavaMethod) mapSignature).getMethod();
        } else if (!(mapSignature instanceof JvmFunctionSignature.JavaConstructor)) {
            if (mapSignature instanceof JvmFunctionSignature.FakeJavaAnnotationConstructor) {
                List<Method> methods = ((JvmFunctionSignature.FakeJavaAnnotationConstructor) mapSignature).getMethods();
                Class<?> jClass2 = this.this$0.getContainer().getJClass();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(methods, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                for (Method method : methods) {
                    arrayList2.add(method.getName());
                }
                return new AnnotationConstructorCaller(jClass2, arrayList2, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.JAVA, methods);
            }
            throw new NoWhenBranchMatchedException();
        } else {
            constructor = ((JvmFunctionSignature.JavaConstructor) mapSignature).getConstructor();
        }
        if (constructor instanceof Constructor) {
            KFunctionImpl kFunctionImpl = this.this$0;
            createStaticMethodCaller = kFunctionImpl.createConstructorCaller((Constructor) constructor, kFunctionImpl.getDescriptor(), false);
        } else if (constructor instanceof Method) {
            Method method2 = (Method) constructor;
            if (!Modifier.isStatic(method2.getModifiers())) {
                createStaticMethodCaller = this.this$0.createInstanceMethodCaller(method2);
            } else if (this.this$0.getDescriptor().getAnnotations().findAnnotation(UtilKt.getJVM_STATIC()) != null) {
                createStaticMethodCaller = this.this$0.createJvmStaticInObjectCaller(method2);
            } else {
                createStaticMethodCaller = this.this$0.createStaticMethodCaller(method2);
            }
        } else {
            throw new KotlinReflectionInternalError("Could not compute caller for function: " + this.this$0.getDescriptor() + " (member = " + constructor + ')');
        }
        return InlineClassAwareCallerKt.createInlineClassAwareCallerIfNeeded$default(createStaticMethodCaller, this.this$0.getDescriptor(), false, 2, null);
    }
}
