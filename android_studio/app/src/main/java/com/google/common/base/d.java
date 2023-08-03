package com.google.common.base;

import java.util.Arrays;
import java.util.BitSet;

/* compiled from: CharMatcher.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public abstract class d implements com.google.common.base.b0<Character> {

    /* renamed from: a  reason: collision with root package name */
    private static final int f32145a = 65536;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    public class a extends x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f32146c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(d dVar, String str) {
            super(dVar);
            this.f32146c = str;
        }

        @Override // com.google.common.base.d.w, com.google.common.base.d
        public String toString() {
            return this.f32146c;
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static class a0 extends d {

        /* renamed from: b  reason: collision with root package name */
        private final String f32148b;

        /* renamed from: c  reason: collision with root package name */
        private final char[] f32149c;

        /* renamed from: d  reason: collision with root package name */
        private final char[] f32150d;

        a0(String str, char[] cArr, char[] cArr2) {
            this.f32148b = str;
            this.f32149c = cArr;
            this.f32150d = cArr2;
            com.google.common.base.a0.d(cArr.length == cArr2.length);
            int i4 = 0;
            while (i4 < cArr.length) {
                com.google.common.base.a0.d(cArr[i4] <= cArr2[i4]);
                int i10 = i4 + 1;
                if (i10 < cArr.length) {
                    com.google.common.base.a0.d(cArr2[i4] < cArr[i10]);
                }
                i4 = i10;
            }
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            int binarySearch = Arrays.binarySearch(this.f32149c, c10);
            if (binarySearch >= 0) {
                return true;
            }
            int i4 = (~binarySearch) - 1;
            return i4 >= 0 && c10 <= this.f32150d[i4];
        }

        @Override // com.google.common.base.d, com.google.common.base.b0
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.d
        public String toString() {
            return this.f32148b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    public static final class b extends d {

        /* renamed from: b  reason: collision with root package name */
        final d f32151b;

        /* renamed from: c  reason: collision with root package name */
        final d f32152c;

        b(d dVar, d dVar2) {
            this.f32151b = (d) com.google.common.base.a0.E(dVar);
            this.f32152c = (d) com.google.common.base.a0.E(dVar2);
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return this.f32151b.B(c10) && this.f32152c.B(c10);
        }

        @Override // com.google.common.base.d
        @h3.c
        void Q(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.f32151b.Q(bitSet2);
            BitSet bitSet3 = new BitSet();
            this.f32152c.Q(bitSet3);
            bitSet2.and(bitSet3);
            bitSet.or(bitSet2);
        }

        @Override // com.google.common.base.d, com.google.common.base.b0
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.d
        public String toString() {
            return "CharMatcher.and(" + this.f32151b + ", " + this.f32152c + ")";
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static final class b0 extends a0 {

        /* renamed from: e  reason: collision with root package name */
        static final b0 f32153e = new b0();

        private b0() {
            super("CharMatcher.singleWidth()", "\u0000־א׳\u0600ݐ\u0e00Ḁ℀ﭐﹰ｡".toCharArray(), "ӹ־ת״ۿݿ\u0e7f₯℺\ufdff\ufeffￜ".toCharArray());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    public static final class c extends v {

        /* renamed from: c  reason: collision with root package name */
        static final c f32154c = new c();

        private c() {
            super("CharMatcher.any()");
        }

        @Override // com.google.common.base.d
        public int A(CharSequence charSequence) {
            return charSequence.length() - 1;
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return true;
        }

        @Override // com.google.common.base.d
        public boolean C(CharSequence charSequence) {
            com.google.common.base.a0.E(charSequence);
            return true;
        }

        @Override // com.google.common.base.d
        public boolean E(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.d.i, com.google.common.base.d
        public d F() {
            return d.G();
        }

        @Override // com.google.common.base.d
        public d I(d dVar) {
            com.google.common.base.a0.E(dVar);
            return this;
        }

        @Override // com.google.common.base.d
        public String M(CharSequence charSequence) {
            com.google.common.base.a0.E(charSequence);
            return "";
        }

        @Override // com.google.common.base.d
        public String N(CharSequence charSequence, char c10) {
            char[] cArr = new char[charSequence.length()];
            Arrays.fill(cArr, c10);
            return new String(cArr);
        }

        @Override // com.google.common.base.d
        public String O(CharSequence charSequence, CharSequence charSequence2) {
            StringBuilder sb = new StringBuilder(charSequence.length() * charSequence2.length());
            for (int i4 = 0; i4 < charSequence.length(); i4++) {
                sb.append(charSequence2);
            }
            return sb.toString();
        }

        @Override // com.google.common.base.d
        public String U(CharSequence charSequence) {
            com.google.common.base.a0.E(charSequence);
            return "";
        }

        @Override // com.google.common.base.d
        public d b(d dVar) {
            return (d) com.google.common.base.a0.E(dVar);
        }

        @Override // com.google.common.base.d
        public String h(CharSequence charSequence, char c10) {
            return charSequence.length() == 0 ? "" : String.valueOf(c10);
        }

        @Override // com.google.common.base.d
        public int i(CharSequence charSequence) {
            return charSequence.length();
        }

        @Override // com.google.common.base.d
        public int n(CharSequence charSequence) {
            return charSequence.length() == 0 ? -1 : 0;
        }

        @Override // com.google.common.base.d
        public int o(CharSequence charSequence, int i4) {
            int length = charSequence.length();
            com.google.common.base.a0.d0(i4, length);
            if (i4 == length) {
                return -1;
            }
            return i4;
        }
    }

    /* compiled from: CharMatcher.java */
    @h3.d
    /* loaded from: classes2.dex */
    static final class c0 extends v {

        /* renamed from: c  reason: collision with root package name */
        static final String f32155c = "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000";

        /* renamed from: d  reason: collision with root package name */
        static final int f32156d = 1682554634;

        /* renamed from: e  reason: collision with root package name */
        static final int f32157e = Integer.numberOfLeadingZeros(31);

        /* renamed from: f  reason: collision with root package name */
        static final c0 f32158f = new c0();

        c0() {
            super("CharMatcher.whitespace()");
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return f32155c.charAt((f32156d * c10) >>> f32157e) == c10;
        }

        @Override // com.google.common.base.d
        @h3.c
        void Q(BitSet bitSet) {
            for (int i4 = 0; i4 < 32; i4++) {
                bitSet.set(f32155c.charAt(i4));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharMatcher.java */
    /* renamed from: com.google.common.base.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0204d extends d {

        /* renamed from: b  reason: collision with root package name */
        private final char[] f32159b;

        public C0204d(CharSequence charSequence) {
            char[] charArray = charSequence.toString().toCharArray();
            this.f32159b = charArray;
            Arrays.sort(charArray);
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return Arrays.binarySearch(this.f32159b, c10) >= 0;
        }

        @Override // com.google.common.base.d
        @h3.c
        void Q(BitSet bitSet) {
            for (char c10 : this.f32159b) {
                bitSet.set(c10);
            }
        }

        @Override // com.google.common.base.d, com.google.common.base.b0
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.d
        public String toString() {
            StringBuilder sb = new StringBuilder("CharMatcher.anyOf(\"");
            for (char c10 : this.f32159b) {
                sb.append(d.R(c10));
            }
            sb.append("\")");
            return sb.toString();
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static final class e extends v {

        /* renamed from: c  reason: collision with root package name */
        static final e f32160c = new e();

        e() {
            super("CharMatcher.ascii()");
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return c10 <= 127;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharMatcher.java */
    @h3.c
    /* loaded from: classes2.dex */
    public static final class f extends v {

        /* renamed from: c  reason: collision with root package name */
        private final BitSet f32161c;

        /* synthetic */ f(BitSet bitSet, String str, a aVar) {
            this(bitSet, str);
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return this.f32161c.get(c10);
        }

        @Override // com.google.common.base.d
        void Q(BitSet bitSet) {
            bitSet.or(this.f32161c);
        }

        private f(BitSet bitSet, String str) {
            super(str);
            this.f32161c = bitSet.length() + 64 < bitSet.size() ? (BitSet) bitSet.clone() : bitSet;
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static final class g extends d {

        /* renamed from: b  reason: collision with root package name */
        static final d f32162b = new g();

        private g() {
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            if (c10 != ' ' && c10 != 133 && c10 != 5760) {
                if (c10 == 8199) {
                    return false;
                }
                if (c10 != 8287 && c10 != 12288 && c10 != 8232 && c10 != 8233) {
                    switch (c10) {
                        case '\t':
                        case '\n':
                        case 11:
                        case '\f':
                        case '\r':
                            break;
                        default:
                            return c10 >= 8192 && c10 <= 8202;
                    }
                }
            }
            return true;
        }

        @Override // com.google.common.base.d, com.google.common.base.b0
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.d
        public String toString() {
            return "CharMatcher.breakingWhitespace()";
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static final class h extends a0 {

        /* renamed from: e  reason: collision with root package name */
        private static final String f32163e = "0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０";

        /* renamed from: f  reason: collision with root package name */
        static final h f32164f = new h();

        private h() {
            super("CharMatcher.digit()", Z(), Y());
        }

        private static char[] Y() {
            char[] cArr = new char[37];
            for (int i4 = 0; i4 < 37; i4++) {
                cArr[i4] = (char) (f32163e.charAt(i4) + '\t');
            }
            return cArr;
        }

        private static char[] Z() {
            return f32163e.toCharArray();
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    static abstract class i extends d {
        i() {
        }

        @Override // com.google.common.base.d
        public d F() {
            return new x(this);
        }

        @Override // com.google.common.base.d
        public final d J() {
            return this;
        }

        @Override // com.google.common.base.d, com.google.common.base.b0
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static final class j extends d {

        /* renamed from: b  reason: collision with root package name */
        private final com.google.common.base.b0<? super Character> f32165b;

        j(com.google.common.base.b0<? super Character> b0Var) {
            this.f32165b = (com.google.common.base.b0) com.google.common.base.a0.E(b0Var);
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return this.f32165b.apply(Character.valueOf(c10));
        }

        @Override // com.google.common.base.d, com.google.common.base.b0
        /* renamed from: e */
        public boolean apply(Character ch) {
            return this.f32165b.apply(com.google.common.base.a0.E(ch));
        }

        @Override // com.google.common.base.d
        public String toString() {
            return "CharMatcher.forPredicate(" + this.f32165b + ")";
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static final class k extends i {

        /* renamed from: b  reason: collision with root package name */
        private final char f32166b;

        /* renamed from: c  reason: collision with root package name */
        private final char f32167c;

        k(char c10, char c11) {
            com.google.common.base.a0.d(c11 >= c10);
            this.f32166b = c10;
            this.f32167c = c11;
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return this.f32166b <= c10 && c10 <= this.f32167c;
        }

        @Override // com.google.common.base.d
        @h3.c
        void Q(BitSet bitSet) {
            bitSet.set(this.f32166b, this.f32167c + 1);
        }

        @Override // com.google.common.base.d
        public String toString() {
            return "CharMatcher.inRange('" + d.R(this.f32166b) + "', '" + d.R(this.f32167c) + "')";
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static final class l extends a0 {

        /* renamed from: e  reason: collision with root package name */
        private static final String f32168e = "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9";

        /* renamed from: f  reason: collision with root package name */
        private static final String f32169f = "  \u00ad\u0605\u061c\u06dd\u070f\u08e2\u1680\u180e\u200f \u2064\u206f\u3000\uf8ff\ufeff\ufffb";

        /* renamed from: g  reason: collision with root package name */
        static final l f32170g = new l();

        private l() {
            super("CharMatcher.invisible()", f32168e.toCharArray(), f32169f.toCharArray());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    public static final class m extends i {

        /* renamed from: b  reason: collision with root package name */
        private final char f32171b;

        m(char c10) {
            this.f32171b = c10;
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return c10 == this.f32171b;
        }

        @Override // com.google.common.base.d.i, com.google.common.base.d
        public d F() {
            return d.s(this.f32171b);
        }

        @Override // com.google.common.base.d
        public d I(d dVar) {
            return dVar.B(this.f32171b) ? dVar : super.I(dVar);
        }

        @Override // com.google.common.base.d
        public String N(CharSequence charSequence, char c10) {
            return charSequence.toString().replace(this.f32171b, c10);
        }

        @Override // com.google.common.base.d
        @h3.c
        void Q(BitSet bitSet) {
            bitSet.set(this.f32171b);
        }

        @Override // com.google.common.base.d
        public d b(d dVar) {
            return dVar.B(this.f32171b) ? this : d.G();
        }

        @Override // com.google.common.base.d
        public String toString() {
            return "CharMatcher.is('" + d.R(this.f32171b) + "')";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    public static final class n extends i {

        /* renamed from: b  reason: collision with root package name */
        private final char f32172b;

        /* renamed from: c  reason: collision with root package name */
        private final char f32173c;

        n(char c10, char c11) {
            this.f32172b = c10;
            this.f32173c = c11;
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return c10 == this.f32172b || c10 == this.f32173c;
        }

        @Override // com.google.common.base.d
        @h3.c
        void Q(BitSet bitSet) {
            bitSet.set(this.f32172b);
            bitSet.set(this.f32173c);
        }

        @Override // com.google.common.base.d
        public String toString() {
            return "CharMatcher.anyOf(\"" + d.R(this.f32172b) + d.R(this.f32173c) + "\")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    public static final class o extends i {

        /* renamed from: b  reason: collision with root package name */
        private final char f32174b;

        o(char c10) {
            this.f32174b = c10;
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return c10 != this.f32174b;
        }

        @Override // com.google.common.base.d.i, com.google.common.base.d
        public d F() {
            return d.q(this.f32174b);
        }

        @Override // com.google.common.base.d
        public d I(d dVar) {
            return dVar.B(this.f32174b) ? d.c() : this;
        }

        @Override // com.google.common.base.d
        @h3.c
        void Q(BitSet bitSet) {
            bitSet.set(0, this.f32174b);
            bitSet.set(this.f32174b + 1, 65536);
        }

        @Override // com.google.common.base.d
        public d b(d dVar) {
            return dVar.B(this.f32174b) ? super.b(dVar) : dVar;
        }

        @Override // com.google.common.base.d
        public String toString() {
            return "CharMatcher.isNot('" + d.R(this.f32174b) + "')";
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static final class p extends d {

        /* renamed from: b  reason: collision with root package name */
        static final p f32175b = new p();

        private p() {
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return Character.isDigit(c10);
        }

        @Override // com.google.common.base.d, com.google.common.base.b0
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.d
        public String toString() {
            return "CharMatcher.javaDigit()";
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static final class q extends v {

        /* renamed from: c  reason: collision with root package name */
        static final q f32176c = new q();

        private q() {
            super("CharMatcher.javaIsoControl()");
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return c10 <= 31 || (c10 >= 127 && c10 <= 159);
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static final class r extends d {

        /* renamed from: b  reason: collision with root package name */
        static final r f32177b = new r();

        private r() {
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return Character.isLetter(c10);
        }

        @Override // com.google.common.base.d, com.google.common.base.b0
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.d
        public String toString() {
            return "CharMatcher.javaLetter()";
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static final class s extends d {

        /* renamed from: b  reason: collision with root package name */
        static final s f32178b = new s();

        private s() {
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return Character.isLetterOrDigit(c10);
        }

        @Override // com.google.common.base.d, com.google.common.base.b0
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.d
        public String toString() {
            return "CharMatcher.javaLetterOrDigit()";
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static final class t extends d {

        /* renamed from: b  reason: collision with root package name */
        static final t f32179b = new t();

        private t() {
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return Character.isLowerCase(c10);
        }

        @Override // com.google.common.base.d, com.google.common.base.b0
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.d
        public String toString() {
            return "CharMatcher.javaLowerCase()";
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    private static final class u extends d {

        /* renamed from: b  reason: collision with root package name */
        static final u f32180b = new u();

        private u() {
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return Character.isUpperCase(c10);
        }

        @Override // com.google.common.base.d, com.google.common.base.b0
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.d
        public String toString() {
            return "CharMatcher.javaUpperCase()";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    public static abstract class v extends i {

        /* renamed from: b  reason: collision with root package name */
        private final String f32181b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public v(String str) {
            this.f32181b = (String) com.google.common.base.a0.E(str);
        }

        @Override // com.google.common.base.d
        public final String toString() {
            return this.f32181b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    public static class w extends d {

        /* renamed from: b  reason: collision with root package name */
        final d f32182b;

        w(d dVar) {
            this.f32182b = (d) com.google.common.base.a0.E(dVar);
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return !this.f32182b.B(c10);
        }

        @Override // com.google.common.base.d
        public boolean C(CharSequence charSequence) {
            return this.f32182b.E(charSequence);
        }

        @Override // com.google.common.base.d
        public boolean E(CharSequence charSequence) {
            return this.f32182b.C(charSequence);
        }

        @Override // com.google.common.base.d
        public d F() {
            return this.f32182b;
        }

        @Override // com.google.common.base.d
        @h3.c
        void Q(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.f32182b.Q(bitSet2);
            bitSet2.flip(0, 65536);
            bitSet.or(bitSet2);
        }

        @Override // com.google.common.base.d, com.google.common.base.b0
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.d
        public int i(CharSequence charSequence) {
            return charSequence.length() - this.f32182b.i(charSequence);
        }

        @Override // com.google.common.base.d
        public String toString() {
            return this.f32182b + ".negate()";
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    static class x extends w {
        x(d dVar) {
            super(dVar);
        }

        @Override // com.google.common.base.d
        public final d J() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    public static final class y extends v {

        /* renamed from: c  reason: collision with root package name */
        static final y f32183c = new y();

        private y() {
            super("CharMatcher.none()");
        }

        @Override // com.google.common.base.d
        public int A(CharSequence charSequence) {
            com.google.common.base.a0.E(charSequence);
            return -1;
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return false;
        }

        @Override // com.google.common.base.d
        public boolean C(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.d
        public boolean E(CharSequence charSequence) {
            com.google.common.base.a0.E(charSequence);
            return true;
        }

        @Override // com.google.common.base.d.i, com.google.common.base.d
        public d F() {
            return d.c();
        }

        @Override // com.google.common.base.d
        public d I(d dVar) {
            return (d) com.google.common.base.a0.E(dVar);
        }

        @Override // com.google.common.base.d
        public String M(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.d
        public String N(CharSequence charSequence, char c10) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.d
        public String O(CharSequence charSequence, CharSequence charSequence2) {
            com.google.common.base.a0.E(charSequence2);
            return charSequence.toString();
        }

        @Override // com.google.common.base.d
        public String U(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.d
        public String V(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.d
        public String W(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.d
        public d b(d dVar) {
            com.google.common.base.a0.E(dVar);
            return this;
        }

        @Override // com.google.common.base.d
        public String h(CharSequence charSequence, char c10) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.d
        public int i(CharSequence charSequence) {
            com.google.common.base.a0.E(charSequence);
            return 0;
        }

        @Override // com.google.common.base.d
        public int n(CharSequence charSequence) {
            com.google.common.base.a0.E(charSequence);
            return -1;
        }

        @Override // com.google.common.base.d
        public int o(CharSequence charSequence, int i4) {
            com.google.common.base.a0.d0(i4, charSequence.length());
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CharMatcher.java */
    /* loaded from: classes2.dex */
    public static final class z extends d {

        /* renamed from: b  reason: collision with root package name */
        final d f32184b;

        /* renamed from: c  reason: collision with root package name */
        final d f32185c;

        z(d dVar, d dVar2) {
            this.f32184b = (d) com.google.common.base.a0.E(dVar);
            this.f32185c = (d) com.google.common.base.a0.E(dVar2);
        }

        @Override // com.google.common.base.d
        public boolean B(char c10) {
            return this.f32184b.B(c10) || this.f32185c.B(c10);
        }

        @Override // com.google.common.base.d
        @h3.c
        void Q(BitSet bitSet) {
            this.f32184b.Q(bitSet);
            this.f32185c.Q(bitSet);
        }

        @Override // com.google.common.base.d, com.google.common.base.b0
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.d
        public String toString() {
            return "CharMatcher.or(" + this.f32184b + ", " + this.f32185c + ")";
        }
    }

    protected d() {
    }

    public static d G() {
        return y.f32183c;
    }

    public static d H(CharSequence charSequence) {
        return d(charSequence).F();
    }

    @h3.c
    private static d L(int i4, BitSet bitSet, String str) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    return t(i4, bitSet.length()) ? e0.a0(bitSet, str) : new f(bitSet, str, null);
                }
                char nextSetBit = (char) bitSet.nextSetBit(0);
                return r(nextSetBit, (char) bitSet.nextSetBit(nextSetBit + 1));
            }
            return q((char) bitSet.nextSetBit(0));
        }
        return G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String R(char c10) {
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        for (int i4 = 0; i4 < 4; i4++) {
            cArr[5 - i4] = "0123456789ABCDEF".charAt(c10 & 15);
            c10 = (char) (c10 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    @Deprecated
    public static d S() {
        return b0.f32153e;
    }

    public static d X() {
        return c0.f32158f;
    }

    public static d c() {
        return c.f32154c;
    }

    public static d d(CharSequence charSequence) {
        int length = charSequence.length();
        if (length != 0) {
            if (length != 1) {
                if (length != 2) {
                    return new C0204d(charSequence);
                }
                return r(charSequence.charAt(0), charSequence.charAt(1));
            }
            return q(charSequence.charAt(0));
        }
        return G();
    }

    public static d f() {
        return e.f32160c;
    }

    public static d g() {
        return g.f32162b;
    }

    @Deprecated
    public static d j() {
        return h.f32164f;
    }

    private String k(CharSequence charSequence, int i4, int i10, char c10, StringBuilder sb, boolean z9) {
        while (i4 < i10) {
            char charAt = charSequence.charAt(i4);
            if (!B(charAt)) {
                sb.append(charAt);
                z9 = false;
            } else if (!z9) {
                sb.append(c10);
                z9 = true;
            }
            i4++;
        }
        return sb.toString();
    }

    public static d l(com.google.common.base.b0<? super Character> b0Var) {
        return b0Var instanceof d ? (d) b0Var : new j(b0Var);
    }

    public static d m(char c10, char c11) {
        return new k(c10, c11);
    }

    @Deprecated
    public static d p() {
        return l.f32170g;
    }

    public static d q(char c10) {
        return new m(c10);
    }

    private static n r(char c10, char c11) {
        return new n(c10, c11);
    }

    public static d s(char c10) {
        return new o(c10);
    }

    @h3.c
    private static boolean t(int i4, int i10) {
        return i4 <= 1023 && i10 > (i4 * 4) * 16;
    }

    @Deprecated
    public static d u() {
        return p.f32175b;
    }

    public static d v() {
        return q.f32176c;
    }

    @Deprecated
    public static d w() {
        return r.f32177b;
    }

    @Deprecated
    public static d x() {
        return s.f32178b;
    }

    @Deprecated
    public static d y() {
        return t.f32179b;
    }

    @Deprecated
    public static d z() {
        return u.f32180b;
    }

    public int A(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (B(charSequence.charAt(length))) {
                return length;
            }
        }
        return -1;
    }

    public abstract boolean B(char c10);

    public boolean C(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!B(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public boolean D(CharSequence charSequence) {
        return !E(charSequence);
    }

    public boolean E(CharSequence charSequence) {
        return n(charSequence) == -1;
    }

    public d F() {
        return new w(this);
    }

    public d I(d dVar) {
        return new z(this, dVar);
    }

    public d J() {
        return com.google.common.base.z.i(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.c
    public d K() {
        String str;
        BitSet bitSet = new BitSet();
        Q(bitSet);
        int cardinality = bitSet.cardinality();
        if (cardinality * 2 <= 65536) {
            return L(cardinality, bitSet, toString());
        }
        bitSet.flip(0, 65536);
        int i4 = 65536 - cardinality;
        String dVar = toString();
        if (dVar.endsWith(".negate()")) {
            str = dVar.substring(0, dVar.length() - 9);
        } else {
            str = dVar + ".negate()";
        }
        return new a(L(i4, bitSet, str), dVar);
    }

    public String M(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        int n9 = n(charSequence2);
        if (n9 == -1) {
            return charSequence2;
        }
        char[] charArray = charSequence2.toCharArray();
        int i4 = 1;
        while (true) {
            n9++;
            while (n9 != charArray.length) {
                if (B(charArray[n9])) {
                    break;
                }
                charArray[n9 - i4] = charArray[n9];
                n9++;
            }
            return new String(charArray, 0, n9 - i4);
            i4++;
        }
    }

    public String N(CharSequence charSequence, char c10) {
        String charSequence2 = charSequence.toString();
        int n9 = n(charSequence2);
        if (n9 == -1) {
            return charSequence2;
        }
        char[] charArray = charSequence2.toCharArray();
        charArray[n9] = c10;
        while (true) {
            n9++;
            if (n9 < charArray.length) {
                if (B(charArray[n9])) {
                    charArray[n9] = c10;
                }
            } else {
                return new String(charArray);
            }
        }
    }

    public String O(CharSequence charSequence, CharSequence charSequence2) {
        int length = charSequence2.length();
        if (length == 0) {
            return M(charSequence);
        }
        int i4 = 0;
        if (length == 1) {
            return N(charSequence, charSequence2.charAt(0));
        }
        String charSequence3 = charSequence.toString();
        int n9 = n(charSequence3);
        if (n9 == -1) {
            return charSequence3;
        }
        int length2 = charSequence3.length();
        StringBuilder sb = new StringBuilder(((length2 * 3) / 2) + 16);
        do {
            sb.append((CharSequence) charSequence3, i4, n9);
            sb.append(charSequence2);
            i4 = n9 + 1;
            n9 = o(charSequence3, i4);
        } while (n9 != -1);
        sb.append((CharSequence) charSequence3, i4, length2);
        return sb.toString();
    }

    public String P(CharSequence charSequence) {
        return F().M(charSequence);
    }

    @h3.c
    void Q(BitSet bitSet) {
        for (int i4 = 65535; i4 >= 0; i4--) {
            if (B((char) i4)) {
                bitSet.set(i4);
            }
        }
    }

    public String T(CharSequence charSequence, char c10) {
        int length = charSequence.length();
        int i4 = length - 1;
        int i10 = 0;
        while (i10 < length && B(charSequence.charAt(i10))) {
            i10++;
        }
        int i11 = i4;
        while (i11 > i10 && B(charSequence.charAt(i11))) {
            i11--;
        }
        if (i10 == 0 && i11 == i4) {
            return h(charSequence, c10);
        }
        int i12 = i11 + 1;
        return k(charSequence, i10, i12, c10, new StringBuilder(i12 - i10), false);
    }

    public String U(CharSequence charSequence) {
        int length = charSequence.length();
        int i4 = 0;
        while (i4 < length && B(charSequence.charAt(i4))) {
            i4++;
        }
        int i10 = length - 1;
        while (i10 > i4 && B(charSequence.charAt(i10))) {
            i10--;
        }
        return charSequence.subSequence(i4, i10 + 1).toString();
    }

    public String V(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i4 = 0; i4 < length; i4++) {
            if (!B(charSequence.charAt(i4))) {
                return charSequence.subSequence(i4, length).toString();
            }
        }
        return "";
    }

    public String W(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!B(charSequence.charAt(length))) {
                return charSequence.subSequence(0, length + 1).toString();
            }
        }
        return "";
    }

    public d b(d dVar) {
        return new b(this, dVar);
    }

    @Override // com.google.common.base.b0
    @Deprecated
    /* renamed from: e */
    public boolean apply(Character ch) {
        return B(ch.charValue());
    }

    public String h(CharSequence charSequence, char c10) {
        int length = charSequence.length();
        int i4 = 0;
        while (i4 < length) {
            char charAt = charSequence.charAt(i4);
            if (B(charAt)) {
                if (charAt != c10 || (i4 != length - 1 && B(charSequence.charAt(i4 + 1)))) {
                    StringBuilder sb = new StringBuilder(length);
                    sb.append(charSequence, 0, i4);
                    sb.append(c10);
                    return k(charSequence, i4 + 1, length, c10, sb, true);
                }
                i4++;
            }
            i4++;
        }
        return charSequence.toString();
    }

    public int i(CharSequence charSequence) {
        int i4 = 0;
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            if (B(charSequence.charAt(i10))) {
                i4++;
            }
        }
        return i4;
    }

    public int n(CharSequence charSequence) {
        return o(charSequence, 0);
    }

    public int o(CharSequence charSequence, int i4) {
        int length = charSequence.length();
        com.google.common.base.a0.d0(i4, length);
        while (i4 < length) {
            if (B(charSequence.charAt(i4))) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    public String toString() {
        return super.toString();
    }
}
