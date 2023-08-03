package org.jsoup.nodes;

import java.io.IOException;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.text.Typography;
import org.jsoup.SerializationException;
import org.jsoup.nodes.Document;

/* loaded from: classes5.dex */
public class Entities {

    /* renamed from: a  reason: collision with root package name */
    private static final int f91825a = -1;

    /* renamed from: b  reason: collision with root package name */
    private static final String f91826b = "";

    /* renamed from: c  reason: collision with root package name */
    static final int f91827c = 36;

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f91828d = {',', ';'};

    /* renamed from: e  reason: collision with root package name */
    private static final HashMap<String, String> f91829e = new HashMap<>();

    /* renamed from: f  reason: collision with root package name */
    private static final Document.OutputSettings f91830f = new Document.OutputSettings();

    /* loaded from: classes5.dex */
    public enum EscapeMode {
        xhtml(h.f91883a, 4),
        base(h.f91884b, 106),
        extended(h.f91885c, 2125);
        

        /* renamed from: a  reason: collision with root package name */
        private String[] f91832a;

        /* renamed from: b  reason: collision with root package name */
        private int[] f91833b;

        /* renamed from: c  reason: collision with root package name */
        private int[] f91834c;

        /* renamed from: d  reason: collision with root package name */
        private String[] f91835d;

        EscapeMode(String str, int i4) {
            Entities.k(this, str, i4);
        }

        private int o() {
            return this.f91832a.length;
        }

        int m(String str) {
            int binarySearch = Arrays.binarySearch(this.f91832a, str);
            if (binarySearch >= 0) {
                return this.f91833b[binarySearch];
            }
            return -1;
        }

