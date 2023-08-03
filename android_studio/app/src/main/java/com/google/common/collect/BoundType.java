package com.google.common.collect;

@h3.b
/* loaded from: classes2.dex */
public enum BoundType {
    OPEN(false),
    CLOSED(true);
    

    /* renamed from: a  reason: collision with root package name */
    final boolean f32621a;

    BoundType(boolean z9) {
        this.f32621a = z9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BoundType b(boolean z9) {
        return z9 ? CLOSED : OPEN;
    }

    BoundType a() {
        return b(!this.f32621a);
    }
}
