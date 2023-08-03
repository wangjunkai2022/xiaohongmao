package shaded.org.apache.commons.codec.language;

import androidx.exifinterface.media.ExifInterface;
import java.util.Locale;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: DoubleMetaphone.java */
/* loaded from: classes5.dex */
public class g implements h9.h {

    /* renamed from: b  reason: collision with root package name */
    private static final String f93662b = "AEIOUY";

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f93663c = {"GN", "KN", "PN", "WR", "PS"};

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f93664d = {"L", "R", "N", "M", "B", "H", "F", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, " "};

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f93665e = {"ES", "EP", "EB", "EL", "EY", "IB", "IL", "IN", "IE", "EI", "ER"};

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f93666f = {"L", ExifInterface.GPS_DIRECTION_TRUE, "K", ExifInterface.LATITUDE_SOUTH, "N", "M", "B", "Z"};

    /* renamed from: a  reason: collision with root package name */
    private int f93667a = 4;

    /* compiled from: DoubleMetaphone.java */
    /* loaded from: classes5.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        private final StringBuilder f93668a;

        /* renamed from: b  reason: collision with root package name */
        private final StringBuilder f93669b;

        /* renamed from: c  reason: collision with root package name */
        private final int f93670c;

        public a(int i4) {
            this.f93668a = new StringBuilder(g.this.n());
            this.f93669b = new StringBuilder(g.this.n());
            this.f93670c = i4;
        }

        public void a(char c10) {
            g(c10);
            e(c10);
        }

        public void b(char c10, char c11) {
            g(c10);
            e(c11);
        }

        public void c(String str) {
            h(str);
            f(str);
        }

        public void d(String str, String str2) {
            h(str);
            f(str2);
        }

        public void e(char c10) {
            if (this.f93669b.length() < this.f93670c) {
                this.f93669b.append(c10);
            }
        }

        public void f(String str) {
            int length = this.f93670c - this.f93669b.length();
            if (str.length() <= length) {
                this.f93669b.append(str);
            } else {
                this.f93669b.append(str.substring(0, length));
            }
        }

        public void g(char c10) {
            if (this.f93668a.length() < this.f93670c) {
                this.f93668a.append(c10);
            }
        }

        public void h(String str) {
            int length = this.f93670c - this.f93668a.length();
            if (str.length() <= length) {
                this.f93668a.append(str);
            } else {
                this.f93668a.append(str.substring(0, length));
            }
        }

        public String i() {
            return this.f93669b.toString();
        }

        public String j() {
            return this.f93668a.toString();
        }

