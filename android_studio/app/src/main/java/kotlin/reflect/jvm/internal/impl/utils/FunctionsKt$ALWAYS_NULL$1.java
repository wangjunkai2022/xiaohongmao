package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import m8.h;

/* compiled from: functions.kt */
/* loaded from: classes4.dex */
final class FunctionsKt$ALWAYS_NULL$1 extends Lambda implements Function1 {
    public static final FunctionsKt$ALWAYS_NULL$1 INSTANCE = new FunctionsKt$ALWAYS_NULL$1();

    FunctionsKt$ALWAYS_NULL$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final Void invoke(@h Object obj) {
        return null;
    }
}
