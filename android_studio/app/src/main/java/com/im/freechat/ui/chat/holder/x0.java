package com.im.freechat.ui.chat.holder;

import java.text.StringCharacterIterator;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* compiled from: VideoMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\t\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¨\u0006\u0003"}, d2 = {"", "", "a", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class x0 {
    @m8.g
    public static final String a(long j4) {
        long abs = j4 == Long.MIN_VALUE ? Long.MAX_VALUE : Math.abs(j4);
        if (abs < 1024) {
            return j4 + " B";
        }
        StringCharacterIterator stringCharacterIterator = new StringCharacterIterator("KMGTPE");
        long j10 = abs;
        for (int i4 = 40; i4 >= 0 && abs > (1152865209611504844 >> i4); i4 -= 10) {
            j10 >>= 10;
            stringCharacterIterator.next();
        }
        long signum = j10 * Long.signum(j4);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%.1f %ciB", Arrays.copyOf(new Object[]{Double.valueOf(signum / 1024.0d), Character.valueOf(stringCharacterIterator.current())}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }
}
