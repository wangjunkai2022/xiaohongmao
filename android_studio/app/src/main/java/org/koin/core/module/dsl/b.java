package org.koin.core.module.dsl;

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
import org.koin.core.instance.f;
import z8.c;
import z8.d;

/* compiled from: OptionDSL.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aj\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0001j\b\u0012\u0004\u0012\u00028\u0000`\u0004\"\u0004\b\u0000\u0010\u0000*\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0001j\b\u0012\u0004\u0012\u00028\u0000`\u00042\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\u0004\u001aa\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0001j\b\u0012\u0004\u0012\u00028\u0000`\u0004\"\u0006\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0087\bø\u0001\u0000\u001a\u0016\u0010\u0010\u001a\u00020\u0007*\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010\u000f\u001a\u00020\u000e\u001a\u0019\u0010\u0011\u001a\u00020\u0007\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u0006\u0012\u0002\b\u00030\u0006H\u0086\b\u001a\u001d\u0010\u0012\u001a\u00020\u0007\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0006H\u0086\b\u001a \u0010\u0016\u001a\u00020\u0007*\u0006\u0012\u0002\b\u00030\u00062\u0010\u0010\u0015\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00140\u0013\u001a\u000e\u0010\u0017\u001a\u00020\u0007*\u0006\u0012\u0002\b\u00030\u0006\u001a6\u0010\u001a\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00062\u001e\u0010\u0019\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u00070\u0005j\b\u0012\u0004\u0012\u00028\u0000`\u0018\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Pair;", "Lx8/a;", "Lorg/koin/core/instance/d;", "Lorg/koin/core/module/KoinDefinition;", "Lkotlin/Function1;", "Lorg/koin/core/definition/a;", "", "Lkotlin/ExtensionFunctionType;", "options", "h", "R", "factory", "g", "", "name", "e", "d", "a", "", "Lkotlin/reflect/KClass;", "classes", "b", "c", "Lorg/koin/core/definition/OnCloseCallback;", "onClose", "f", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class b {
    public static final /* synthetic */ <T> void a(org.koin.core.definition.a<? extends T> aVar) {
        List<? extends KClass<?>> plus;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        List<KClass<?>> o9 = aVar.o();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends KClass>) ((Collection<? extends Object>) o9), Reflection.getOrCreateKotlinClass(Object.class));
        aVar.v(plus);
    }

    public static final void b(@g org.koin.core.definition.a<?> aVar, @g List<? extends KClass<?>> classes) {
        List<? extends KClass<?>> plus;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(classes, "classes");
        plus = CollectionsKt___CollectionsKt.plus((Collection) aVar.o(), (Iterable) classes);
        aVar.v(plus);
    }

    public static final void c(@g org.koin.core.definition.a<?> aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        aVar.w(true);
    }

    public static final /* synthetic */ <T> void d(org.koin.core.definition.a<?> aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        aVar.u(new d(Reflection.getOrCreateKotlinClass(Object.class)));
    }

    public static final void e(@g org.koin.core.definition.a<?> aVar, @g String name) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        aVar.u(new c(name));
    }

    public static final <T> void f(@g org.koin.core.definition.a<T> aVar, @g Function1<? super T, Unit> onClose) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        aVar.t(new org.koin.core.definition.c<>(onClose));
    }

    @u8.b
    public static final /* synthetic */ <R> Pair<x8.a, org.koin.core.instance.d<R>> g(x8.a aVar, org.koin.core.instance.d<R> factory, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(options, "options");
        org.koin.core.definition.a<R> f10 = factory.f();
        Pair<x8.a, org.koin.core.instance.d<R>> pair = new Pair<>(aVar, factory);
        options.invoke(f10);
        aVar.p(factory);
        aVar.q(factory);
        if (f10.p() && (factory instanceof f)) {
            aVar.u((f) factory);
        }
        return pair;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @g
    public static final <T> Pair<x8.a, org.koin.core.instance.d<T>> h(@g Pair<x8.a, ? extends org.koin.core.instance.d<T>> pair, @g Function1<? super org.koin.core.definition.a<T>, Unit> options) {
        Intrinsics.checkNotNullParameter(pair, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        org.koin.core.instance.d<?> dVar = (org.koin.core.instance.d) pair.getSecond();
        x8.a aVar = (x8.a) pair.getFirst();
        org.koin.core.definition.a<T> f10 = ((org.koin.core.instance.d) pair.getSecond()).f();
        z8.a m9 = f10.m();
        options.invoke(f10);
        if (!Intrinsics.areEqual(f10.m(), m9)) {
            aVar.p(dVar);
        }
        aVar.q(dVar);
        if (f10.p() && (dVar instanceof f)) {
            aVar.u((f) dVar);
        }
        return pair;
    }
}
