package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.h4;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: ExceptionsConstructor.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a#\u0010\u0003\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a2\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0007j\u0002`\b\"\b\b\u0000\u0010\u0001*\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0002\u001a*\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0000\u0018\u00010\u0007j\u0004\u0018\u0001`\b2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\nH\u0002\u001a1\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0007j\u0002`\b2\u0014\b\u0004\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00000\u0007H\u0082\b\u001a\u0018\u0010\u0011\u001a\u00020\u000f*\u0006\u0012\u0002\b\u00030\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u001a\u001b\u0010\u0013\u001a\u00020\u000f*\u0006\u0012\u0002\b\u00030\u00052\b\b\u0002\u0010\u0012\u001a\u00020\u000fH\u0082\u0010\"\u0014\u0010\u0016\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015\"\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0018*(\b\u0002\u0010\u001a\"\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u00072\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0007¨\u0006\u001b"}, d2 = {"", ExifInterface.LONGITUDE_EAST, h4.b.f83287e, "h", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "Ljava/lang/Class;", "clz", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/Ctor;", "b", "Ljava/lang/reflect/Constructor;", "constructor", "c", "block", "g", "", "defaultValue", "f", "accumulator", "d", "a", "I", "throwableFields", "Lkotlinx/coroutines/internal/k;", "Lkotlinx/coroutines/internal/k;", "ctorCache", "Ctor", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class ExceptionsConstructorKt {

    /* renamed from: a  reason: collision with root package name */
    private static final int f86203a = f(Throwable.class, -1);
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final k f86204b;

    /* compiled from: Comparisons.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t9, T t10) {
            int compareValues;
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((Constructor) t10).getParameterTypes().length), Integer.valueOf(((Constructor) t9).getParameterTypes().length));
            return compareValues;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExceptionsConstructor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", ExifInterface.LONGITUDE_EAST, "it", "", "a", "(Ljava/lang/Throwable;)Ljava/lang/Void;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b extends Lambda implements Function1 {

        /* renamed from: a  reason: collision with root package name */
        public static final b f86209a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @m8.h
        /* renamed from: a */
        public final Void invoke(@m8.g Throwable th) {
            return null;
        }
    }

    static {
        k kVar;
        try {
            kVar = o.a() ? b1.f86243a : e.f86254a;
        } catch (Throwable unused) {
            kVar = b1.f86243a;
        }
        f86204b = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E extends Throwable> Function1<Throwable, Throwable> b(Class<E> cls) {
        List<Constructor> sortedWith;
        b bVar = b.f86209a;
        if (f86203a != f(cls, 0)) {
            return bVar;
        }
        sortedWith = ArraysKt___ArraysKt.sortedWith(cls.getConstructors(), new a());
        for (Constructor constructor : sortedWith) {
            Function1<Throwable, Throwable> c10 = c(constructor);
            if (c10 != null) {
                return c10;
            }
        }
        return bVar;
    }

    private static final Function1<Throwable, Throwable> c(Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int length = parameterTypes.length;
        if (length != 0) {
            if (length != 1) {
                if (length == 2 && Intrinsics.areEqual(parameterTypes[0], String.class) && Intrinsics.areEqual(parameterTypes[1], Throwable.class)) {
                    return new ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$1(constructor);
                }
                return null;
            }
            Class<?> cls = parameterTypes[0];
            if (Intrinsics.areEqual(cls, Throwable.class)) {
                return new ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$2(constructor);
            }
            if (Intrinsics.areEqual(cls, String.class)) {
                return new ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$3(constructor);
            }
            return null;
        }
        return new ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$4(constructor);
    }

    private static final int d(Class<?> cls, int i4) {
        do {
            Field[] declaredFields = cls.getDeclaredFields();
            int length = declaredFields.length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                Field field = declaredFields[i10];
                i10++;
                if (!Modifier.isStatic(field.getModifiers())) {
                    i11++;
                }
            }
            i4 += i11;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i4;
    }

    static /* synthetic */ int e(Class cls, int i4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = 0;
        }
        return d(cls, i4);
    }

    private static final int f(Class<?> cls, int i4) {
        Integer m70constructorimpl;
        JvmClassMappingKt.getKotlinClass(cls);
        try {
            Result.Companion companion = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(Integer.valueOf(e(cls, 0, 1, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(ResultKt.createFailure(th));
        }
        Integer valueOf = Integer.valueOf(i4);
        if (Result.m76isFailureimpl(m70constructorimpl)) {
            m70constructorimpl = valueOf;
        }
        return ((Number) m70constructorimpl).intValue();
    }

    private static final Function1<Throwable, Throwable> g(Function1<? super Throwable, ? extends Throwable> function1) {
        return new ExceptionsConstructorKt$safeCtor$1(function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m8.h
    public static final <E extends Throwable> E h(@m8.g E e4) {
        Object m70constructorimpl;
        if (e4 instanceof kotlinx.coroutines.l0) {
            try {
                Result.Companion companion = Result.Companion;
                m70constructorimpl = Result.m70constructorimpl(((kotlinx.coroutines.l0) e4).createCopy());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                m70constructorimpl = Result.m70constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m76isFailureimpl(m70constructorimpl)) {
                m70constructorimpl = null;
            }
            return (E) m70constructorimpl;
        }
        return (E) f86204b.a(e4.getClass()).invoke(e4);
    }
}
