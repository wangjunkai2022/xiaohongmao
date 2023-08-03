package com.fasterxml.jackson.databind.util;

import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class StdDateFormat extends DateFormat {
    public static final String DATE_FORMAT_STR_ISO8601 = "yyyy-MM-dd'T'HH:mm:ss.SSSX";

    /* renamed from: g  reason: collision with root package name */
    protected static final String f15973g = "\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d";

    /* renamed from: h  reason: collision with root package name */
    protected static final Pattern f15974h = Pattern.compile(f15973g);

    /* renamed from: i  reason: collision with root package name */
    protected static final Pattern f15975i;
    public static final StdDateFormat instance;

    /* renamed from: j  reason: collision with root package name */
    protected static final String f15976j = "yyyy-MM-dd";

    /* renamed from: k  reason: collision with root package name */
    protected static final String f15977k = "EEE, dd MMM yyyy HH:mm:ss zzz";

    /* renamed from: l  reason: collision with root package name */
    protected static final String[] f15978l;

    /* renamed from: m  reason: collision with root package name */
    protected static final TimeZone f15979m;

    /* renamed from: n  reason: collision with root package name */
    protected static final Locale f15980n;

    /* renamed from: o  reason: collision with root package name */
    protected static final DateFormat f15981o;

    /* renamed from: p  reason: collision with root package name */
    protected static final Calendar f15982p;

    /* renamed from: a  reason: collision with root package name */
    protected transient TimeZone f15983a;

    /* renamed from: b  reason: collision with root package name */
    protected final Locale f15984b;

    /* renamed from: c  reason: collision with root package name */
    protected Boolean f15985c;

    /* renamed from: d  reason: collision with root package name */
    private transient Calendar f15986d;

    /* renamed from: e  reason: collision with root package name */
    private transient DateFormat f15987e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f15988f;

    static {
        try {
            f15975i = Pattern.compile("\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d[T]\\d\\d[:]\\d\\d(?:[:]\\d\\d)?(\\.\\d+)?(Z|[+-]\\d\\d(?:[:]?\\d\\d)?)?");
            f15978l = new String[]{DATE_FORMAT_STR_ISO8601, "yyyy-MM-dd'T'HH:mm:ss.SSS", f15977k, f15976j};
            TimeZone timeZone = TimeZone.getTimeZone("UTC");
            f15979m = timeZone;
            Locale locale = Locale.US;
            f15980n = locale;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(f15977k, locale);
            f15981o = simpleDateFormat;
            simpleDateFormat.setTimeZone(timeZone);
            instance = new StdDateFormat();
            f15982p = new GregorianCalendar(timeZone, locale);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public StdDateFormat() {
        this.f15988f = true;
        this.f15984b = f15980n;
    }

    private static final DateFormat b(DateFormat dateFormat, String str, TimeZone timeZone, Locale locale, Boolean bool) {
        DateFormat dateFormat2;
        if (!locale.equals(f15980n)) {
            dateFormat2 = new SimpleDateFormat(str, locale);
            if (timeZone == null) {
                timeZone = f15979m;
            }
            dateFormat2.setTimeZone(timeZone);
        } else {
            dateFormat2 = (DateFormat) dateFormat.clone();
            if (timeZone != null) {
                dateFormat2.setTimeZone(timeZone);
            }
        }
        if (bool != null) {
            dateFormat2.setLenient(bool.booleanValue());
        }
        return dateFormat2;
    }

    protected static <T> boolean c(T t9, T t10) {
        if (t9 == t10) {
            return true;
        }
        return t9 != null && t9.equals(t10);
    }

    public static TimeZone getDefaultTimeZone() {
        return f15979m;
    }

    @Deprecated
    public static DateFormat getISO8601Format(TimeZone timeZone, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DATE_FORMAT_STR_ISO8601, locale);
        simpleDateFormat.setTimeZone(f15979m);
        return simpleDateFormat;
    }

    @Deprecated
    public static DateFormat getRFC1123Format(TimeZone timeZone, Locale locale) {
        return b(f15981o, f15977k, timeZone, locale, null);
    }

    private static int i(String str, int i4) {
        return ((str.charAt(i4) - '0') * 10) + (str.charAt(i4 + 1) - '0');
    }

    private static int j(String str, int i4) {
        return ((str.charAt(i4) - '0') * 1000) + ((str.charAt(i4 + 1) - '0') * 100) + ((str.charAt(i4 + 2) - '0') * 10) + (str.charAt(i4 + 3) - '0');
    }

    private Date m(String str, ParsePosition parsePosition) throws ParseException {
        try {
            return new Date(com.fasterxml.jackson.core.io.g.l(str));
        } catch (NumberFormatException unused) {
            throw new ParseException(String.format("Timestamp value %s out of 64-bit value range", str), parsePosition.getErrorIndex());
        }
    }

    private static void o(StringBuffer stringBuffer, int i4) {
        int i10 = i4 / 10;
        if (i10 == 0) {
            stringBuffer.append('0');
        } else {
            stringBuffer.append((char) (i10 + 48));
            i4 -= i10 * 10;
        }
        stringBuffer.append((char) (i4 + 48));
    }

    private static void p(StringBuffer stringBuffer, int i4) {
        int i10 = i4 / 100;
        if (i10 == 0) {
            stringBuffer.append('0');
        } else {
            stringBuffer.append((char) (i10 + 48));
            i4 -= i10 * 100;
        }
        o(stringBuffer, i4);
    }

    private static void q(StringBuffer stringBuffer, int i4) {
        int i10 = i4 / 100;
        if (i10 == 0) {
            stringBuffer.append('0');
            stringBuffer.append('0');
        } else {
            if (i10 > 99) {
                stringBuffer.append(i10);
            } else {
                o(stringBuffer, i10);
            }
            i4 -= i10 * 100;
        }
        o(stringBuffer, i4);
    }

    protected void a() {
        this.f15987e = null;
    }

    protected void d(TimeZone timeZone, Locale locale, Date date, StringBuffer stringBuffer) {
        Calendar h4 = h(timeZone);
        h4.setTime(date);
        int i4 = h4.get(1);
        if (h4.get(0) == 0) {
            e(stringBuffer, i4);
        } else {
            if (i4 > 9999) {
                stringBuffer.append('+');
            }
            q(stringBuffer, i4);
        }
        stringBuffer.append(shaded.org.apache.commons.codec.language.l.f93713d);
        o(stringBuffer, h4.get(2) + 1);
        stringBuffer.append(shaded.org.apache.commons.codec.language.l.f93713d);
        o(stringBuffer, h4.get(5));
        stringBuffer.append('T');
        o(stringBuffer, h4.get(11));
        stringBuffer.append(':');
        o(stringBuffer, h4.get(12));
        stringBuffer.append(':');
        o(stringBuffer, h4.get(13));
        stringBuffer.append('.');
        p(stringBuffer, h4.get(14));
        int offset = timeZone.getOffset(h4.getTimeInMillis());
        if (offset != 0) {
            int i10 = offset / com.im.freechat.utils.e.f43748a;
            int abs = Math.abs(i10 / 60);
            int abs2 = Math.abs(i10 % 60);
            stringBuffer.append(offset < 0 ? shaded.org.apache.commons.codec.language.l.f93713d : '+');
            o(stringBuffer, abs);
            if (this.f15988f) {
                stringBuffer.append(':');
            }
            o(stringBuffer, abs2);
        } else if (this.f15988f) {
            stringBuffer.append("+00:00");
        } else {
            stringBuffer.append("+0000");
        }
    }

    protected void e(StringBuffer stringBuffer, int i4) {
        if (i4 == 1) {
            stringBuffer.append("+0000");
            return;
        }
        stringBuffer.append(shaded.org.apache.commons.codec.language.l.f93713d);
        q(stringBuffer, i4 - 1);
    }

    @Override // java.text.DateFormat
    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override // java.text.DateFormat
    public StringBuffer format(Date date, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        TimeZone timeZone = this.f15983a;
        if (timeZone == null) {
            timeZone = f15979m;
        }
        d(timeZone, this.f15984b, date, stringBuffer);
        return stringBuffer;
    }

    @Override // java.text.DateFormat
    public TimeZone getTimeZone() {
        return this.f15983a;
    }

    protected Calendar h(TimeZone timeZone) {
        Calendar calendar = this.f15986d;
        if (calendar == null) {
            calendar = (Calendar) f15982p.clone();
            this.f15986d = calendar;
        }
        if (!calendar.getTimeZone().equals(timeZone)) {
            calendar.setTimeZone(timeZone);
        }
        calendar.setLenient(isLenient());
        return calendar;
    }

    @Override // java.text.DateFormat
    public int hashCode() {
        return System.identityHashCode(this);
    }

    public boolean isColonIncludedInTimeZone() {
        return this.f15988f;
    }

    @Override // java.text.DateFormat
    public boolean isLenient() {
        Boolean bool = this.f15985c;
        return bool == null || bool.booleanValue();
    }

    protected Date k(String str, ParsePosition parsePosition) throws IllegalArgumentException, ParseException {
        char c10;
        String str2;
        int length = str.length();
        TimeZone timeZone = f15979m;
        if (this.f15983a != null && 'Z' != str.charAt(length - 1)) {
            timeZone = this.f15983a;
        }
        Calendar h4 = h(timeZone);
        h4.clear();
        int i4 = 0;
        if (length <= 10) {
            if (f15974h.matcher(str).matches()) {
                h4.set(j(str, 0), i(str, 5) - 1, i(str, 8), 0, 0, 0);
                h4.set(14, 0);
                return h4.getTime();
            }
            str2 = f15976j;
            c10 = 1;
        } else {
            Matcher matcher = f15975i.matcher(str);
            if (matcher.matches()) {
                int start = matcher.start(2);
                int end = matcher.end(2);
                int i10 = end - start;
                if (i10 > 1) {
                    int i11 = i(str, start + 1) * 3600;
                    if (i10 >= 5) {
                        i11 += i(str, end - 2) * 60;
                    }
                    h4.set(15, str.charAt(start) == '-' ? i11 * (-1000) : i11 * 1000);
                    h4.set(16, 0);
                }
                h4.set(j(str, 0), i(str, 5) - 1, i(str, 8), i(str, 11), i(str, 14), (length <= 16 || str.charAt(16) != ':') ? 0 : i(str, 17));
                int start2 = matcher.start(1) + 1;
                int end2 = matcher.end(1);
                if (start2 >= end2) {
                    h4.set(14, 0);
                } else {
                    int i12 = end2 - start2;
                    if (i12 != 0) {
                        if (i12 != 1) {
                            if (i12 != 2) {
                                if (i12 != 3 && i12 > 9) {
                                    throw new ParseException(String.format("Cannot parse date \"%s\": invalid fractional seconds '%s'; can use at most 9 digits", str, matcher.group(1).substring(1)), start2);
                                }
                                i4 = 0 + (str.charAt(start2 + 2) - '0');
                            }
                            i4 += (str.charAt(start2 + 1) - '0') * 10;
                        }
                        i4 += (str.charAt(start2) - '0') * 100;
                    }
                    h4.set(14, i4);
                }
                return h4.getTime();
            }
            c10 = 1;
            str2 = DATE_FORMAT_STR_ISO8601;
        }
        Object[] objArr = new Object[3];
        objArr[0] = str;
        objArr[c10] = str2;
        objArr[2] = this.f15985c;
        throw new ParseException(String.format("Cannot parse date \"%s\": while it seems to fit format '%s', parsing fails (leniency? %s)", objArr), 0);
    }

    protected Date l(String str, ParsePosition parsePosition) throws ParseException {
        if (n(str)) {
            return r(str, parsePosition);
        }
        int length = str.length();
        while (true) {
            length--;
            if (length < 0) {
                break;
            }
            char charAt = str.charAt(length);
            if (charAt < '0' || charAt > '9') {
                if (length > 0 || charAt != '-') {
                    break;
                }
            }
        }
        if (length < 0 && (str.charAt(0) == '-' || com.fasterxml.jackson.core.io.g.a(str, false))) {
            return m(str, parsePosition);
        }
        return s(str, parsePosition);
    }

    protected boolean n(String str) {
        return str.length() >= 7 && Character.isDigit(str.charAt(0)) && Character.isDigit(str.charAt(3)) && str.charAt(4) == '-' && Character.isDigit(str.charAt(5));
    }

    @Override // java.text.DateFormat
    public Date parse(String str) throws ParseException {
        String[] strArr;
        String trim = str.trim();
        ParsePosition parsePosition = new ParsePosition(0);
        Date l10 = l(trim, parsePosition);
        if (l10 != null) {
            return l10;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : f15978l) {
            if (sb.length() > 0) {
                sb.append("\", \"");
            } else {
                sb.append('\"');
            }
            sb.append(str2);
        }
        sb.append('\"');
        throw new ParseException(String.format("Cannot parse date \"%s\": not compatible with any of standard forms (%s)", trim, sb.toString()), parsePosition.getErrorIndex());
    }

    protected Date r(String str, ParsePosition parsePosition) throws ParseException {
        try {
            return k(str, parsePosition);
        } catch (IllegalArgumentException e4) {
            throw new ParseException(String.format("Cannot parse date \"%s\", problem: %s", str, e4.getMessage()), parsePosition.getErrorIndex());
        }
    }

    protected Date s(String str, ParsePosition parsePosition) {
        if (this.f15987e == null) {
            this.f15987e = b(f15981o, f15977k, this.f15983a, this.f15984b, this.f15985c);
        }
        return this.f15987e.parse(str, parsePosition);
    }

    @Override // java.text.DateFormat
    public void setLenient(boolean z9) {
        Boolean valueOf = Boolean.valueOf(z9);
        if (c(valueOf, this.f15985c)) {
            return;
        }
        this.f15985c = valueOf;
        a();
    }

    @Override // java.text.DateFormat
    public void setTimeZone(TimeZone timeZone) {
        if (timeZone.equals(this.f15983a)) {
            return;
        }
        a();
        this.f15983a = timeZone;
    }

    public String toPattern() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("[one of: '");
        sb.append(DATE_FORMAT_STR_ISO8601);
        sb.append("', '");
        sb.append(f15977k);
        sb.append("' (");
        sb.append(Boolean.FALSE.equals(this.f15985c) ? "strict" : "lenient");
        sb.append(")]");
        return sb.toString();
    }

    public String toString() {
        return String.format("DateFormat %s: (timezone: %s, locale: %s, lenient: %s)", getClass().getName(), this.f15983a, this.f15984b, this.f15985c);
    }

    public StdDateFormat withColonInTimeZone(boolean z9) {
        return this.f15988f == z9 ? this : new StdDateFormat(this.f15983a, this.f15984b, this.f15985c, z9);
    }

    public StdDateFormat withLenient(Boolean bool) {
        return c(bool, this.f15985c) ? this : new StdDateFormat(this.f15983a, this.f15984b, bool, this.f15988f);
    }

    public StdDateFormat withLocale(Locale locale) {
        return locale.equals(this.f15984b) ? this : new StdDateFormat(this.f15983a, locale, this.f15985c, this.f15988f);
    }

    public StdDateFormat withTimeZone(TimeZone timeZone) {
        if (timeZone == null) {
            timeZone = f15979m;
        }
        TimeZone timeZone2 = this.f15983a;
        return (timeZone == timeZone2 || timeZone.equals(timeZone2)) ? this : new StdDateFormat(timeZone, this.f15984b, this.f15985c, this.f15988f);
    }

    @Override // java.text.DateFormat, java.text.Format
    public StdDateFormat clone() {
        return new StdDateFormat(this.f15983a, this.f15984b, this.f15985c, this.f15988f);
    }

    @Deprecated
    public StdDateFormat(TimeZone timeZone, Locale locale) {
        this.f15988f = true;
        this.f15983a = timeZone;
        this.f15984b = locale;
    }

    protected StdDateFormat(TimeZone timeZone, Locale locale, Boolean bool) {
        this(timeZone, locale, bool, false);
    }

    protected StdDateFormat(TimeZone timeZone, Locale locale, Boolean bool, boolean z9) {
        this.f15983a = timeZone;
        this.f15984b = locale;
        this.f15985c = bool;
        this.f15988f = z9;
    }

    @Override // java.text.DateFormat
    public Date parse(String str, ParsePosition parsePosition) {
        try {
            return l(str, parsePosition);
        } catch (ParseException unused) {
            return null;
        }
    }
}
