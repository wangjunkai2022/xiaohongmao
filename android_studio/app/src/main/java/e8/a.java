package e8;

import android.net.Uri;
import io.sentry.instrumentation.file.h;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;

/* compiled from: AndroidFileSource.java */
/* loaded from: classes4.dex */
public class a implements master.flame.danmaku.danmaku.parser.b<InputStream> {

    /* renamed from: d  reason: collision with root package name */
    private InputStream f63425d;

    public a(String str) {
        b(new File(str));
    }

    @Override // master.flame.danmaku.danmaku.parser.b
    /* renamed from: a */
    public InputStream data() {
        return this.f63425d;
    }

    public void b(File file) {
        try {
            this.f63425d = new BufferedInputStream(h.b.a(new FileInputStream(file), file));
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
        }
    }

    public void c(Uri uri) {
        try {
            URL url = new URL(uri.getPath());
            url.openConnection();
            this.f63425d = new BufferedInputStream(url.openStream());
        } catch (MalformedURLException e4) {
            e4.printStackTrace();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public void d(Uri uri) {
        String scheme = uri.getScheme();
        if (!"http".equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
            if ("file".equalsIgnoreCase(scheme)) {
                b(new File(uri.getPath()));
                return;
            }
            return;
        }
        c(uri);
    }

    @Override // master.flame.danmaku.danmaku.parser.b
    public void release() {
        g8.b.a(this.f63425d);
        this.f63425d = null;
    }

    public a(Uri uri) {
        d(uri);
    }

    public a(File file) {
        b(file);
    }

    public a(InputStream inputStream) {
        this.f63425d = inputStream;
    }
}
