package io.sentry;

import java.util.Iterator;
import java.util.Objects;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes4.dex */
public final /* synthetic */ class c {
    public static /* synthetic */ String a(CharSequence charSequence, Iterable iterable) {
        Objects.requireNonNull(charSequence, com.google.android.exoplayer2.text.ttml.d.f25710b0);
        StringBuilder sb = new StringBuilder();
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb.append(charSequence);
            }
        }
        return sb.toString();
    }
}
