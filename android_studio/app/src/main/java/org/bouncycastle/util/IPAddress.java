package org.bouncycastle.util;

/* loaded from: classes5.dex */
public class IPAddress {
    private static boolean isMaskValue(String str, int i4) {
        try {
            int parseInt = Integer.parseInt(str);
            return parseInt >= 0 && parseInt <= i4;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean isValid(String str) {
        return isValidIPv4(str) || isValidIPv6(str);
    }

    public static boolean isValidIPv4(String str) {
        int indexOf;
        if (str.length() == 0) {
            return false;
        }
        String str2 = str + ".";
        int i4 = 0;
        int i10 = 0;
        while (i4 < str2.length() && (indexOf = str2.indexOf(46, i4)) > i4) {
            if (i10 == 4) {
                return false;
            }
            try {
                int parseInt = Integer.parseInt(str2.substring(i4, indexOf));
                if (parseInt >= 0 && parseInt <= 255) {
                    i4 = indexOf + 1;
                    i10++;
                }
            } catch (NumberFormatException unused) {
            }
            return false;
        }
        return i10 == 4;
    }

    public static boolean isValidIPv4WithNetmask(String str) {
        int indexOf = str.indexOf("/");
        String substring = str.substring(indexOf + 1);
        if (indexOf <= 0 || !isValidIPv4(str.substring(0, indexOf))) {
            return false;
        }
        return isValidIPv4(substring) || isMaskValue(substring, 32);
    }

    public static boolean isValidIPv6(String str) {
        int indexOf;
        if (str.length() == 0) {
            return false;
        }
        String str2 = str + ":";
        int i4 = 0;
        int i10 = 0;
        boolean z9 = false;
        while (i4 < str2.length() && (indexOf = str2.indexOf(58, i4)) >= i4) {
            if (i10 == 8) {
                return false;
            }
            if (i4 != indexOf) {
                String substring = str2.substring(i4, indexOf);
                if (indexOf != str2.length() - 1 || substring.indexOf(46) <= 0) {
                    try {
                        int parseInt = Integer.parseInt(str2.substring(i4, indexOf), 16);
                        if (parseInt >= 0 && parseInt <= 65535) {
                        }
                    } catch (NumberFormatException unused) {
                    }
                    return false;
                } else if (!isValidIPv4(substring)) {
                    return false;
                } else {
                    i10++;
                }
            } else if (indexOf != 1 && indexOf != str2.length() - 1 && z9) {
                return false;
            } else {
                z9 = true;
            }
            i4 = indexOf + 1;
            i10++;
        }
        return i10 == 8 || z9;
    }

    public static boolean isValidIPv6WithNetmask(String str) {
        int indexOf = str.indexOf("/");
        String substring = str.substring(indexOf + 1);
        if (indexOf <= 0 || !isValidIPv6(str.substring(0, indexOf))) {
            return false;
        }
        return isValidIPv6(substring) || isMaskValue(substring, 128);
    }

    public static boolean isValidWithNetMask(String str) {
        return isValidIPv4WithNetmask(str) || isValidIPv6WithNetmask(str);
    }
}
