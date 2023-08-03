package w3;

/* compiled from: AspectRatio.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    public static final a f94338b = new a(255);

    /* renamed from: a  reason: collision with root package name */
    private int f94339a;

    private a(int i4) {
        this.f94339a = i4;
    }

    public static a a(int i4) {
        a aVar = f94338b;
        return i4 == aVar.f94339a ? aVar : new a(i4);
    }

    public int b() {
        return this.f94339a;
    }

    public String toString() {
        return "AspectRatio{value=" + this.f94339a + '}';
    }
}
