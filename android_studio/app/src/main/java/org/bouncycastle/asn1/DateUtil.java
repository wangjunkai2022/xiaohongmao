package org.bouncycastle.asn1;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes4.dex */
class DateUtil {
    private static Long ZERO = longValueOf(0);
    private static final Map localeCache = new HashMap();
    static Locale EN_Locale = forEN();

    DateUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Date epochAdjust(Date date) throws ParseException {
        Locale locale = Locale.getDefault();
        if (locale == null) {
            return date;
        }
        Map map = localeCache;
        synchronized (map) {
            Long l10 = (Long) map.get(locale);
            if (l10 == null) {
                long time = new SimpleDateFormat("yyyyMMddHHmmssz").parse("19700101000000GMT+00:00").getTime();
                l10 = time == 0 ? ZERO : longValueOf(time);
                map.put(locale, l10);
            }
            if (l10 != ZERO) {
                return new Date(date.getTime() - l10.longValue());
            }
            return date;
        }
    }

    private static Locale forEN() {
        if ("en".equalsIgnoreCase(Locale.getDefault().getLanguage())) {
            return Locale.getDefault();
        }
        Locale[] availableLocales = Locale.getAvailableLocales();
        for (int i4 = 0; i4 != availableLocales.length; i4++) {
            if ("en".equalsIgnoreCase(availableLocales[i4].getLanguage())) {
                return availableLocales[i4];
            }
        }
        return Locale.getDefault();
    }

    private static Long longValueOf(long j4) {
        return Long.valueOf(j4);
    }
}
