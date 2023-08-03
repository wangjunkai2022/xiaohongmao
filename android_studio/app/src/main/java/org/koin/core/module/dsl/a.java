package org.koin.core.module.dsl;

import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.scope.Scope;

/* compiled from: New.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a-\u0010\u0004\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a;\u0010\b\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0006\u0018\u0001*\u00020\u00012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u0007H\u0086\bø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001aI\u0010\f\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0006\u0018\u0001\"\u0006\b\u0002\u0010\n\u0018\u0001*\u00020\u00012\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\u000bH\u0086\bø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001aW\u0010\u0010\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0006\u0018\u0001\"\u0006\b\u0002\u0010\n\u0018\u0001\"\u0006\b\u0003\u0010\u000e\u0018\u0001*\u00020\u00012\u001e\u0010\u0003\u001a\u001a\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00000\u000fH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001ae\u0010\u0014\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0006\u0018\u0001\"\u0006\b\u0002\u0010\n\u0018\u0001\"\u0006\b\u0003\u0010\u000e\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001*\u00020\u00012$\u0010\u0003\u001a \u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00000\u0013H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001as\u0010\u0018\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0006\u0018\u0001\"\u0006\b\u0002\u0010\n\u0018\u0001\"\u0006\b\u0003\u0010\u000e\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0016\u0018\u0001*\u00020\u00012*\u0010\u0003\u001a&\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u00000\u0017H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u0081\u0001\u0010\u001c\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0006\u0018\u0001\"\u0006\b\u0002\u0010\n\u0018\u0001\"\u0006\b\u0003\u0010\u000e\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0016\u0018\u0001\"\u0006\b\u0006\u0010\u001a\u0018\u0001*\u00020\u000120\u0010\u0003\u001a,\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u00000\u001bH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u008f\u0001\u0010 \u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0006\u0018\u0001\"\u0006\b\u0002\u0010\n\u0018\u0001\"\u0006\b\u0003\u0010\u000e\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0016\u0018\u0001\"\u0006\b\u0006\u0010\u001a\u0018\u0001\"\u0006\b\u0007\u0010\u001e\u0018\u0001*\u00020\u000126\u0010\u0003\u001a2\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\u00000\u001fH\u0086\bø\u0001\u0000¢\u0006\u0004\b \u0010!\u001a\u009d\u0001\u0010$\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0006\u0018\u0001\"\u0006\b\u0002\u0010\n\u0018\u0001\"\u0006\b\u0003\u0010\u000e\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0016\u0018\u0001\"\u0006\b\u0006\u0010\u001a\u0018\u0001\"\u0006\b\u0007\u0010\u001e\u0018\u0001\"\u0006\b\b\u0010\"\u0018\u0001*\u00020\u00012<\u0010\u0003\u001a8\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\u00000#H\u0086\bø\u0001\u0000¢\u0006\u0004\b$\u0010%\u001a«\u0001\u0010(\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0006\u0018\u0001\"\u0006\b\u0002\u0010\n\u0018\u0001\"\u0006\b\u0003\u0010\u000e\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0016\u0018\u0001\"\u0006\b\u0006\u0010\u001a\u0018\u0001\"\u0006\b\u0007\u0010\u001e\u0018\u0001\"\u0006\b\b\u0010\"\u0018\u0001\"\u0006\b\t\u0010&\u0018\u0001*\u00020\u00012B\u0010\u0003\u001a>\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\u00000'H\u0086\bø\u0001\u0000¢\u0006\u0004\b(\u0010)\u001a¹\u0001\u0010,\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0006\u0018\u0001\"\u0006\b\u0002\u0010\n\u0018\u0001\"\u0006\b\u0003\u0010\u000e\u0018\u0001\"\u0006\b\u0004\u0010\u0012\u0018\u0001\"\u0006\b\u0005\u0010\u0016\u0018\u0001\"\u0006\b\u0006\u0010\u001a\u0018\u0001\"\u0006\b\u0007\u0010\u001e\u0018\u0001\"\u0006\b\b\u0010\"\u0018\u0001\"\u0006\b\t\u0010&\u0018\u0001\"\u0006\b\n\u0010*\u0018\u0001*\u00020\u00012H\u0010\u0003\u001aD\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\n\u0012\u0004\u0012\u00028\u00000+H\u0086\bø\u0001\u0000¢\u0006\u0004\b,\u0010-\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006."}, d2 = {"R", "Lorg/koin/core/scope/Scope;", "Lkotlin/Function0;", "constructor", "a", "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "T1", "Lkotlin/Function1;", "c", "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "T2", "Lkotlin/Function2;", "d", "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "T3", "Lkotlin/Function3;", "e", "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "T4", "Lkotlin/Function4;", "f", "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "T5", "Lkotlin/Function5;", "g", "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "T6", "Lkotlin/Function6;", "h", "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function6;)Ljava/lang/Object;", "T7", "Lkotlin/Function7;", ContextChain.TAG_INFRA, "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function7;)Ljava/lang/Object;", "T8", "Lkotlin/Function8;", "j", "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function8;)Ljava/lang/Object;", "T9", "Lkotlin/Function9;", "k", "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function9;)Ljava/lang/Object;", "T10", "Lkotlin/Function10;", "b", "(Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function10;)Ljava/lang/Object;", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class a {
    public static final /* synthetic */ <R> R a(Scope scope, Function0<? extends R> constructor) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        return constructor.invoke();
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> R b(Scope scope, Function10<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? extends R> constructor) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.reifiedOperationMarker(4, "T1");
        Intrinsics.reifiedOperationMarker(4, "T2");
        Intrinsics.reifiedOperationMarker(4, "T3");
        Intrinsics.reifiedOperationMarker(4, "T4");
        Intrinsics.reifiedOperationMarker(4, "T5");
        Intrinsics.reifiedOperationMarker(4, "T6");
        Intrinsics.reifiedOperationMarker(4, "T7");
        Intrinsics.reifiedOperationMarker(4, "T8");
        Intrinsics.reifiedOperationMarker(4, "T9");
        Intrinsics.reifiedOperationMarker(4, "T10");
        return constructor.invoke((Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }

    public static final /* synthetic */ <R, T1> R c(Scope scope, Function1<? super T1, ? extends R> constructor) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.reifiedOperationMarker(4, "T1");
        return constructor.invoke((Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }

    public static final /* synthetic */ <R, T1, T2> R d(Scope scope, Function2<? super T1, ? super T2, ? extends R> constructor) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.reifiedOperationMarker(4, "T1");
        Intrinsics.reifiedOperationMarker(4, "T2");
        return constructor.invoke((Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }

    public static final /* synthetic */ <R, T1, T2, T3> R e(Scope scope, Function3<? super T1, ? super T2, ? super T3, ? extends R> constructor) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.reifiedOperationMarker(4, "T1");
        Intrinsics.reifiedOperationMarker(4, "T2");
        Intrinsics.reifiedOperationMarker(4, "T3");
        return constructor.invoke((Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4> R f(Scope scope, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> constructor) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.reifiedOperationMarker(4, "T1");
        Intrinsics.reifiedOperationMarker(4, "T2");
        Intrinsics.reifiedOperationMarker(4, "T3");
        Intrinsics.reifiedOperationMarker(4, "T4");
        return constructor.invoke((Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5> R g(Scope scope, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> constructor) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.reifiedOperationMarker(4, "T1");
        Intrinsics.reifiedOperationMarker(4, "T2");
        Intrinsics.reifiedOperationMarker(4, "T3");
        Intrinsics.reifiedOperationMarker(4, "T4");
        Intrinsics.reifiedOperationMarker(4, "T5");
        return constructor.invoke((Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6> R h(Scope scope, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> constructor) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.reifiedOperationMarker(4, "T1");
        Intrinsics.reifiedOperationMarker(4, "T2");
        Intrinsics.reifiedOperationMarker(4, "T3");
        Intrinsics.reifiedOperationMarker(4, "T4");
        Intrinsics.reifiedOperationMarker(4, "T5");
        Intrinsics.reifiedOperationMarker(4, "T6");
        return constructor.invoke((Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7> R i(Scope scope, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> constructor) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.reifiedOperationMarker(4, "T1");
        Intrinsics.reifiedOperationMarker(4, "T2");
        Intrinsics.reifiedOperationMarker(4, "T3");
        Intrinsics.reifiedOperationMarker(4, "T4");
        Intrinsics.reifiedOperationMarker(4, "T5");
        Intrinsics.reifiedOperationMarker(4, "T6");
        Intrinsics.reifiedOperationMarker(4, "T7");
        return constructor.invoke((Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8> R j(Scope scope, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> constructor) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.reifiedOperationMarker(4, "T1");
        Intrinsics.reifiedOperationMarker(4, "T2");
        Intrinsics.reifiedOperationMarker(4, "T3");
        Intrinsics.reifiedOperationMarker(4, "T4");
        Intrinsics.reifiedOperationMarker(4, "T5");
        Intrinsics.reifiedOperationMarker(4, "T6");
        Intrinsics.reifiedOperationMarker(4, "T7");
        Intrinsics.reifiedOperationMarker(4, "T8");
        return constructor.invoke((Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8, T9> R k(Scope scope, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> constructor) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.reifiedOperationMarker(4, "T1");
        Intrinsics.reifiedOperationMarker(4, "T2");
        Intrinsics.reifiedOperationMarker(4, "T3");
        Intrinsics.reifiedOperationMarker(4, "T4");
        Intrinsics.reifiedOperationMarker(4, "T5");
        Intrinsics.reifiedOperationMarker(4, "T6");
        Intrinsics.reifiedOperationMarker(4, "T7");
        Intrinsics.reifiedOperationMarker(4, "T8");
        Intrinsics.reifiedOperationMarker(4, "T9");
        return constructor.invoke((Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null), (Object) scope.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }
}
