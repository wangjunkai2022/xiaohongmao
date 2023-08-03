package b9;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import m8.g;

/* compiled from: DefinitionBinding.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ae\u0010\b\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00040\u0002j\n\u0012\u0006\b\u0001\u0012\u00028\u0000`\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000*\"\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00040\u0002j\n\u0012\u0006\b\u0001\u0012\u00028\u0000`\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0086\u0004\u001aY\u0010\t\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00040\u0002j\n\u0012\u0006\b\u0001\u0012\u00028\u0000`\u0005\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\"\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00040\u0002j\n\u0012\u0006\b\u0001\u0012\u00028\u0000`\u0005H\u0086\b\u001aV\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0002j\u0006\u0012\u0002\b\u0003`\u0005*\u001a\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0002j\u0006\u0012\u0002\b\u0003`\u00052\u0010\u0010\u000b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\nH\u0086\u0004¢\u0006\u0004\b\f\u0010\r\u001aa\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0002\"\u0004\b\u0000\u0010\u000e*\u001e\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0002j\b\u0012\u0004\u0012\u00028\u0000`\u00052\u001e\u0010\u0012\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0011H\u0086\u0004¨\u0006\u0014"}, d2 = {"", ExifInterface.LATITUDE_SOUTH, "Lkotlin/Pair;", "Lx8/a;", "Lorg/koin/core/instance/d;", "Lorg/koin/core/module/KoinDefinition;", "Lkotlin/reflect/KClass;", "clazz", "b", "a", "", "classes", "c", "(Lkotlin/Pair;[Lkotlin/reflect/KClass;)Lkotlin/Pair;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function1;", "", "Lorg/koin/core/definition/OnCloseCallback;", "onClose", "d", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class a {
    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ <S> Pair<x8.a, org.koin.core.instance.d<? extends S>> a(Pair<x8.a, ? extends org.koin.core.instance.d<? extends S>> pair) {
        Intrinsics.checkNotNullParameter(pair, "<this>");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.LATITUDE_SOUTH);
        b(pair, Reflection.getOrCreateKotlinClass(Object.class));
        return pair;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @g
    public static final <S> Pair<x8.a, org.koin.core.instance.d<? extends S>> b(@g Pair<x8.a, ? extends org.koin.core.instance.d<? extends S>> pair, @g KClass<S> clazz) {
        List<? extends KClass<?>> plus;
        Intrinsics.checkNotNullParameter(pair, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        org.koin.core.definition.a f10 = ((org.koin.core.instance.d) pair.getSecond()).f();
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends KClass<S>>) ((Collection<? extends Object>) ((org.koin.core.instance.d) pair.getSecond()).f().o()), clazz);
        f10.v(plus);
        ((x8.a) pair.getFirst()).v(org.koin.core.definition.b.c(clazz, ((org.koin.core.instance.d) pair.getSecond()).f().m(), ((org.koin.core.instance.d) pair.getSecond()).f().n()), (org.koin.core.instance.d) pair.getSecond(), true);
        return pair;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @g
    public static final Pair<x8.a, org.koin.core.instance.d<?>> c(@g Pair<x8.a, ? extends org.koin.core.instance.d<?>> pair, @g KClass<?>[] classes) {
        List<? extends KClass<?>> plus;
        Intrinsics.checkNotNullParameter(pair, "<this>");
        Intrinsics.checkNotNullParameter(classes, "classes");
        org.koin.core.definition.a f10 = ((org.koin.core.instance.d) pair.getSecond()).f();
        plus = CollectionsKt___CollectionsKt.plus((Collection) f10.o(), (Object[]) classes);
        f10.v(plus);
        for (KClass<?> kClass : classes) {
            ((x8.a) pair.getFirst()).v(org.koin.core.definition.b.c(kClass, ((org.koin.core.instance.d) pair.getSecond()).f().m(), ((org.koin.core.instance.d) pair.getSecond()).f().n()), (org.koin.core.instance.d) pair.getSecond(), true);
        }
        return pair;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @g
    public static final <T> Pair<x8.a, org.koin.core.instance.d<T>> d(@g Pair<x8.a, ? extends org.koin.core.instance.d<T>> pair, @g Function1<? super T, Unit> onClose) {
        Intrinsics.checkNotNullParameter(pair, "<this>");
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        ((org.koin.core.instance.d) pair.getSecond()).f().t(new org.koin.core.definition.c<>(onClose));
        return pair;
    }
}
