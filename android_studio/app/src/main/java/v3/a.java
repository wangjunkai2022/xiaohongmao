package v3;

/* compiled from: BTree.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private a f94189a;

    /* renamed from: b  reason: collision with root package name */
    private a f94190b;

    /* renamed from: c  reason: collision with root package name */
    private Object f94191c;

    public void a(String str, Object obj) {
        a aVar;
        if (str.length() == 0) {
            this.f94191c = obj;
            return;
        }
        if (str.charAt(0) == '0') {
            if (this.f94189a == null) {
                this.f94189a = new a();
            }
            aVar = this.f94189a;
        } else {
            if (this.f94190b == null) {
                this.f94190b = new a();
            }
            aVar = this.f94190b;
        }
        aVar.a(str.substring(1), obj);
    }

    public a b(int i4) {
        if (i4 == 0) {
            return this.f94189a;
        }
        return this.f94190b;
    }

    public Object c() {
        return this.f94191c;
    }
}
