package w3;

/* compiled from: ChromaFormat.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: d  reason: collision with root package name */
    public static c f94340d = new c(0, 0, 0);

    /* renamed from: e  reason: collision with root package name */
    public static c f94341e = new c(1, 2, 2);

    /* renamed from: f  reason: collision with root package name */
    public static c f94342f = new c(2, 2, 1);

    /* renamed from: g  reason: collision with root package name */
    public static c f94343g = new c(3, 1, 1);

    /* renamed from: a  reason: collision with root package name */
    private int f94344a;

    /* renamed from: b  reason: collision with root package name */
    private int f94345b;

    /* renamed from: c  reason: collision with root package name */
    private int f94346c;

    public c(int i4, int i10, int i11) {
        this.f94344a = i4;
        this.f94345b = i10;
        this.f94346c = i11;
    }

    public static c a(int i4) {
        c cVar = f94340d;
        if (i4 == cVar.f94344a) {
            return cVar;
        }
        c cVar2 = f94341e;
        if (i4 == cVar2.f94344a) {
            return cVar2;
        }
        c cVar3 = f94342f;
        if (i4 == cVar3.f94344a) {
            return cVar3;
        }
        c cVar4 = f94343g;
        if (i4 == cVar4.f94344a) {
            return cVar4;
        }
        return null;
    }

    public int b() {
        return this.f94344a;
    }

    public int c() {
        return this.f94346c;
    }

    public int d() {
        return this.f94345b;
    }

    public String toString() {
        return "ChromaFormat{\nid=" + this.f94344a + ",\n subWidth=" + this.f94345b + ",\n subHeight=" + this.f94346c + '}';
    }
}
