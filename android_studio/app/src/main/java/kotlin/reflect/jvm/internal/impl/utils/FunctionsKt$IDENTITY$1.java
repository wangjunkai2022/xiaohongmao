package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import m8.h;

/* compiled from: functions.kt */
/* loaded from: classes4.dex */
final class FunctionsKt$IDENTITY$1 extends Lambda implements Function1<Object, Object> {
    public static final FunctionsKt$IDENTITY$1 INSTANCE = new FunctionsKt$IDENTITY$1();

    FunctionsKt$IDENTITY$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final Object invoke(@h Object obj) {
        return obj;
    }
}
