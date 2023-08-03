package com.im.freechat.extend;

import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LongExtensions.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0010\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\u0012\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000\u001a\u001a\u0010\t\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006\"\u0014\u0010\r\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\f\"\u0014\u0010\u000e\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\f\"\u0014\u0010\u000f\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0002\u0010\f\"\u0017\u0010\u0013\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\t\u0010\u0011\u001a\u0004\b\u000b\u0010\u0012¨\u0006\u0014"}, d2 = {"", "", "c", "flag", "", "b", "", "dateType", "timeType", "d", "", "a", "F", "KILO", "MEGA", "GIGA", "Ljava/text/NumberFormat;", "Ljava/text/NumberFormat;", "()Ljava/text/NumberFormat;", "formatter", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final float f41949a = 1000.0f;

    /* renamed from: b  reason: collision with root package name */
    public static final float f41950b = 1000000.0f;

    /* renamed from: c  reason: collision with root package name */
    public static final float f41951c = 1.0E9f;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private static final NumberFormat f41952d;

    static {
        NumberFormat numberFormat = NumberFormat.getInstance();
        numberFormat.setMinimumFractionDigits(1);
        numberFormat.setMaximumFractionDigits(2);
        Intrinsics.checkNotNullExpressionValue(numberFormat, "getInstance().apply {\n  …ximumFractionDigits = 2\n}");
        f41952d = numberFormat;
    }

    @m8.g
    public static final NumberFormat a() {
        return f41952d;
    }

    public static final boolean b(long j4, long j10) {
        return (j4 & j10) == j10;
    }

    @m8.g
    public static final String c(long j4) {
        float f10 = (float) j4;
        if (f10 >= 1.0E9f) {
            return f41952d.format(Float.valueOf(f10 / 1.0E9f)) + "MB";
        } else if (f10 >= 1000000.0f) {
            return f41952d.format(Float.valueOf(f10 / 1000000.0f)) + "MB";
        } else if (f10 >= 1000.0f) {
            return f41952d.format(Float.valueOf(f10 / 1000.0f)) + "KB";
        } else {
            return f41952d.format(j4) + 'B';
        }
    }

    @m8.g
    public static final String d(long j4, int i4, int i10) {
        String format = SimpleDateFormat.getDateTimeInstance(i4, i10).format(new Date(j4));
        Intrinsics.checkNotNullExpressionValue(format, "getDateTimeInstance(date…eType).format(Date(this))");
        return format;
    }
}
