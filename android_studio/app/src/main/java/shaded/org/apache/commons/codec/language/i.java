package shaded.org.apache.commons.codec.language;

import java.util.Locale;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: Metaphone.java */
/* loaded from: classes5.dex */
public class i implements h9.h {

    /* renamed from: b  reason: collision with root package name */
    private static final String f93686b = "AEIOU";

    /* renamed from: c  reason: collision with root package name */
    private static final String f93687c = "EIY";

    /* renamed from: d  reason: collision with root package name */
    private static final String f93688d = "CSPTG";

    /* renamed from: a  reason: collision with root package name */
    private int f93689a = 4;

    private boolean d(int i4, int i10) {
        return i10 + 1 == i4;
    }

    private boolean g(StringBuilder sb, int i4, char c10) {
        return i4 >= 0 && i4 < sb.length() - 1 && sb.charAt(i4 + 1) == c10;
    }

    private boolean h(StringBuilder sb, int i4, char c10) {
        return i4 > 0 && i4 < sb.length() && sb.charAt(i4 - 1) == c10;
    }

    private boolean i(StringBuilder sb, int i4) {
        return f93686b.indexOf(sb.charAt(i4)) >= 0;
    }

    private boolean k(StringBuilder sb, int i4, String str) {
        if (i4 < 0 || (str.length() + i4) - 1 >= sb.length()) {
            return false;
        }
        return sb.substring(i4, str.length() + i4).equals(str);
    }

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return j((String) obj);
        }
        throw new EncoderException("Parameter supplied to Metaphone encode is not of type java.lang.String");
    }

    public int b() {
        return this.f93689a;
    }

    @Override // h9.h
    public String c(String str) {
        return j(str);
    }

    public boolean f(String str, String str2) {
        return j(str).equals(j(str2));
    }

    public String j(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return "";
        }
        if (length == 1) {
            return str.toUpperCase(Locale.ENGLISH);
        }
        char[] charArray = str.toUpperCase(Locale.ENGLISH).toCharArray();
        StringBuilder sb = new StringBuilder(40);
        StringBuilder sb2 = new StringBuilder(10);
        int i4 = 0;
        char c10 = charArray[0];
        if (c10 != 'A') {
            if (c10 == 'G' || c10 == 'K' || c10 == 'P') {
                if (charArray[1] == 'N') {
                    sb.append(charArray, 1, charArray.length - 1);
                } else {
                    sb.append(charArray);
                }
            } else if (c10 != 'W') {
                if (c10 != 'X') {
                    sb.append(charArray);
                } else {
                    charArray[0] = 'S';
                    sb.append(charArray);
                }
            } else if (charArray[1] == 'R') {
                sb.append(charArray, 1, charArray.length - 1);
            } else if (charArray[1] == 'H') {
                sb.append(charArray, 1, charArray.length - 1);
                sb.setCharAt(0, 'W');
            } else {
                sb.append(charArray);
            }
        } else if (charArray[1] == 'E') {
            sb.append(charArray, 1, charArray.length - 1);
        } else {
            sb.append(charArray);
        }
        int length2 = sb.length();
        while (sb2.length() < b() && i4 < length2) {
            char charAt = sb.charAt(i4);
            if (charAt == 'C' || !h(sb, i4, charAt)) {
                switch (charAt) {
                    case 'A':
                    case 'E':
                    case 'I':
                    case 'O':
                    case 'U':
                        if (i4 == 0) {
                            sb2.append(charAt);
                            break;
                        }
                        break;
                    case 'B':
                        if (!h(sb, i4, 'M') || !d(length2, i4)) {
                            sb2.append(charAt);
                            break;
                        }
                        break;
                    case 'C':
                        if (!h(sb, i4, 'S') || d(length2, i4) || f93687c.indexOf(sb.charAt(i4 + 1)) < 0) {
                            if (k(sb, i4, "CIA")) {
                                sb2.append('X');
                                break;
                            } else if (!d(length2, i4) && f93687c.indexOf(sb.charAt(i4 + 1)) >= 0) {
                                sb2.append('S');
                                break;
                            } else if (h(sb, i4, 'S') && g(sb, i4, 'H')) {
                                sb2.append('K');
                                break;
                            } else if (g(sb, i4, 'H')) {
                                if (i4 == 0 && length2 >= 3 && i(sb, 2)) {
                                    sb2.append('K');
                                    break;
                                } else {
                                    sb2.append('X');
                                    break;
                                }
                            } else {
                                sb2.append('K');
                                break;
                            }
                        }
                        break;
                    case 'D':
                        if (!d(length2, i4 + 1) && g(sb, i4, 'G')) {
                            int i10 = i4 + 2;
                            if (f93687c.indexOf(sb.charAt(i10)) >= 0) {
                                sb2.append('J');
                                i4 = i10;
                                break;
                            }
                        }
                        sb2.append('T');
                        break;
                    case 'F':
                    case 'J':
                    case 'L':
                    case 'M':
                    case 'N':
                    case 'R':
                        sb2.append(charAt);
                        break;
                    case 'G':
                        int i11 = i4 + 1;
                        if ((!d(length2, i11) || !g(sb, i4, 'H')) && ((d(length2, i11) || !g(sb, i4, 'H') || i(sb, i4 + 2)) && (i4 <= 0 || (!k(sb, i4, "GN") && !k(sb, i4, "GNED"))))) {
                            boolean h4 = h(sb, i4, 'G');
                            if (!d(length2, i4) && f93687c.indexOf(sb.charAt(i11)) >= 0 && !h4) {
                                sb2.append('J');
                                break;
                            } else {
                                sb2.append('K');
                                break;
                            }
                        }
                        break;
                    case 'H':
                        if (!d(length2, i4) && ((i4 <= 0 || f93688d.indexOf(sb.charAt(i4 - 1)) < 0) && i(sb, i4 + 1))) {
                            sb2.append('H');
                            break;
                        }
                        break;
                    case 'K':
                        if (i4 > 0) {
                            if (!h(sb, i4, 'C')) {
                                sb2.append(charAt);
                                break;
                            }
                        } else {
                            sb2.append(charAt);
                            break;
                        }
                        break;
                    case 'P':
                        if (g(sb, i4, 'H')) {
                            sb2.append('F');
                            break;
                        } else {
                            sb2.append(charAt);
                            break;
                        }
                    case 'Q':
                        sb2.append('K');
                        break;
                    case 'S':
                        if (!k(sb, i4, "SH") && !k(sb, i4, "SIO") && !k(sb, i4, "SIA")) {
                            sb2.append('S');
                            break;
                        } else {
                            sb2.append('X');
                            break;
                        }
                        break;
                    case 'T':
                        if (!k(sb, i4, "TIA") && !k(sb, i4, "TIO")) {
                            if (!k(sb, i4, "TCH")) {
                                if (k(sb, i4, "TH")) {
                                    sb2.append('0');
                                    break;
                                } else {
                                    sb2.append('T');
                                    break;
                                }
                            }
                        } else {
                            sb2.append('X');
                            break;
                        }
                        break;
                    case 'V':
                        sb2.append('F');
                        break;
                    case 'W':
                    case 'Y':
                        if (!d(length2, i4) && i(sb, i4 + 1)) {
                            sb2.append(charAt);
                            break;
                        }
                        break;
                    case 'X':
                        sb2.append('K');
                        sb2.append('S');
                        break;
                    case 'Z':
                        sb2.append('S');
                        break;
                }
                i4++;
            } else {
                i4++;
            }
            if (sb2.length() > b()) {
                sb2.setLength(b());
            }
        }
        return sb2.toString();
    }

    public void l(int i4) {
        this.f93689a = i4;
    }
}
