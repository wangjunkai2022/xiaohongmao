package com.google.android.gms.internal.common;

import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class e0 implements Iterable<String> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ CharSequence f29388a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ g0 f29389b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(g0 g0Var, CharSequence charSequence) {
        this.f29389b = g0Var;
        this.f29388a = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        Iterator<String> h4;
        h4 = this.f29389b.h(this.f29388a);
        return h4;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        Iterator<String> it = iterator();
        try {
            if (it.hasNext()) {
                sb.append(z.a(it.next(), ", "));
                while (it.hasNext()) {
                    sb.append((CharSequence) ", ");
                    sb.append(z.a(it.next(), ", "));
                }
            }
            sb.append(']');
            return sb.toString();
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }
}
