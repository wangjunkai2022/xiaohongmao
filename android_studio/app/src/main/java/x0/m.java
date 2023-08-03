package x0;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ImagePerfUtils.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class m {
    private m() {
    }

    public static String a(int imageLoadStatus) {
        return imageLoadStatus != 0 ? imageLoadStatus != 1 ? imageLoadStatus != 2 ? imageLoadStatus != 3 ? imageLoadStatus != 4 ? imageLoadStatus != 5 ? "unknown" : com.qennnsad.aknkaksd.data.websocket.b.f47825n : "canceled" : "success" : "intermediate_available" : "origin_available" : "requested";
    }
}
