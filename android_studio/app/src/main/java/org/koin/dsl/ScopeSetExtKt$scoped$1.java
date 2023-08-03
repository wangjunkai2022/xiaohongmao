package org.koin.dsl;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.instance.b;
import org.koin.core.scope.Scope;
import y8.a;

/* compiled from: ScopeSetExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "R", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "params", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class ScopeSetExtKt$scoped$1 extends Lambda implements Function2<Scope, a, R> {
    public static final ScopeSetExtKt$scoped$1 INSTANCE = new ScopeSetExtKt$scoped$1();

    public ScopeSetExtKt$scoped$1() {
        super(2);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [R, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    @g
    public final R invoke(@g Scope scoped, @g a params) {
        Intrinsics.checkNotNullParameter(scoped, "$this$scoped");
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.reifiedOperationMarker(4, "R");
        return b.e(scoped, Reflection.getOrCreateKotlinClass(Object.class), params);
    }
}
