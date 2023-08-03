package shaded.org.apache.commons.codec.binary;

/* compiled from: CharSequenceUtils.java */
/* loaded from: classes5.dex */
public class k {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(CharSequence charSequence, boolean z9, int i4, CharSequence charSequence2, int i10, int i11) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return ((String) charSequence).regionMatches(z9, i4, (String) charSequence2, i10, i11);
        }
        while (true) {
            int i12 = i11 - 1;
            if (i11 <= 0) {
                return true;
            }
            int i13 = i4 + 1;
            char charAt = charSequence.charAt(i4);
            int i14 = i10 + 1;
            char charAt2 = charSequence2.charAt(i10);
            if (charAt != charAt2) {
                if (!z9) {
                    return false;
                }
                if (Character.toUpperCase(charAt) != Character.toUpperCase(charAt2) && Character.toLowerCase(charAt) != Character.toLowerCase(charAt2)) {
                    return false;
                }
            }
            i4 = i13;
            i11 = i12;
            i10 = i14;
        }
    }
}
