package shaded.org.apache.commons.codec.language;

import java.util.Locale;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: SoundexUtils.java */
/* loaded from: classes5.dex */
final class m {
    m() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        int length = str.length();
        char[] cArr = new char[length];
        int i4 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            if (Character.isLetter(str.charAt(i10))) {
                cArr[i4] = str.charAt(i10);
                i4++;
            }
        }
        if (i4 == length) {
            return str.toUpperCase(Locale.ENGLISH);
        }
        return new String(cArr, 0, i4).toUpperCase(Locale.ENGLISH);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(h9.h hVar, String str, String str2) throws EncoderException {
        return c(hVar.c(str), hVar.c(str2));
    }

    static int c(String str, String str2) {
        if (str == null || str2 == null) {
            return 0;
        }
        int min = Math.min(str.length(), str2.length());
        int i4 = 0;
        for (int i10 = 0; i10 < min; i10++) {
            if (str.charAt(i10) == str2.charAt(i10)) {
                i4++;
            }
        }
        return i4;
    }
}
