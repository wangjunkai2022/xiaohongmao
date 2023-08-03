package k0;

import com.facebook.common.internal.f;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import r7.h;

/* compiled from: FileBinaryResource.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final File f84570a;

    private c(File file) {
        this.f84570a = (File) j.i(file);
    }

    public static c b(File file) {
        return new c(file);
    }

    @h
    public static c c(File file) {
        if (file != null) {
            return new c(file);
        }
        return null;
    }

    @Override // k0.a
    public InputStream a() throws IOException {
        File file = this.f84570a;
        return h.b.a(new FileInputStream(file), file);
    }

    public File d() {
        return this.f84570a;
    }

    public boolean equals(@r7.h Object obj) {
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        return this.f84570a.equals(((c) obj).f84570a);
    }

    public int hashCode() {
        return this.f84570a.hashCode();
    }

    @Override // k0.a
    public byte[] read() throws IOException {
        return f.b(this.f84570a);
    }

    @Override // k0.a
    public long size() {
        return this.f84570a.length();
    }
}
