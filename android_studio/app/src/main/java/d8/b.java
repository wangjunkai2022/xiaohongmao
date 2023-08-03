package d8;

import java.io.InputStream;
import master.flame.danmaku.danmaku.loader.IllegalDataException;

/* compiled from: BiliDanmakuLoader.java */
/* loaded from: classes4.dex */
public class b implements c8.a {

    /* renamed from: b  reason: collision with root package name */
    private static b f62006b;

    /* renamed from: a  reason: collision with root package name */
    private e8.a f62007a;

    private b() {
    }

    public static b d() {
        if (f62006b == null) {
            f62006b = new b();
        }
        return f62006b;
    }

    @Override // c8.a
    /* renamed from: a */
    public e8.a getDataSource() {
        return this.f62007a;
    }

    @Override // c8.a
    public void b(String str) throws IllegalDataException {
        try {
            this.f62007a = new e8.a(str);
        } catch (Exception e4) {
            throw new IllegalDataException(e4);
        }
    }

    @Override // c8.a
    public void c(InputStream inputStream) {
        this.f62007a = new e8.a(inputStream);
    }
}
