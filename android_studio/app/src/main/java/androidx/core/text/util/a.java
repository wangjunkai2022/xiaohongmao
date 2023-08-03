package androidx.core.text.util;

import androidx.core.text.util.LinkifyCompat;
import java.util.Comparator;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ a f498a = new a();

    private /* synthetic */ a() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$static$0;
        lambda$static$0 = LinkifyCompat.lambda$static$0((LinkifyCompat.LinkSpec) obj, (LinkifyCompat.LinkSpec) obj2);
        return lambda$static$0;
    }
}
