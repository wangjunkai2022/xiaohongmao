package com.qennnsad.aknkaksd.util;

import android.annotation.SuppressLint;
import com.facebook.common.callercontext.ContextChain;
import com.ksyun.media.player.KSYMediaMeta;
import com.qennnsad.aknkaksd.data.bean.LiveSummary;
import io.sentry.protocol.y;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DateUtilsl.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/qennnsad/aknkaksd/util/o;", "", "<init>", "()V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@SuppressLint({"SimpleDateFormat"})
/* loaded from: classes3.dex */
public final class o {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final a f54868a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private static final TimeZone f54869b = TimeZone.getTimeZone("Asia/Shanghai");
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final SimpleDateFormat f54870c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private static final SimpleDateFormat f54871d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private static final Date f54872e;

    /* compiled from: DateUtilsl.kt */
    @Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b)\u0010*J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u001a\u0010\u0007\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002J\u0016\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0007J\u0016\u0010\r\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\bH\u0007J\b\u0010\u000f\u001a\u00020\u000eH\u0007J\b\u0010\u0010\u001a\u00020\u000eH\u0007J\b\u0010\u0011\u001a\u00020\u000eH\u0007J\b\u0010\u0012\u001a\u00020\u000eH\u0007J\u000e\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u000eJ-\u0010\u0018\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0017\u001a\u0004\u0018\u00010\u000eH\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u000eH\u0007R\u001f\u0010\u001e\u001a\n \u001d*\u0004\u0018\u00010\u001c0\u001c8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010&\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010'¨\u0006+"}, d2 = {"Lcom/qennnsad/aknkaksd/util/o$a;", "", "", "s", "h", "date_str", KSYMediaMeta.IJKM_KEY_FORMAT, "a", "", "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;", "list", "", "f", "g", "", ContextChain.TAG_INFRA, "l", "k", "j", "dateInMillis", "b", y.b.f83916d, "date1", "date2", "e", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V", "millis", "c", "Ljava/util/TimeZone;", "kotlin.jvm.PlatformType", "TIMEZONE_CHN", "Ljava/util/TimeZone;", "d", "()Ljava/util/TimeZone;", "Ljava/util/Date;", "dateContainer", "Ljava/util/Date;", "Ljava/text/SimpleDateFormat;", "timerFormatH", "Ljava/text/SimpleDateFormat;", "timerFormatM", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final String a(@m8.h String str, @m8.h String str2) {
            try {
                return String.valueOf(new SimpleDateFormat(str2).parse(str).getTime() / 1000);
            } catch (Exception e4) {
                e4.printStackTrace();
                return "";
            }
        }

        @m8.g
        public final String b(long j4) {
            String format = DateFormat.getDateTimeInstance(3, 1).format(new Date(j4));
            Intrinsics.checkNotNullExpressionValue(format, "getDateTimeInstance(Date…Format.LONG).format(date)");
            return format;
        }

        @JvmStatic
        @m8.g
        public final String c(long j4) {
            SimpleDateFormat simpleDateFormat;
            if (j4 >= TimeUnit.HOURS.toMillis(1L)) {
                simpleDateFormat = o.f54870c;
            } else {
                simpleDateFormat = o.f54871d;
            }
            Date date = o.f54872e;
            date.setTime(j4);
            String format = simpleDateFormat.format(date);
            Intrinsics.checkNotNullExpressionValue(format, "when (millis >= TimeUnit….apply { time = millis })");
            return format;
        }

        public final TimeZone d() {
            return o.f54869b;
        }

        @JvmStatic
        public final void e(@m8.h String str, @m8.h Long l10, @m8.h Long l11) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd MMM yyyy HH:mm:ss");
            simpleDateFormat.setTimeZone(d());
            String format = l10 == null ? "NULL" : simpleDateFormat.format(l10);
            String format2 = l11 != null ? simpleDateFormat.format(l11) : "NULL";
            Intrinsics.checkNotNull(str);
            o0.a(str, "yyy Start: " + format);
            o0.a(str, "yyy End: " + format2);
        }

        @JvmStatic
        public final void f(@m8.g List<LiveSummary> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            LinkedHashSet linkedHashSet = new LinkedHashSet(list.size());
            linkedHashSet.addAll(list);
            list.clear();
            list.addAll(linkedHashSet);
        }

        @JvmStatic
        public final void g(@m8.g List<Object> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            LinkedHashSet linkedHashSet = new LinkedHashSet(list.size());
            linkedHashSet.addAll(list);
            list.clear();
            list.addAll(linkedHashSet);
        }

        @m8.g
        public final String h(@m8.g String s9) {
            Intrinsics.checkNotNullParameter(s9, "s");
            String format = new SimpleDateFormat("yyyy-MM-dd").format(new Date(Long.parseLong(s9) * 1000));
            Intrinsics.checkNotNullExpressionValue(format, "simpleDateFormat.format(date)");
            return format;
        }

        @JvmStatic
        public final long i() {
            Calendar calendar = Calendar.getInstance(d());
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            return calendar.getTimeInMillis();
        }

        @JvmStatic
        public final long j() {
            return k() - TimeUnit.DAYS.toMillis(7L);
        }

        @JvmStatic
        public final long k() {
            Calendar calendar = Calendar.getInstance(d());
            calendar.setFirstDayOfWeek(2);
            calendar.set(7, 2);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            return calendar.getTimeInMillis();
        }

        @JvmStatic
        public final long l() {
            return i() - TimeUnit.DAYS.toMillis(1L);
        }
    }

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("hh:mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        f54870c = simpleDateFormat;
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("mm:ss");
        simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("UTC"));
        f54871d = simpleDateFormat2;
        f54872e = new Date();
    }

    @JvmStatic
    @m8.g
    public static final String e(long j4) {
        return f54868a.c(j4);
    }

    @JvmStatic
    public static final void f(@m8.h String str, @m8.h Long l10, @m8.h Long l11) {
        f54868a.e(str, l10, l11);
    }

    @JvmStatic
    public static final void g(@m8.g List<LiveSummary> list) {
        f54868a.f(list);
    }

    @JvmStatic
    public static final void h(@m8.g List<Object> list) {
        f54868a.g(list);
    }

    @JvmStatic
    public static final long i() {
        return f54868a.i();
    }

    @JvmStatic
    public static final long j() {
        return f54868a.j();
    }

    @JvmStatic
    public static final long k() {
        return f54868a.k();
    }

    @JvmStatic
    public static final long l() {
        return f54868a.l();
    }
}
