package com.google.android.gms.internal.common;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    private final x f29398a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f29399b;

    /* renamed from: c  reason: collision with root package name */
    private final d0 f29400c;

    private g0(d0 d0Var, boolean z9, x xVar, int i4, byte[] bArr) {
        this.f29400c = d0Var;
        this.f29399b = z9;
        this.f29398a = xVar;
    }

    public static g0 c(x xVar) {
        return new g0(new d0(xVar), false, w.f29414b, Integer.MAX_VALUE, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Iterator<String> h(CharSequence charSequence) {
        return new c0(this.f29400c, this, charSequence);
    }

    public final g0 b() {
        return new g0(this.f29400c, true, this.f29398a, Integer.MAX_VALUE, null);
    }

    public final Iterable<String> d(CharSequence charSequence) {
        return new e0(this, charSequence);
    }

    public final List<String> f(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        Iterator<String> h4 = h(charSequence);
        ArrayList arrayList = new ArrayList();
        while (h4.hasNext()) {
            arrayList.add(h4.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
