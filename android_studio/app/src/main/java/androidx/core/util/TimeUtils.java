package androidx.core.util;

import androidx.annotation.RestrictTo;
import java.io.PrintWriter;
import shaded.org.apache.commons.codec.language.l;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class TimeUtils {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[24];

    private TimeUtils() {
    }

    private static int accumField(int i4, int i10, boolean z9, int i11) {
        if (i4 > 99 || (z9 && i11 >= 3)) {
            return i10 + 3;
        }
        if (i4 > 9 || (z9 && i11 >= 2)) {
            return i10 + 2;
        }
        if (z9 || i4 > 0) {
            return i10 + 1;
        }
        return 0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j4, StringBuilder sb) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, formatDurationLocked(j4, 0));
        }
    }

    private static int formatDurationLocked(long j4, int i4) {
        char c10;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        long j10 = j4;
        if (sFormatStr.length < i4) {
            sFormatStr = new char[i4];
        }
        char[] cArr = sFormatStr;
        int i15 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i15 == 0) {
            int i16 = i4 - 1;
            while (i16 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (i15 > 0) {
            c10 = '+';
        } else {
            c10 = l.f93713d;
            j10 = -j10;
        }
        int i17 = (int) (j10 % 1000);
        int floor = (int) Math.floor(j10 / 1000);
        if (floor > SECONDS_PER_DAY) {
            i10 = floor / SECONDS_PER_DAY;
            floor -= SECONDS_PER_DAY * i10;
        } else {
            i10 = 0;
        }
        if (floor > SECONDS_PER_HOUR) {
            i11 = floor / SECONDS_PER_HOUR;
            floor -= i11 * SECONDS_PER_HOUR;
        } else {
            i11 = 0;
        }
        if (floor > 60) {
            int i18 = floor / 60;
            i12 = floor - (i18 * 60);
            i13 = i18;
        } else {
            i12 = floor;
            i13 = 0;
        }
        if (i4 != 0) {
            int accumField = accumField(i10, 1, false, 0);
            int accumField2 = accumField + accumField(i11, 1, accumField > 0, 2);
            int accumField3 = accumField2 + accumField(i13, 1, accumField2 > 0, 2);
            int accumField4 = accumField3 + accumField(i12, 1, accumField3 > 0, 2);
            i14 = 0;
            for (int accumField5 = accumField4 + accumField(i17, 2, true, accumField4 > 0 ? 3 : 0) + 1; accumField5 < i4; accumField5++) {
                cArr[i14] = ' ';
                i14++;
            }
        } else {
            i14 = 0;
        }
        cArr[i14] = c10;
        int i19 = i14 + 1;
        boolean z9 = i4 != 0;
        int printField = printField(cArr, i10, 'd', i19, false, 0);
        int printField2 = printField(cArr, i11, 'h', printField, printField != i19, z9 ? 2 : 0);
        int printField3 = printField(cArr, i13, 'm', printField2, printField2 != i19, z9 ? 2 : 0);
        int printField4 = printField(cArr, i12, 's', printField3, printField3 != i19, z9 ? 2 : 0);
        int printField5 = printField(cArr, i17, 'm', printField4, true, (!z9 || printField4 == i19) ? 0 : 3);
        cArr[printField5] = 's';
        return printField5 + 1;
    }

    private static int printField(char[] cArr, int i4, char c10, int i10, boolean z9, int i11) {
        int i12;
        if (z9 || i4 > 0) {
            if ((!z9 || i11 < 3) && i4 <= 99) {
                i12 = i10;
            } else {
                int i13 = i4 / 100;
                cArr[i10] = (char) (i13 + 48);
                i12 = i10 + 1;
                i4 -= i13 * 100;
            }
            if ((z9 && i11 >= 2) || i4 > 9 || i10 != i12) {
                int i14 = i4 / 10;
                cArr[i12] = (char) (i14 + 48);
                i12++;
                i4 -= i14 * 10;
            }
            cArr[i12] = (char) (i4 + 48);
            int i15 = i12 + 1;
            cArr[i15] = c10;
            return i15 + 1;
        }
        return i10;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j4, PrintWriter printWriter, int i4) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j4, i4)));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j4, PrintWriter printWriter) {
        formatDuration(j4, printWriter, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j4, long j10, PrintWriter printWriter) {
        if (j4 == 0) {
            printWriter.print(com.qennnsad.aknkaksd.presentation.module.main.profile.l.f51916a);
        } else {
            formatDuration(j4 - j10, printWriter, 0);
        }
    }
}
