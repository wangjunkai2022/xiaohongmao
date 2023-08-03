package shaded.org.apache.commons.codec.binary;

import java.util.Arrays;
import shaded.org.apache.commons.codec.DecoderException;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: BaseNCodec.java */
/* loaded from: classes5.dex */
public abstract class g implements h9.b, h9.a {

    /* renamed from: g  reason: collision with root package name */
    static final int f93453g = -1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f93454h = 76;

    /* renamed from: i  reason: collision with root package name */
    public static final int f93455i = 64;

    /* renamed from: j  reason: collision with root package name */
    private static final int f93456j = 2;

    /* renamed from: k  reason: collision with root package name */
    private static final int f93457k = 8192;

    /* renamed from: l  reason: collision with root package name */
    protected static final int f93458l = 255;

    /* renamed from: m  reason: collision with root package name */
    protected static final byte f93459m = 61;
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    protected final byte f93460a;

    /* renamed from: b  reason: collision with root package name */
    protected final byte f93461b;

    /* renamed from: c  reason: collision with root package name */
    private final int f93462c;

    /* renamed from: d  reason: collision with root package name */
    private final int f93463d;

    /* renamed from: e  reason: collision with root package name */
    protected final int f93464e;

    /* renamed from: f  reason: collision with root package name */
    private final int f93465f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseNCodec.java */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f93466a;

        /* renamed from: b  reason: collision with root package name */
        long f93467b;

        /* renamed from: c  reason: collision with root package name */
        byte[] f93468c;

        /* renamed from: d  reason: collision with root package name */
        int f93469d;

        /* renamed from: e  reason: collision with root package name */
        int f93470e;

        /* renamed from: f  reason: collision with root package name */
        boolean f93471f;

        /* renamed from: g  reason: collision with root package name */
        int f93472g;

        /* renamed from: h  reason: collision with root package name */
        int f93473h;

        public String toString() {
            return String.format("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, lbitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", getClass().getSimpleName(), Arrays.toString(this.f93468c), Integer.valueOf(this.f93472g), Boolean.valueOf(this.f93471f), Integer.valueOf(this.f93466a), Long.valueOf(this.f93467b), Integer.valueOf(this.f93473h), Integer.valueOf(this.f93469d), Integer.valueOf(this.f93470e));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g(int i4, int i10, int i11, int i12) {
        this(i4, i10, i11, i12, f93459m);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean u(byte b10) {
        return b10 == 9 || b10 == 10 || b10 == 13 || b10 == 32;
    }

    private byte[] w(a aVar) {
        byte[] bArr = aVar.f93468c;
        if (bArr == null) {
            aVar.f93468c = new byte[o()];
            aVar.f93469d = 0;
            aVar.f93470e = 0;
        } else {
            byte[] bArr2 = new byte[bArr.length * 2];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            aVar.f93468c = bArr2;
        }
        return aVar.f93468c;
    }

    @Override // h9.f
    public Object a(Object obj) throws EncoderException {
        if (obj instanceof byte[]) {
            return e((byte[]) obj);
        }
        throw new EncoderException("Parameter supplied to Base-N encode is not a byte[]");
    }

    @Override // h9.e
    public Object d(Object obj) throws DecoderException {
        if (obj instanceof byte[]) {
            return decode((byte[]) obj);
        }
        if (obj instanceof String) {
            return i((String) obj);
        }
        throw new DecoderException("Parameter supplied to Base-N decode is not a byte[] or a String");
    }

    @Override // h9.a
    public byte[] decode(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        a aVar = new a();
        h(bArr, 0, bArr.length, aVar);
        h(bArr, 0, -1, aVar);
        int i4 = aVar.f93469d;
        byte[] bArr2 = new byte[i4];
        v(bArr2, 0, i4, aVar);
        return bArr2;
    }

    @Override // h9.b
    public byte[] e(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? bArr : k(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f(a aVar) {
        if (aVar.f93468c != null) {
            return aVar.f93469d - aVar.f93470e;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean g(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        for (byte b10 : bArr) {
            if (this.f93461b == b10 || r(b10)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void h(byte[] bArr, int i4, int i10, a aVar);

    public byte[] i(String str) {
        return decode(m.k(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void j(byte[] bArr, int i4, int i10, a aVar);

    public byte[] k(byte[] bArr, int i4, int i10) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        a aVar = new a();
        j(bArr, i4, i10, aVar);
        j(bArr, i4, -1, aVar);
        int i11 = aVar.f93469d - aVar.f93470e;
        byte[] bArr2 = new byte[i11];
        v(bArr2, 0, i11, aVar);
        return bArr2;
    }

    public String l(byte[] bArr) {
        return m.t(e(bArr));
    }

    public String m(byte[] bArr) {
        return m.t(e(bArr));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] n(int i4, a aVar) {
        byte[] bArr = aVar.f93468c;
        return (bArr == null || bArr.length < aVar.f93469d + i4) ? w(aVar) : bArr;
    }

    protected int o() {
        return 8192;
    }

    public long p(byte[] bArr) {
        int length = bArr.length;
        int i4 = this.f93462c;
        long j4 = (((length + i4) - 1) / i4) * this.f93463d;
        int i10 = this.f93464e;
        return i10 > 0 ? j4 + ((((i10 + j4) - 1) / i10) * this.f93465f) : j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean q(a aVar) {
        return aVar.f93468c != null;
    }

    protected abstract boolean r(byte b10);

    public boolean s(String str) {
        return t(m.k(str), true);
    }

    public boolean t(byte[] bArr, boolean z9) {
        for (byte b10 : bArr) {
            if (!r(b10) && (!z9 || (b10 != this.f93461b && !u(b10)))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int v(byte[] bArr, int i4, int i10, a aVar) {
        if (aVar.f93468c == null) {
            return aVar.f93471f ? -1 : 0;
        }
        int min = Math.min(f(aVar), i10);
        System.arraycopy(aVar.f93468c, aVar.f93470e, bArr, i4, min);
        int i11 = aVar.f93470e + min;
        aVar.f93470e = i11;
        if (i11 >= aVar.f93469d) {
            aVar.f93468c = null;
        }
        return min;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g(int i4, int i10, int i11, int i12, byte b10) {
        this.f93460a = f93459m;
        this.f93462c = i4;
        this.f93463d = i10;
        this.f93464e = i11 > 0 && i12 > 0 ? (i11 / i10) * i10 : 0;
        this.f93465f = i12;
        this.f93461b = b10;
    }
}
