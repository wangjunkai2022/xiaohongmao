package com.google.android.exoplayer2.text.ttml;

import android.text.Layout;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.a1;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: TtmlDecoder.java */
/* loaded from: classes2.dex */
public final class c extends com.google.android.exoplayer2.text.c {
    private static final int E = 30;

    /* renamed from: p  reason: collision with root package name */
    private static final String f25690p = "TtmlDecoder";

    /* renamed from: q  reason: collision with root package name */
    private static final String f25691q = "http://www.w3.org/ns/ttml#parameter";

    /* renamed from: r  reason: collision with root package name */
    private static final String f25692r = "begin";

    /* renamed from: s  reason: collision with root package name */
    private static final String f25693s = "dur";

    /* renamed from: t  reason: collision with root package name */
    private static final String f25694t = "end";

    /* renamed from: u  reason: collision with root package name */
    private static final String f25695u = "style";

    /* renamed from: v  reason: collision with root package name */
    private static final String f25696v = "region";

    /* renamed from: w  reason: collision with root package name */
    private static final String f25697w = "backgroundImage";

    /* renamed from: o  reason: collision with root package name */
    private final XmlPullParserFactory f25701o;

    /* renamed from: x  reason: collision with root package name */
    private static final Pattern f25698x = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: y  reason: collision with root package name */
    private static final Pattern f25699y = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: z  reason: collision with root package name */
    private static final Pattern f25700z = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern A = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern B = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    private static final Pattern C = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");
    private static final Pattern D = Pattern.compile("^(\\d+) (\\d+)$");
    private static final b F = new b(30.0f, 1, 1);
    private static final a G = new a(32, 15);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TtmlDecoder.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f25702a;

        /* renamed from: b  reason: collision with root package name */
        final int f25703b;

