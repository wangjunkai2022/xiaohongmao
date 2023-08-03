package d8;

import android.net.Uri;
import java.io.InputStream;
import master.flame.danmaku.danmaku.loader.IllegalDataException;

/* compiled from: AcFunDanmakuLoader.java */
/* loaded from: classes4.dex */
public class a implements c8.a {

    /* renamed from: b  reason: collision with root package name */
    private static volatile a f62004b;

    /* renamed from: a  reason: collision with root package name */
    private e8.b f62005a;

    private a() {
    }

    public static c8.a d() {
        if (f62004b == null) {
            synchronized (a.class) {
                if (f62004b == null) {
                    f62004b = new a();
                }
            }
        }
        return f62004b;
    }

    @Override // c8.a
    /* renamed from: a */
    public e8.b getDataSource() {
        return this.f62005a;
    }

    @Override // c8.a
    public void b(String str) throws IllegalDataException {
        try {
            this.f62005a = new e8.b(Uri.parse(str));
        } catch (Exception e4) {
            throw new IllegalDataException(e4);
        }
    }

    @Override // c8.a
    public void c(InputStream inputStream) throws IllegalDataException {
        try {
            this.f62005a = new e8.b(inputStream);
        } catch (Exception e4) {
            throw new IllegalDataException(e4);
        }
    }
}
