package p4;

import android.media.ToneGenerator;
import kotlin.Metadata;

/* compiled from: SoundsUtil.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\u0006"}, d2 = {"Lp4/g;", "", "", "a", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final g f93091a = new g();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final ToneGenerator f93092b = new ToneGenerator(3, 100);

    private g() {
    }

    public final void a() {
        f93092b.startTone(91, 150);
    }
}