        String n(int i4) {
            int binarySearch = Arrays.binarySearch(this.f91834c, i4);
            if (binarySearch >= 0) {
                String[] strArr = this.f91835d;
                if (binarySearch < strArr.length - 1) {
                    int i10 = binarySearch + 1;
                    if (this.f91834c[i10] == i4) {
                        return strArr[i10];
                    }
                }
                return strArr[binarySearch];
            }
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f91836a;

        static {
            int[] iArr = new int[b.values().length];
            f91836a = iArr;
            try {
                iArr[b.ascii.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f91836a[b.utf.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum b {
        ascii,
        utf,
        fallback;

        /* JADX INFO: Access modifiers changed from: package-private */
        public static b b(String str) {
            if (str.equals("US-ASCII")) {
                return ascii;
            }
            if (str.startsWith("UTF-")) {
                return utf;
            }
            return fallback;
        }
    }

    private Entities() {
    }

    private static void b(Appendable appendable, EscapeMode escapeMode, int i4) throws IOException {
        String n9 = escapeMode.n(i4);
        if (!"".equals(n9)) {
            appendable.append(Typography.amp).append(n9).append(';');
        } else {
            appendable.append("&#x").append(Integer.toHexString(i4)).append(';');
        }
    }

    private static boolean c(b bVar, char c10, CharsetEncoder charsetEncoder) {
        int i4 = a.f91836a[bVar.ordinal()];
        if (i4 == 1) {
            return c10 < 128;
        } else if (i4 != 2) {
            return charsetEncoder.canEncode(c10);
        } else {
            return true;
        }
    }

    public static int d(String str, int[] iArr) {
        String str2 = f91829e.get(str);
        if (str2 != null) {
            iArr[0] = str2.codePointAt(0);
            iArr[1] = str2.codePointAt(1);
            return 2;
        }
        int m9 = EscapeMode.extended.m(str);
        if (m9 != -1) {
            iArr[0] = m9;
            return 1;
        }
        return 0;
    }

    public static String e(String str) {
        return f(str, f91830f);
    }

    public static String f(String str, Document.OutputSettings outputSettings) {
        if (str == null) {
            return "";
        }
        StringBuilder b10 = org.jsoup.internal.f.b();
        try {
            g(b10, str, outputSettings, false, false, false);
            return org.jsoup.internal.f.p(b10);
        } catch (IOException e4) {
            throw new SerializationException(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(Appendable appendable, String str, Document.OutputSettings outputSettings, boolean z9, boolean z10, boolean z11) throws IOException {
        EscapeMode g4 = outputSettings.g();
        CharsetEncoder e4 = outputSettings.e();
        b bVar = outputSettings.f91818d;
        int length = str.length();
        int i4 = 0;
        boolean z12 = false;
        boolean z13 = false;
        while (i4 < length) {
            int codePointAt = str.codePointAt(i4);
            if (z10) {
                if (org.jsoup.internal.f.j(codePointAt)) {
                    if ((!z11 || z12) && !z13) {
                        appendable.append(' ');
                        z13 = true;
                    }
                    i4 += Character.charCount(codePointAt);
                } else {
                    z12 = true;
                    z13 = false;
                }
            }
            if (codePointAt < 65536) {
                char c10 = (char) codePointAt;
                if (c10 == '\t' || c10 == '\n' || c10 == '\r') {
                    appendable.append(c10);
                } else if (c10 != '\"') {
                    if (c10 == '&') {
                        appendable.append("&amp;");
                    } else if (c10 != '<') {
                        if (c10 != '>') {
                            if (c10 != 160) {
                                if (c10 >= ' ' && c(bVar, c10, e4)) {
                                    appendable.append(c10);
                                } else {
                                    b(appendable, g4, codePointAt);
                                }
                            } else if (g4 != EscapeMode.xhtml) {
                                appendable.append("&nbsp;");
                            } else {
                                appendable.append("&#xa0;");
                            }
                        } else if (!z9) {
                            appendable.append("&gt;");
                        } else {
                            appendable.append(c10);
                        }
                    } else if (z9 && g4 != EscapeMode.xhtml && outputSettings.o() != Document.OutputSettings.Syntax.xml) {
                        appendable.append(c10);
                    } else {
                        appendable.append("&lt;");
                    }
                } else if (z9) {
                    appendable.append("&quot;");
                } else {
                    appendable.append(c10);
                }
            } else {
                String str2 = new String(Character.toChars(codePointAt));
                if (e4.canEncode(str2)) {
                    appendable.append(str2);
                } else {
                    b(appendable, g4, codePointAt);
                }
            }
            i4 += Character.charCount(codePointAt);
        }
    }

    public static String h(String str) {
        String str2 = f91829e.get(str);
        if (str2 != null) {
            return str2;
        }
        int m9 = EscapeMode.extended.m(str);
        return m9 != -1 ? new String(new int[]{m9}, 0, 1) : "";
    }

    public static boolean i(String str) {
        return EscapeMode.base.m(str) != -1;
    }

    public static boolean j(String str) {
        return EscapeMode.extended.m(str) != -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k(EscapeMode escapeMode, String str, int i4) {
        int i10;
        escapeMode.f91832a = new String[i4];
        escapeMode.f91833b = new int[i4];
        escapeMode.f91834c = new int[i4];
        escapeMode.f91835d = new String[i4];
        org.jsoup.parser.a aVar = new org.jsoup.parser.a(str);
        int i11 = 0;
        while (!aVar.w()) {
            try {
                String o9 = aVar.o('=');
                aVar.a();
                int parseInt = Integer.parseInt(aVar.q(f91828d), 36);
                char u9 = aVar.u();
                aVar.a();
                if (u9 == ',') {
                    i10 = Integer.parseInt(aVar.o(';'), 36);
                    aVar.a();
                } else {
                    i10 = -1;
                }
                int parseInt2 = Integer.parseInt(aVar.o(Typography.amp), 36);
                aVar.a();
                escapeMode.f91832a[i11] = o9;
                escapeMode.f91833b[i11] = parseInt;
                escapeMode.f91834c[parseInt2] = parseInt;
                escapeMode.f91835d[parseInt2] = o9;
                if (i10 != -1) {
                    f91829e.put(o9, new String(new int[]{parseInt, i10}, 0, 2));
                }
                i11++;
            } finally {
                aVar.d();
            }
        }
        org.jsoup.helper.d.e(i11 == i4, "Unexpected count of entities loaded");
    }

    public static String l(String str) {
        return m(str, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String m(String str, boolean z9) {
        return org.jsoup.parser.f.s(str, z9);
    }
}
