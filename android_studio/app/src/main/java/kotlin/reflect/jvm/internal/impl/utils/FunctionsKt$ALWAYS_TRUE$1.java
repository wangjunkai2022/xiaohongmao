package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;

/* compiled from: functions.kt */
/* loaded from: classes4.dex */
final class FunctionsKt$ALWAYS_TRUE$1 extends Lambda implements Function1<Object, Boolean> {
    public static final FunctionsKt$ALWAYS_TRUE$1 INSTANCE = new FunctionsKt$ALWAYS_TRUE$1();

    FunctionsKt$ALWAYS_TRUE$1() {
        super(1);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@h Object obj) {
        return Boolean.TRUE;
    }
}
