package com.im.freechat.utils;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import timber.log.Timber;

/* compiled from: LogDebugTree.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¨\u0006\b"}, d2 = {"Lcom/im/freechat/utils/j;", "Ltimber/log/Timber$a;", "Ljava/lang/StackTraceElement;", "element", "", "D", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j extends Timber.a {
    @Override // timber.log.Timber.a
    @m8.g
    protected String D(@m8.g StackTraceElement element) {
        Intrinsics.checkNotNullParameter(element, "element");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("(%s:%s)#%s", Arrays.copyOf(new Object[]{element.getFileName(), "", ""}, 3));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }
}
