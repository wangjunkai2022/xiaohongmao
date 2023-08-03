package g2;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: DateExtensions.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001c\u0010\u0005\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¨\u0006\u0006"}, d2 = {"Ljava/util/Date;", "", "dateFormat", "Ljava/util/TimeZone;", "timeZone", "a", "giphy-ui-2.1.9_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class b {
    @g
    public static final String a(@g Date toString, @g String dateFormat, @g TimeZone timeZone) {
        Intrinsics.checkNotNullParameter(toString, "$this$toString");
        Intrinsics.checkNotNullParameter(dateFormat, "dateFormat");
        Intrinsics.checkNotNullParameter(timeZone, "timeZone");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(dateFormat, Locale.getDefault());
        simpleDateFormat.setTimeZone(timeZone);
        String format = simpleDateFormat.format(toString);
        Intrinsics.checkNotNullExpressionValue(format, "formatter.format(this)");
        return format;
    }

    public static /* synthetic */ String b(Date date, String str, TimeZone timeZone, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            timeZone = TimeZone.getTimeZone("UTC");
            Intrinsics.checkNotNullExpressionValue(timeZone, "TimeZone.getTimeZone(\"UTC\")");
        }
        return a(date, str, timeZone);
    }
}
