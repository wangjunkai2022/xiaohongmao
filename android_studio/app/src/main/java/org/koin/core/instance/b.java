package org.koin.core.instance;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Constructor;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import m8.g;
import org.koin.core.error.NoBeanDefFoundException;
import org.koin.core.logger.Level;
import org.koin.core.scope.Scope;

/* compiled from: InstanceBuilder.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u001a*\u0010\u0005\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a3\u0010\n\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\t\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\n\u0010\u000b\u001a-\u0010\u0010\u001a\u00020\u00002\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00000\f2\u000e\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011\u001a1\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00000\f2\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/scope/Scope;", "Ly8/a;", "defParams", "f", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "Lkotlin/reflect/KClass;", "kClass", "params", "e", "(Lorg/koin/core/scope/Scope;Lkotlin/reflect/KClass;Ly8/a;)Ljava/lang/Object;", "", "args", "Ljava/lang/reflect/Constructor;", "constructor", "c", "([Ljava/lang/Object;Ljava/lang/reflect/Constructor;)Ljava/lang/Object;", "scope", "parameters", "d", "(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;Ly8/a;)[Ljava/lang/Object;", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InstanceBuilder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Ly8/a;", "invoke", "()Ly8/a;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes5.dex */
    public static final class a extends Lambda implements Function0<y8.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ y8.a f92429a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(y8.a aVar) {
            super(0);
            this.f92429a = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final y8.a invoke() {
            return this.f92429a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InstanceBuilder.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* renamed from: org.koin.core.instance.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0817b extends Lambda implements Function0<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object[] f92430a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Constructor<?> f92431b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0817b(Object[] objArr, Constructor<?> constructor) {
            super(0);
            this.f92430a = objArr;
            this.f92431b = constructor;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final Object invoke() {
            return b.c(this.f92430a, this.f92431b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InstanceBuilder.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\b\b\u0000\u0010\u0003*\u00020\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "", ExifInterface.GPS_DIRECTION_TRUE, "invoke", "()[Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class c extends Lambda implements Function0<Object[]> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Constructor<?> f92432a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Scope f92433b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ y8.a f92434c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Constructor<?> constructor, Scope scope, y8.a aVar) {
            super(0);
            this.f92432a = constructor;
            this.f92433b = scope;
            this.f92434c = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final Object[] invoke() {
            return b.d(this.f92432a, this.f92433b, this.f92434c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object c(Object[] objArr, Constructor<? extends Object> constructor) {
        Object newInstance;
        if (objArr.length == 0) {
            newInstance = constructor.newInstance(new Object[0]);
        } else {
            newInstance = constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        }
        Intrinsics.checkNotNullExpressionValue(newInstance, "if (args.isEmpty()) {\n  ….newInstance(*args)\n    }");
        return newInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] d(Constructor<?> constructor, Scope scope, y8.a aVar) {
        int length = constructor.getParameterTypes().length;
        if (length == 0) {
            return new Object[0];
        }
        Object[] objArr = new Object[length];
        for (int i4 = 0; i4 < length; i4++) {
            objArr[i4] = Unit.INSTANCE;
        }
        for (int i10 = 0; i10 < length; i10++) {
            Class<?> p9 = constructor.getParameterTypes()[i10];
            Intrinsics.checkNotNullExpressionValue(p9, "p");
            KClass<?> kotlinClass = JvmClassMappingKt.getKotlinClass(p9);
            Object A = scope.A(kotlinClass, null, new a(aVar));
            if (A == null && (A = aVar.k(kotlinClass)) == null) {
                throw new NoBeanDefFoundException("No definition found for class '" + kotlinClass + '\'');
            }
            objArr[i10] = A;
        }
        return objArr;
    }

    @g
    @u8.c
    public static final <T> T e(@g Scope scope, @g KClass<T> kClass, @g y8.a params) {
        Object firstOrNull;
        Object[] d4;
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(params, "params");
        Level e4 = scope.z().e();
        Level level = Level.DEBUG;
        if (e4 == level) {
            w8.b z9 = scope.z();
            z9.b("|- creating new instance - " + c9.b.a(kClass));
        }
        Constructor<?>[] constructors = JvmClassMappingKt.getJavaClass((KClass) kClass).getConstructors();
        Intrinsics.checkNotNullExpressionValue(constructors, "kClass.java.constructors");
        firstOrNull = ArraysKt___ArraysKt.firstOrNull(constructors);
        Constructor constructor = (Constructor) firstOrNull;
        if (constructor != null) {
            if (scope.z().e() == level) {
                Pair b10 = a9.a.b(new c(constructor, scope, params));
                d4 = (Object[]) b10.component1();
                double doubleValue = ((Number) b10.component2()).doubleValue();
                w8.b z10 = scope.z();
                z10.b("|- got arguments in " + doubleValue + " ms");
            } else {
                d4 = d(constructor, scope, params);
            }
            if (scope.z().e() == level) {
                Pair b11 = a9.a.b(new C0817b(d4, constructor));
                T t9 = (T) b11.component1();
                double doubleValue2 = ((Number) b11.component2()).doubleValue();
                w8.b z11 = scope.z();
                z11.b("|- created instance in " + doubleValue2 + " ms");
                return t9;
            }
            return (T) c(d4, constructor);
        }
        throw new IllegalStateException(("No constructor found for class '" + c9.b.a(kClass) + '\'').toString());
    }

    @u8.c
    public static final /* synthetic */ <T> T f(Scope scope, y8.a defParams) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(defParams, "defParams");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) e(scope, Reflection.getOrCreateKotlinClass(Object.class), defParams);
    }

    public static /* synthetic */ Object g(Scope scope, y8.a defParams, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            defParams = y8.b.a();
        }
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(defParams, "defParams");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return e(scope, Reflection.getOrCreateKotlinClass(Object.class), defParams);
    }
}