        a(int i4, int i10) {
            this.f25702a = i4;
            this.f25703b = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TtmlDecoder.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final float f25704a;

        /* renamed from: b  reason: collision with root package name */
        final int f25705b;

        /* renamed from: c  reason: collision with root package name */
        final int f25706c;

        b(float f10, int i4, int i10) {
            this.f25704a = f10;
            this.f25705b = i4;
            this.f25706c = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TtmlDecoder.java */
    /* renamed from: com.google.android.exoplayer2.text.ttml.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0184c {

        /* renamed from: a  reason: collision with root package name */
        final int f25707a;

        /* renamed from: b  reason: collision with root package name */
        final int f25708b;

        C0184c(int i4, int i10) {
            this.f25707a = i4;
            this.f25708b = i10;
        }
    }

    public c() {
        super(f25690p);
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.f25701o = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e4) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e4);
        }
    }

    private static g B(@Nullable g gVar) {
        return gVar == null ? new g() : gVar;
    }

    private static boolean C(String str) {
        return str.equals(d.f25722n) || str.equals(d.f25724o) || str.equals(d.f25726p) || str.equals(d.f25728q) || str.equals("p") || str.equals(d.f25732s) || str.equals(d.f25734t) || str.equals("style") || str.equals(d.f25738v) || str.equals(d.f25740w) || str.equals("region") || str.equals(d.f25744y) || str.equals("image") || str.equals("data") || str.equals(d.B);
    }

    @Nullable
    private static Layout.Alignment D(String str) {
        String g4 = com.google.common.base.c.g(str);
        g4.hashCode();
        char c10 = 65535;
        switch (g4.hashCode()) {
            case -1364013995:
                if (g4.equals(d.f25721m0)) {
                    c10 = 0;
                    break;
                }
                break;
            case 100571:
                if (g4.equals("end")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3317767:
                if (g4.equals(d.f25720l0)) {
                    c10 = 2;
                    break;
                }
                break;
            case 108511772:
                if (g4.equals(d.f25723n0)) {
                    c10 = 3;
                    break;
                }
                break;
            case 109757538:
                if (g4.equals(d.f25725o0)) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return Layout.Alignment.ALIGN_CENTER;
            case 1:
            case 3:
                return Layout.Alignment.ALIGN_OPPOSITE;
            case 2:
            case 4:
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    private static a E(XmlPullParser xmlPullParser, a aVar) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue(f25691q, "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = D.matcher(attributeValue);
        if (!matcher.matches()) {
            w.n(f25690p, attributeValue.length() != 0 ? "Ignoring malformed cell resolution: ".concat(attributeValue) : new String("Ignoring malformed cell resolution: "));
            return aVar;
        }
        try {
            int parseInt = Integer.parseInt((String) com.google.android.exoplayer2.util.a.g(matcher.group(1)));
            int parseInt2 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.g(matcher.group(2)));
            if (parseInt != 0 && parseInt2 != 0) {
                return new a(parseInt, parseInt2);
            }
            StringBuilder sb = new StringBuilder(47);
            sb.append("Invalid cell resolution ");
            sb.append(parseInt);
            sb.append(" ");
            sb.append(parseInt2);
            throw new SubtitleDecoderException(sb.toString());
        } catch (NumberFormatException unused) {
            w.n(f25690p, attributeValue.length() != 0 ? "Ignoring malformed cell resolution: ".concat(attributeValue) : new String("Ignoring malformed cell resolution: "));
            return aVar;
        }
    }

    private static void F(String str, g gVar) throws SubtitleDecoderException {
        Matcher matcher;
        String[] l12 = z0.l1(str, "\\s+");
        if (l12.length == 1) {
            matcher = f25700z.matcher(str);
        } else if (l12.length == 2) {
            matcher = f25700z.matcher(l12[1]);
            w.n(f25690p, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            int length = l12.length;
            StringBuilder sb = new StringBuilder(52);
            sb.append("Invalid number of entries for fontSize: ");
            sb.append(length);
            sb.append(".");
            throw new SubtitleDecoderException(sb.toString());
        }
        if (matcher.matches()) {
            String str2 = (String) com.google.android.exoplayer2.util.a.g(matcher.group(3));
            str2.hashCode();
            char c10 = 65535;
            switch (str2.hashCode()) {
                case 37:
                    if (str2.equals("%")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3240:
                    if (str2.equals("em")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3592:
                    if (str2.equals("px")) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    gVar.A(3);
                    break;
                case 1:
                    gVar.A(2);
                    break;
                case 2:
                    gVar.A(1);
                    break;
                default:
                    StringBuilder sb2 = new StringBuilder(str2.length() + 30);
                    sb2.append("Invalid unit for fontSize: '");
                    sb2.append(str2);
                    sb2.append("'.");
                    throw new SubtitleDecoderException(sb2.toString());
            }
            gVar.z(Float.parseFloat((String) com.google.android.exoplayer2.util.a.g(matcher.group(1))));
            return;
        }
        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 36);
        sb3.append("Invalid expression for fontSize: '");
        sb3.append(str);
        sb3.append("'.");
        throw new SubtitleDecoderException(sb3.toString());
    }

    private static b G(XmlPullParser xmlPullParser) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue(f25691q, "frameRate");
        int parseInt = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        float f10 = 1.0f;
        String attributeValue2 = xmlPullParser.getAttributeValue(f25691q, "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] l12 = z0.l1(attributeValue2, " ");
            if (l12.length == 2) {
                f10 = Integer.parseInt(l12[0]) / Integer.parseInt(l12[1]);
            } else {
                throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
            }
        }
        b bVar = F;
        int i4 = bVar.f25705b;
        String attributeValue3 = xmlPullParser.getAttributeValue(f25691q, "subFrameRate");
        if (attributeValue3 != null) {
            i4 = Integer.parseInt(attributeValue3);
        }
        int i10 = bVar.f25706c;
        String attributeValue4 = xmlPullParser.getAttributeValue(f25691q, "tickRate");
        if (attributeValue4 != null) {
            i10 = Integer.parseInt(attributeValue4);
        }
        return new b(parseInt * f10, i4, i10);
    }

    private static Map<String, g> H(XmlPullParser xmlPullParser, Map<String, g> map, a aVar, @Nullable C0184c c0184c, Map<String, e> map2, Map<String, String> map3) throws IOException, XmlPullParserException {
        do {
            xmlPullParser.next();
            if (a1.f(xmlPullParser, "style")) {
                String a10 = a1.a(xmlPullParser, "style");
                g M = M(xmlPullParser, new g());
                if (a10 != null) {
                    for (String str : N(a10)) {
                        M.a(map.get(str));
                    }
                }
                String g4 = M.g();
                if (g4 != null) {
                    map.put(g4, M);
                }
            } else if (a1.f(xmlPullParser, "region")) {
                e K = K(xmlPullParser, aVar, c0184c);
                if (K != null) {
                    map2.put(K.f25761a, K);
                }
            } else if (a1.f(xmlPullParser, d.f25744y)) {
                I(xmlPullParser, map3);
            }
        } while (!a1.d(xmlPullParser, d.f25724o));
        return map;
    }

    private static void I(XmlPullParser xmlPullParser, Map<String, String> map) throws IOException, XmlPullParserException {
        String a10;
        do {
            xmlPullParser.next();
            if (a1.f(xmlPullParser, "image") && (a10 = a1.a(xmlPullParser, "id")) != null) {
                map.put(a10, xmlPullParser.nextText());
            }
        } while (!a1.d(xmlPullParser, d.f25744y));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static d J(XmlPullParser xmlPullParser, @Nullable d dVar, Map<String, e> map, b bVar) throws SubtitleDecoderException {
        long j4;
        long j10;
        char c10;
        int attributeCount = xmlPullParser.getAttributeCount();
        g M = M(xmlPullParser, null);
        String str = null;
        String str2 = "";
        long j11 = com.google.android.exoplayer2.i.f23649b;
        long j12 = com.google.android.exoplayer2.i.f23649b;
        long j13 = com.google.android.exoplayer2.i.f23649b;
        String[] strArr = null;
        for (int i4 = 0; i4 < attributeCount; i4++) {
            String attributeName = xmlPullParser.getAttributeName(i4);
            String attributeValue = xmlPullParser.getAttributeValue(i4);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals("region")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 99841:
                    if (attributeName.equals(f25693s)) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 100571:
                    if (attributeName.equals("end")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 93616297:
                    if (attributeName.equals(f25692r)) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109780401:
                    if (attributeName.equals("style")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1292595405:
                    if (attributeName.equals(f25697w)) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                    if (map.containsKey(attributeValue)) {
                        str2 = attributeValue;
                        continue;
                    }
                case 1:
                    j13 = O(attributeValue, bVar);
                    break;
                case 2:
                    j12 = O(attributeValue, bVar);
                    break;
                case 3:
                    j11 = O(attributeValue, bVar);
                    break;
                case 4:
                    String[] N = N(attributeValue);
                    if (N.length > 0) {
                        strArr = N;
                        break;
                    }
                    break;
                case 5:
                    if (attributeValue.startsWith("#")) {
                        str = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (dVar != null) {
            long j14 = dVar.f25751d;
            j4 = com.google.android.exoplayer2.i.f23649b;
            if (j14 != com.google.android.exoplayer2.i.f23649b) {
                if (j11 != com.google.android.exoplayer2.i.f23649b) {
                    j11 += j14;
                }
                if (j12 != com.google.android.exoplayer2.i.f23649b) {
                    j12 += j14;
                }
            }
        } else {
            j4 = com.google.android.exoplayer2.i.f23649b;
        }
        long j15 = j11;
        if (j12 == j4) {
            if (j13 != j4) {
                j10 = j15 + j13;
            } else if (dVar != null) {
                long j16 = dVar.f25752e;
                if (j16 != j4) {
                    j10 = j16;
                }
            }
            return d.c(xmlPullParser.getName(), j15, j10, M, strArr, str2, str, dVar);
        }
        j10 = j12;
        return d.c(xmlPullParser.getName(), j15, j10, M, strArr, str2, str, dVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ad, code lost:
        if (r0.equals(com.google.android.exoplayer2.text.ttml.d.f25733s0) == false) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0180  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.exoplayer2.text.ttml.e K(org.xmlpull.v1.XmlPullParser r17, com.google.android.exoplayer2.text.ttml.c.a r18, @androidx.annotation.Nullable com.google.android.exoplayer2.text.ttml.c.C0184c r19) {
        /*
            Method dump skipped, instructions count: 578
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.c.K(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.ttml.c$a, com.google.android.exoplayer2.text.ttml.c$c):com.google.android.exoplayer2.text.ttml.e");
    }

    private static float L(String str) {
        Matcher matcher = A.matcher(str);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(str);
            w.n(f25690p, valueOf.length() != 0 ? "Invalid value for shear: ".concat(valueOf) : new String("Invalid value for shear: "));
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) com.google.android.exoplayer2.util.a.g(matcher.group(1)))));
        } catch (NumberFormatException e4) {
            String valueOf2 = String.valueOf(str);
            w.o(f25690p, valueOf2.length() != 0 ? "Failed to parse shear: ".concat(valueOf2) : new String("Failed to parse shear: "), e4);
            return Float.MAX_VALUE;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01f2, code lost:
        if (r3.equals("text") == false) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.exoplayer2.text.ttml.g M(org.xmlpull.v1.XmlPullParser r12, com.google.android.exoplayer2.text.ttml.g r13) {
        /*
            Method dump skipped, instructions count: 946
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.c.M(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.ttml.g):com.google.android.exoplayer2.text.ttml.g");
    }

    private static String[] N(String str) {
        String trim = str.trim();
        return trim.isEmpty() ? new String[0] : z0.l1(trim, "\\s+");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00bf, code lost:
        if (r13.equals("ms") == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static long O(java.lang.String r13, com.google.android.exoplayer2.text.ttml.c.b r14) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 336
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.c.O(java.lang.String, com.google.android.exoplayer2.text.ttml.c$b):long");
    }

    @Nullable
    private static C0184c P(XmlPullParser xmlPullParser) {
        String a10 = a1.a(xmlPullParser, d.F);
        if (a10 == null) {
            return null;
        }
        Matcher matcher = C.matcher(a10);
        if (!matcher.matches()) {
            w.n(f25690p, a10.length() != 0 ? "Ignoring non-pixel tts extent: ".concat(a10) : new String("Ignoring non-pixel tts extent: "));
            return null;
        }
        try {
            return new C0184c(Integer.parseInt((String) com.google.android.exoplayer2.util.a.g(matcher.group(1))), Integer.parseInt((String) com.google.android.exoplayer2.util.a.g(matcher.group(2))));
        } catch (NumberFormatException unused) {
            w.n(f25690p, a10.length() != 0 ? "Ignoring malformed tts extent: ".concat(a10) : new String("Ignoring malformed tts extent: "));
            return null;
        }
    }

    @Override // com.google.android.exoplayer2.text.c
    protected com.google.android.exoplayer2.text.e z(byte[] bArr, int i4, boolean z9) throws SubtitleDecoderException {
        b bVar;
        try {
            XmlPullParser newPullParser = this.f25701o.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put("", new e(""));
            C0184c c0184c = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i4), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            b bVar2 = F;
            a aVar = G;
            h hVar = null;
            int i10 = 0;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                d dVar = (d) arrayDeque.peek();
                if (i10 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if (d.f25722n.equals(name)) {
                            bVar2 = G(newPullParser);
                            aVar = E(newPullParser, G);
                            c0184c = P(newPullParser);
                        }
                        C0184c c0184c2 = c0184c;
                        b bVar3 = bVar2;
                        a aVar2 = aVar;
                        if (!C(name)) {
                            String valueOf = String.valueOf(newPullParser.getName());
                            w.i(f25690p, valueOf.length() != 0 ? "Ignoring unsupported tag: ".concat(valueOf) : new String("Ignoring unsupported tag: "));
                            i10++;
                            bVar2 = bVar3;
                        } else {
                            if (d.f25724o.equals(name)) {
                                bVar = bVar3;
                                H(newPullParser, hashMap, aVar2, c0184c2, hashMap2, hashMap3);
                            } else {
                                bVar = bVar3;
                                try {
                                    d J = J(newPullParser, dVar, hashMap2, bVar);
                                    arrayDeque.push(J);
                                    if (dVar != null) {
                                        dVar.a(J);
                                    }
                                } catch (SubtitleDecoderException e4) {
                                    w.o(f25690p, "Suppressing parser error", e4);
                                    i10++;
                                }
                            }
                            bVar2 = bVar;
                        }
                        c0184c = c0184c2;
                        aVar = aVar2;
                    } else if (eventType == 4) {
                        ((d) com.google.android.exoplayer2.util.a.g(dVar)).a(d.d(newPullParser.getText()));
                    } else if (eventType == 3) {
                        if (newPullParser.getName().equals(d.f25722n)) {
                            hVar = new h((d) com.google.android.exoplayer2.util.a.g((d) arrayDeque.peek()), hashMap, hashMap2, hashMap3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i10++;
                } else if (eventType == 3) {
                    i10--;
                }
                newPullParser.next();
            }
            if (hVar != null) {
                return hVar;
            }
            throw new SubtitleDecoderException("No TTML subtitles found");
        } catch (IOException e10) {
            throw new IllegalStateException("Unexpected error when reading input.", e10);
        } catch (XmlPullParserException e11) {
            throw new SubtitleDecoderException("Unable to decode source", e11);
        }
    }
}
