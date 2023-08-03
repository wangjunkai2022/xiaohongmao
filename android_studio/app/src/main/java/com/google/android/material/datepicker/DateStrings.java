package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.text.format.DateUtils;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes2.dex */
class DateStrings {
    private DateStrings() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Pair<String, String> getDateRangeString(@Nullable Long l10, @Nullable Long l11) {
        return getDateRangeString(l10, l11, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getDateString(long j4) {
        return getDateString(j4, null);
    }

    static String getMonthDay(long j4) {
        return getMonthDay(j4, Locale.getDefault());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getMonthDayOfWeekDay(long j4) {
        return getMonthDayOfWeekDay(j4, Locale.getDefault());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getYearMonth(Context context, long j4) {
        return DateUtils.formatDateTime(context, j4 - TimeZone.getDefault().getOffset(j4), 36);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getYearMonthDay(long j4) {
        return getYearMonthDay(j4, Locale.getDefault());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getYearMonthDayOfWeekDay(long j4) {
        return getYearMonthDayOfWeekDay(j4, Locale.getDefault());
    }

    static Pair<String, String> getDateRangeString(@Nullable Long l10, @Nullable Long l11, @Nullable SimpleDateFormat simpleDateFormat) {
        if (l10 == null && l11 == null) {
            return Pair.create(null, null);
        }
        if (l10 == null) {
            return Pair.create(null, getDateString(l11.longValue(), simpleDateFormat));
        }
        if (l11 == null) {
            return Pair.create(getDateString(l10.longValue(), simpleDateFormat), null);
        }
        Calendar todayCalendar = UtcDates.getTodayCalendar();
        Calendar utcCalendar = UtcDates.getUtcCalendar();
        utcCalendar.setTimeInMillis(l10.longValue());
        Calendar utcCalendar2 = UtcDates.getUtcCalendar();
        utcCalendar2.setTimeInMillis(l11.longValue());
        if (simpleDateFormat != null) {
            return Pair.create(simpleDateFormat.format(new Date(l10.longValue())), simpleDateFormat.format(new Date(l11.longValue())));
        } else if (utcCalendar.get(1) == utcCalendar2.get(1)) {
            if (utcCalendar.get(1) == todayCalendar.get(1)) {
                return Pair.create(getMonthDay(l10.longValue(), Locale.getDefault()), getMonthDay(l11.longValue(), Locale.getDefault()));
            }
            return Pair.create(getMonthDay(l10.longValue(), Locale.getDefault()), getYearMonthDay(l11.longValue(), Locale.getDefault()));
        } else {
            return Pair.create(getYearMonthDay(l10.longValue(), Locale.getDefault()), getYearMonthDay(l11.longValue(), Locale.getDefault()));
        }
    }

    static String getDateString(long j4, @Nullable SimpleDateFormat simpleDateFormat) {
        Calendar todayCalendar = UtcDates.getTodayCalendar();
        Calendar utcCalendar = UtcDates.getUtcCalendar();
        utcCalendar.setTimeInMillis(j4);
        if (simpleDateFormat != null) {
            return simpleDateFormat.format(new Date(j4));
        }
        if (todayCalendar.get(1) == utcCalendar.get(1)) {
            return getMonthDay(j4);
        }
        return getYearMonthDay(j4);
    }

    static String getMonthDay(long j4, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return UtcDates.getAbbrMonthDayFormat(locale).format(new Date(j4));
        }
        return UtcDates.getMediumNoYear(locale).format(new Date(j4));
    }

    static String getMonthDayOfWeekDay(long j4, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return UtcDates.getAbbrMonthWeekdayDayFormat(locale).format(new Date(j4));
        }
        return UtcDates.getFullFormat(locale).format(new Date(j4));
    }

    static String getYearMonthDay(long j4, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return UtcDates.getYearAbbrMonthDayFormat(locale).format(new Date(j4));
        }
        return UtcDates.getMediumFormat(locale).format(new Date(j4));
    }

    static String getYearMonthDayOfWeekDay(long j4, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return UtcDates.getYearAbbrMonthWeekdayDayFormat(locale).format(new Date(j4));
        }
        return UtcDates.getFullFormat(locale).format(new Date(j4));
    }
}
