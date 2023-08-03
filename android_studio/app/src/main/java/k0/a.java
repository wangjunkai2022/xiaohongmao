package k0;

import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: BinaryResource.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface a {
    InputStream a() throws IOException;

    byte[] read() throws IOException;

    long size();
}