        public boolean k() {
            return this.f93668a.length() >= this.f93670c && this.f93669b.length() >= this.f93670c;
        }
    }

    private int A(String str, a aVar, int i4, boolean z9) {
        if (!k(str, i4 - 1, 3, "ISL", "YSL")) {
            if (i4 == 0 && k(str, i4, 5, "SUGAR")) {
                aVar.b('X', 'S');
            } else {
                if (k(str, i4, 2, "SH")) {
                    if (k(str, i4 + 1, 4, "HEIM", "HOEK", "HOLM", "HOLZ")) {
                        aVar.a('S');
                    } else {
                        aVar.a('X');
                    }
                } else if (k(str, i4, 3, "SIO", "SIA") || k(str, i4, 4, "SIAN")) {
                    if (z9) {
                        aVar.a('S');
                    } else {
                        aVar.b('S', 'X');
                    }
                    return i4 + 3;
                } else {
                    if (i4 != 0 || !k(str, i4 + 1, 1, "M", "N", "L", ExifInterface.LONGITUDE_WEST)) {
                        int i10 = i4 + 1;
                        if (!k(str, i10, 1, "Z")) {
                            if (k(str, i4, 2, "SC")) {
                                return B(str, aVar, i4);
                            }
                            if (i4 == str.length() - 1 && k(str, i4 - 2, 2, "AI", "OI")) {
                                aVar.e('S');
                            } else {
                                aVar.a('S');
                            }
                            if (!k(str, i10, 1, ExifInterface.LATITUDE_SOUTH, "Z")) {
                                return i10;
                            }
                        }
                    }
                    aVar.b('S', 'X');
                    int i11 = i4 + 1;
                    if (!k(str, i11, 1, "Z")) {
                        return i11;
                    }
                }
                return i4 + 2;
            }
        }
        return i4 + 1;
    }

    private int B(String str, a aVar, int i4) {
        int i10 = i4 + 2;
        if (b(str, i10) == 'H') {
            int i11 = i4 + 3;
            if (k(str, i11, 2, "OO", "ER", "EN", "UY", "ED", "EM")) {
                if (k(str, i11, 2, "ER", "EN")) {
                    aVar.d("X", "SK");
                } else {
                    aVar.c("SK");
                }
            } else if (i4 == 0 && !K(b(str, 3)) && b(str, 3) != 'W') {
                aVar.b('X', 'S');
            } else {
                aVar.a('X');
            }
        } else if (k(str, i10, 1, "I", ExifInterface.LONGITUDE_EAST, "Y")) {
            aVar.a('S');
        } else {
            aVar.c("SK");
        }
        return i4 + 3;
    }

    private int C(String str, a aVar, int i4) {
        if (k(str, i4, 4, "TION")) {
            aVar.a('X');
        } else if (k(str, i4, 3, "TIA", "TCH")) {
            aVar.a('X');
        } else if (!k(str, i4, 2, "TH") && !k(str, i4, 3, "TTH")) {
            aVar.a('T');
            int i10 = i4 + 1;
            return k(str, i10, 1, ExifInterface.GPS_DIRECTION_TRUE, "D") ? i4 + 2 : i10;
        } else {
            int i11 = i4 + 2;
            if (!k(str, i11, 2, "OM", "AM") && !k(str, 0, 4, "VAN ", "VON ") && !k(str, 0, 3, "SCH")) {
                aVar.b('0', 'T');
                return i11;
            }
            aVar.a('T');
            return i11;
        }
        return i4 + 3;
    }

    private int D(String str, a aVar, int i4) {
        int i10 = 2;
        if (k(str, i4, 2, "WR")) {
            aVar.a(Matrix.MATRIX_TYPE_RANDOM_REGULAR);
        } else {
            if (i4 == 0) {
                int i11 = i4 + 1;
                if (K(b(str, i11)) || k(str, i4, 2, "WH")) {
                    if (K(b(str, i11))) {
                        aVar.b('A', 'F');
                    } else {
                        aVar.a('A');
                    }
                    return i11;
                }
            }
            if ((i4 != str.length() - 1 || !K(b(str, i4 - 1))) && !k(str, i4 - 1, 5, "EWSKI", "EWSKY", "OWSKI", "OWSKY") && !k(str, 0, 3, "SCH")) {
                i10 = 4;
                if (k(str, i4, 4, "WICZ", "WITZ")) {
                    aVar.d("TS", "FX");
                }
            } else {
                aVar.e('F');
            }
            return i4 + 1;
        }
        return i4 + i10;
    }

    private int E(String str, a aVar, int i4) {
        if (i4 == 0) {
            aVar.a('S');
            return i4 + 1;
        }
        if (i4 != str.length() - 1 || (!k(str, i4 - 3, 3, "IAU", "EAU") && !k(str, i4 - 2, 2, "AU", "OU"))) {
            aVar.c("KS");
        }
        int i10 = i4 + 1;
        return k(str, i10, 1, "C", "X") ? i4 + 2 : i10;
    }

    private int F(String str, a aVar, int i4, boolean z9) {
        int i10 = i4 + 1;
        if (b(str, i10) == 'H') {
            aVar.a('J');
            return i4 + 2;
        }
        if (!k(str, i10, 2, "ZO", "ZI", "ZA") && (!z9 || i4 <= 0 || b(str, i4 - 1) == 'T')) {
            aVar.a('S');
        } else {
            aVar.d(ExifInterface.LATITUDE_SOUTH, "TS");
        }
        if (b(str, i10) == 'Z') {
            i10 = i4 + 2;
        }
        return i10;
    }

    private boolean I(String str) {
        for (String str2 : f93663c) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    private boolean J(String str) {
        return str.indexOf(87) > -1 || str.indexOf(75) > -1 || str.indexOf("CZ") > -1 || str.indexOf("WITZ") > -1;
    }

    private boolean K(char c10) {
        return f93662b.indexOf(c10) != -1;
    }

    private String d(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() == 0) {
            return null;
        }
        return trim.toUpperCase(Locale.ENGLISH);
    }

    private boolean f(String str, int i4) {
        if (k(str, i4, 4, "CHIA")) {
            return true;
        }
        if (i4 <= 1) {
            return false;
        }
        int i10 = i4 - 2;
        if (!K(b(str, i10)) && k(str, i4 - 1, 3, "ACH")) {
            char b10 = b(str, i4 + 2);
            return !(b10 == 'I' || b10 == 'E') || k(str, i10, 6, "BACHER", "MACHER");
        }
        return false;
    }

    private boolean g(String str, int i4) {
        if (i4 != 0) {
            return false;
        }
        int i10 = i4 + 1;
        return (k(str, i10, 5, "HARAC", "HARIS") || k(str, i10, 3, "HOR", "HYM", "HIA", "HEM")) && !k(str, 0, 5, "CHORE");
    }

    private boolean h(String str, int i4) {
        if (!k(str, 0, 4, "VAN ", "VON ") && !k(str, 0, 3, "SCH") && !k(str, i4 - 2, 6, "ORCHES", "ARCHIT", "ORCHID")) {
            int i10 = i4 + 2;
            if (!k(str, i10, 1, ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.LATITUDE_SOUTH)) {
                if (!k(str, i4 - 1, 1, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "O", "U", ExifInterface.LONGITUDE_EAST) && i4 != 0) {
                    return false;
                }
                if (!k(str, i10, 1, f93664d) && i4 + 1 != str.length() - 1) {
                    return false;
                }
            }
        }
        return true;
    }

    private boolean i(String str, int i4) {
        if (i4 == str.length() - 3 && k(str, i4 - 1, 4, "ILLO", "ILLA", "ALLE")) {
            return true;
        }
        return (k(str, str.length() - 2, 2, "AS", "OS") || k(str, str.length() - 1, 1, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "O")) && k(str, i4 - 1, 4, "ALLE");
    }

    private boolean j(String str, int i4) {
        int i10 = i4 + 1;
        if (b(str, i10) == 'M') {
            return true;
        }
        return k(str, i4 + (-1), 3, "UMB") && (i10 == str.length() - 1 || k(str, i4 + 2, 2, "ER"));
    }

    protected static boolean k(String str, int i4, int i10, String... strArr) {
        int i11;
        if (i4 < 0 || (i11 = i10 + i4) > str.length()) {
            return false;
        }
        String substring = str.substring(i4, i11);
        for (String str2 : strArr) {
            if (substring.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private int o(a aVar, int i4) {
        if (i4 == 0) {
            aVar.a('A');
        }
        return i4 + 1;
    }

    private int p(String str, a aVar, int i4) {
        if (f(str, i4)) {
            aVar.a('K');
        } else if (i4 == 0 && k(str, i4, 6, "CAESAR")) {
            aVar.a('S');
        } else if (k(str, i4, 2, "CH")) {
            return r(str, aVar, i4);
        } else {
            if (k(str, i4, 2, "CZ") && !k(str, i4 - 2, 4, "WICZ")) {
                aVar.b('S', 'X');
            } else {
                int i10 = i4 + 1;
                if (k(str, i10, 3, "CIA")) {
                    aVar.a('X');
                } else if (k(str, i4, 2, "CC") && (i4 != 1 || b(str, 0) != 'M')) {
                    return q(str, aVar, i4);
                } else {
                    if (k(str, i4, 2, "CK", "CG", "CQ")) {
                        aVar.a('K');
                    } else if (k(str, i4, 2, "CI", "CE", "CY")) {
                        if (k(str, i4, 3, "CIO", "CIE", "CIA")) {
                            aVar.b('S', 'X');
                        } else {
                            aVar.a('S');
                        }
                    } else {
                        aVar.a('K');
                        if (!k(str, i10, 2, " C", " Q", " G")) {
                            if (!k(str, i10, 1, "C", "K", "Q") || k(str, i10, 2, "CE", "CI")) {
                                return i10;
                            }
                        }
                    }
                }
                return i4 + 3;
            }
        }
        return i4 + 2;
    }

    private int q(String str, a aVar, int i4) {
        int i10 = i4 + 2;
        if (k(str, i10, 1, "I", ExifInterface.LONGITUDE_EAST, "H") && !k(str, i10, 2, "HU")) {
            if ((i4 == 1 && b(str, i4 - 1) == 'A') || k(str, i4 - 1, 5, "UCCEE", "UCCES")) {
                aVar.c("KS");
            } else {
                aVar.a('X');
            }
            return i4 + 3;
        }
        aVar.a('K');
        return i10;
    }

    private int r(String str, a aVar, int i4) {
        if (i4 > 0 && k(str, i4, 4, "CHAE")) {
            aVar.b('K', 'X');
        } else if (g(str, i4)) {
            aVar.a('K');
        } else if (!h(str, i4)) {
            if (i4 > 0) {
                if (k(str, 0, 2, "MC")) {
                    aVar.a('K');
                } else {
                    aVar.b('X', 'K');
                }
            } else {
                aVar.a('X');
            }
            return i4 + 2;
        } else {
            aVar.a('K');
        }
        return i4 + 2;
    }

    private int s(String str, a aVar, int i4) {
        if (k(str, i4, 2, "DG")) {
            int i10 = i4 + 2;
            if (k(str, i10, 1, "I", ExifInterface.LONGITUDE_EAST, "Y")) {
                aVar.a('J');
                return i4 + 3;
            }
            aVar.c("TK");
            return i10;
        } else if (k(str, i4, 2, "DT", "DD")) {
            aVar.a('T');
            return i4 + 2;
        } else {
            aVar.a('T');
            return i4 + 1;
        }
    }

    private int t(String str, a aVar, int i4, boolean z9) {
        int i10 = i4 + 1;
        if (b(str, i10) == 'H') {
            return u(str, aVar, i4);
        }
        if (b(str, i10) == 'N') {
            if (i4 == 1 && K(b(str, 0)) && !z9) {
                aVar.d("KN", "N");
            } else if (!k(str, i4 + 2, 2, "EY") && b(str, i10) != 'Y' && !z9) {
                aVar.d("N", "KN");
            } else {
                aVar.c("KN");
            }
        } else if (k(str, i10, 2, "LI") && !z9) {
            aVar.d("KL", "L");
        } else if (i4 == 0 && (b(str, i10) == 'Y' || k(str, i10, 2, f93665e))) {
            aVar.b('K', 'J');
        } else {
            if ((k(str, i10, 2, "ER") || b(str, i10) == 'Y') && !k(str, 0, 6, "DANGER", "RANGER", "MANGER")) {
                int i11 = i4 - 1;
                if (!k(str, i11, 1, ExifInterface.LONGITUDE_EAST, "I") && !k(str, i11, 3, "RGY", "OGY")) {
                    aVar.b('K', 'J');
                    return i4 + 2;
                }
            }
            if (!k(str, i10, 1, ExifInterface.LONGITUDE_EAST, "I", "Y") && !k(str, i4 - 1, 4, "AGGI", "OGGI")) {
                if (b(str, i10) == 'G') {
                    int i12 = i4 + 2;
                    aVar.a('K');
                    return i12;
                }
                aVar.a('K');
                return i10;
            }
            if (!k(str, 0, 4, "VAN ", "VON ") && !k(str, 0, 3, "SCH") && !k(str, i10, 2, "ET")) {
                if (k(str, i10, 3, "IER")) {
                    aVar.a('J');
                } else {
                    aVar.b('J', 'K');
                }
            } else {
                aVar.a('K');
            }
            return i4 + 2;
        }
        return i4 + 2;
    }

    private int u(String str, a aVar, int i4) {
        if (i4 > 0 && !K(b(str, i4 - 1))) {
            aVar.a('K');
        } else if (i4 == 0) {
            int i10 = i4 + 2;
            if (b(str, i10) == 'I') {
                aVar.a('J');
                return i10;
            }
            aVar.a('K');
            return i10;
        } else if ((i4 <= 1 || !k(str, i4 - 2, 1, "B", "H", "D")) && ((i4 <= 2 || !k(str, i4 - 3, 1, "B", "H", "D")) && (i4 <= 3 || !k(str, i4 - 4, 1, "B", "H")))) {
            if (i4 > 2 && b(str, i4 - 1) == 'U' && k(str, i4 - 3, 1, "C", "G", "L", "R", ExifInterface.GPS_DIRECTION_TRUE)) {
                aVar.a('F');
            } else if (i4 > 0 && b(str, i4 - 1) != 'I') {
                aVar.a('K');
            }
        }
        return i4 + 2;
    }

    private int v(String str, a aVar, int i4) {
        if ((i4 == 0 || K(b(str, i4 - 1))) && K(b(str, i4 + 1))) {
            aVar.a('H');
            return i4 + 2;
        }
        return i4 + 1;
    }

    private int w(String str, a aVar, int i4, boolean z9) {
        if (!k(str, i4, 4, "JOSE") && !k(str, 0, 4, "SAN ")) {
            if (i4 == 0 && !k(str, i4, 4, "JOSE")) {
                aVar.b('J', 'A');
            } else {
                int i10 = i4 - 1;
                if (K(b(str, i10)) && !z9) {
                    int i11 = i4 + 1;
                    if (b(str, i11) == 'A' || b(str, i11) == 'O') {
                        aVar.b('J', 'H');
                    }
                }
                if (i4 == str.length() - 1) {
                    aVar.b('J', ' ');
                } else if (!k(str, i4 + 1, 1, f93666f) && !k(str, i10, 1, ExifInterface.LATITUDE_SOUTH, "K", "L")) {
                    aVar.a('J');
                }
            }
            int i12 = i4 + 1;
            return b(str, i12) == 'J' ? i4 + 2 : i12;
        }
        if ((i4 != 0 || b(str, i4 + 4) != ' ') && str.length() != 4 && !k(str, 0, 4, "SAN ")) {
            aVar.b('J', 'H');
        } else {
            aVar.a('H');
        }
        return i4 + 1;
    }

    private int x(String str, a aVar, int i4) {
        int i10 = i4 + 1;
        if (b(str, i10) == 'L') {
            if (i(str, i4)) {
                aVar.g(Matrix.MATRIX_TYPE_RANDOM_LT);
            } else {
                aVar.a(Matrix.MATRIX_TYPE_RANDOM_LT);
            }
            return i4 + 2;
        }
        aVar.a(Matrix.MATRIX_TYPE_RANDOM_LT);
        return i10;
    }

    private int y(String str, a aVar, int i4) {
        int i10 = i4 + 1;
        if (b(str, i10) == 'H') {
            aVar.a('F');
            return i4 + 2;
        }
        aVar.a('P');
        if (k(str, i10, 1, "P", "B")) {
            i10 = i4 + 2;
        }
        return i10;
    }

    private int z(String str, a aVar, int i4, boolean z9) {
        if (i4 == str.length() - 1 && !z9 && k(str, i4 - 2, 2, "IE") && !k(str, i4 - 4, 2, "ME", "MA")) {
            aVar.e(Matrix.MATRIX_TYPE_RANDOM_REGULAR);
        } else {
            aVar.a(Matrix.MATRIX_TYPE_RANDOM_REGULAR);
        }
        int i10 = i4 + 1;
        return b(str, i10) == 'R' ? i4 + 2 : i10;
    }

    public boolean G(String str, String str2) {
        return H(str, str2, false);
    }

    public boolean H(String str, String str2, boolean z9) {
        return shaded.org.apache.commons.codec.binary.m.a(m(str, z9), m(str2, z9));
    }

    public void L(int i4) {
        this.f93667a = i4;
    }

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return l((String) obj);
        }
        throw new EncoderException("DoubleMetaphone encode parameter is not of type String");
    }

    protected char b(String str, int i4) {
        if (i4 < 0 || i4 >= str.length()) {
            return (char) 0;
        }
        return str.charAt(i4);
    }

    @Override // h9.h
    public String c(String str) {
        return l(str);
    }

    public String l(String str) {
        return m(str, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    /* JADX WARN: Type inference failed for: r1v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v12, types: [int] */
    /* JADX WARN: Type inference failed for: r1v13, types: [int] */
    /* JADX WARN: Type inference failed for: r1v14, types: [int] */
    /* JADX WARN: Type inference failed for: r1v15, types: [int] */
    /* JADX WARN: Type inference failed for: r1v16, types: [int] */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18, types: [int] */
    /* JADX WARN: Type inference failed for: r1v19, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8, types: [int] */
    /* JADX WARN: Type inference failed for: r1v9, types: [int] */
    /* JADX WARN: Type inference failed for: r7v0, types: [shaded.org.apache.commons.codec.language.g] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.String] */
    public String m(String str, boolean z9) {
        int i4;
        ?? d4 = d(str);
        if (d4 == 0) {
            return null;
        }
        boolean J = J(d4);
        ?? I = I(d4);
        a aVar = new a(n());
        while (!aVar.k() && I <= d4.length() - 1) {
            char charAt = d4.charAt(I);
            if (charAt == 199) {
                aVar.a('S');
            } else if (charAt != 209) {
                switch (charAt) {
                    case 'A':
                    case 'E':
                    case 'I':
                    case 'O':
                    case 'U':
                    case 'Y':
                        I = o(aVar, I);
                        break;
                    case 'B':
                        aVar.a('P');
                        i4 = I + 1;
                        if (b(d4, i4) != 'B') {
                            I = i4;
                            break;
                        } else {
                            I += 2;
                            break;
                        }
                    case 'C':
                        I = p(d4, aVar, I);
                        break;
                    case 'D':
                        I = s(d4, aVar, I);
                        break;
                    case 'F':
                        aVar.a('F');
                        i4 = I + 1;
                        if (b(d4, i4) != 'F') {
                            I = i4;
                            break;
                        } else {
                            I += 2;
                            break;
                        }
                    case 'G':
                        I = t(d4, aVar, I, J);
                        break;
                    case 'H':
                        I = v(d4, aVar, I);
                        break;
                    case 'J':
                        I = w(d4, aVar, I, J);
                        break;
                    case 'K':
                        aVar.a('K');
                        i4 = I + 1;
                        if (b(d4, i4) != 'K') {
                            I = i4;
                            break;
                        } else {
                            I += 2;
                            break;
                        }
                    case 'L':
                        I = x(d4, aVar, I);
                        break;
                    case 'M':
                        aVar.a('M');
                        if (!j(d4, I)) {
                            break;
                        } else {
                            I += 2;
                            break;
                        }
                    case 'N':
                        aVar.a('N');
                        i4 = I + 1;
                        if (b(d4, i4) != 'N') {
                            I = i4;
                            break;
                        } else {
                            I += 2;
                            break;
                        }
                    case 'P':
                        I = y(d4, aVar, I);
                        break;
                    case 'Q':
                        aVar.a('K');
                        i4 = I + 1;
                        if (b(d4, i4) != 'Q') {
                            I = i4;
                            break;
                        } else {
                            I += 2;
                            break;
                        }
                    case 'R':
                        I = z(d4, aVar, I, J);
                        break;
                    case 'S':
                        I = A(d4, aVar, I, J);
                        break;
                    case 'T':
                        I = C(d4, aVar, I);
                        break;
                    case 'V':
                        aVar.a('F');
                        i4 = I + 1;
                        if (b(d4, i4) != 'V') {
                            I = i4;
                            break;
                        } else {
                            I += 2;
                            break;
                        }
                    case 'W':
                        I = D(d4, aVar, I);
                        break;
                    case 'X':
                        I = E(d4, aVar, I);
                        break;
                    case 'Z':
                        I = F(d4, aVar, I, J);
                        break;
                }
            } else {
                aVar.a('N');
            }
            I++;
        }
        return z9 ? aVar.i() : aVar.j();
    }

    public int n() {
        return this.f93667a;
    }
}
