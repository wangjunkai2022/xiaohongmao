package s1;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ImageTranscodeResult.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f93236a;

    public b(int transcodeStatus) {
        this.f93236a = transcodeStatus;
    }

    public int a() {
        return this.f93236a;
    }

    public String toString() {
        return String.format(null, "Status: %d", Integer.valueOf(this.f93236a));
    }
}
