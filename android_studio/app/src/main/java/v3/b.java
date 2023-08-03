package v3;

/* compiled from: CharCache.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private char[] f94192a;

    /* renamed from: b  reason: collision with root package name */
    private int f94193b;

    public b(int i4) {
        this.f94192a = new char[i4];
    }

    public void a(char c10) {
        int i4 = this.f94193b;
        char[] cArr = this.f94192a;
        if (i4 < cArr.length - 1) {
            cArr[i4] = c10;
            this.f94193b = i4 + 1;
        }
    }

    public void b(String str) {
        char[] charArray = str.toCharArray();
        char[] cArr = this.f94192a;
        int length = cArr.length;
        int i4 = this.f94193b;
        int i10 = length - i4;
        if (charArray.length < i10) {
            i10 = charArray.length;
        }
        System.arraycopy(charArray, 0, cArr, i4, i10);
        this.f94193b += i10;
    }

    public void c() {
        this.f94193b = 0;
    }

    public int d() {
        return this.f94193b;
    }

    public String toString() {
        return new String(this.f94192a, 0, this.f94193b);
    }
}
