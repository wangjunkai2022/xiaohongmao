package e8;

import android.net.Uri;
import android.text.TextUtils;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;

/* compiled from: JSONSource.java */
/* loaded from: classes4.dex */
public class b implements master.flame.danmaku.danmaku.parser.b<JSONArray> {

    /* renamed from: d  reason: collision with root package name */
    private JSONArray f63426d;

    /* renamed from: e  reason: collision with root package name */
    private InputStream f63427e;

    public b(String str) throws JSONException {
        c(str);
    }

    private void b(InputStream inputStream) throws JSONException {
        Objects.requireNonNull(inputStream, "input stream cannot be null!");
        this.f63427e = inputStream;
        c(g8.b.d(inputStream));
    }

    private void c(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f63426d = new JSONArray(str);
    }

    @Override // master.flame.danmaku.danmaku.parser.b
    /* renamed from: a */
    public JSONArray data() {
        return this.f63426d;
    }

    @Override // master.flame.danmaku.danmaku.parser.b
    public void release() {
        g8.b.a(this.f63427e);
        this.f63427e = null;
        this.f63426d = null;
    }

    public b(InputStream inputStream) throws JSONException {
        b(inputStream);
    }

    public b(URL url) throws JSONException, IOException {
        this(url.openStream());
    }

    public b(File file) throws FileNotFoundException, JSONException {
        b(new FileInputStream(file));
    }

    public b(Uri uri) throws IOException, JSONException {
        String scheme = uri.getScheme();
        if (!"http".equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
            if ("file".equalsIgnoreCase(scheme)) {
                String path = uri.getPath();
                b(h.b.d(new FileInputStream(path), path));
                return;
            }
            return;
        }
        b(new URL(uri.getPath()).openStream());
    }
}
