package com.google.mlkit.nl.languageid.internal;

import java.util.Comparator;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class e implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ e f35947a = new e();

    private /* synthetic */ e() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((a) obj2).getPriority() - ((a) obj).getPriority();
    }
}
