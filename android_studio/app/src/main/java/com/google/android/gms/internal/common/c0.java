package com.google.android.gms.internal.common;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class c0 extends f0 {

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ d0 f29385h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(d0 d0Var, g0 g0Var, CharSequence charSequence) {
        super(g0Var, charSequence);
        this.f29385h = d0Var;
    }

    @Override // com.google.android.gms.internal.common.f0
    final int c(int i4) {
        return i4 + 1;
    }

    @Override // com.google.android.gms.internal.common.f0
    final int d(int i4) {
        x xVar = this.f29385h.f29386a;
        CharSequence charSequence = this.f29393c;
        int length = charSequence.length();
        b0.b(i4, length, "index");
        while (i4 < length) {
            if (xVar.a(charSequence.charAt(i4))) {
                return i4;
            }
            i4++;
        }
        return -1;
    }
}
