package com.google.android.gms.internal.common;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class u extends t {

    /* renamed from: a  reason: collision with root package name */
    private final char f29412a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(char c10) {
        this.f29412a = c10;
    }

    @Override // com.google.android.gms.internal.common.x
    public final boolean a(char c10) {
        return c10 == this.f29412a;
    }

    public final String toString() {
        int i4 = this.f29412a;
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        for (int i10 = 0; i10 < 4; i10++) {
            cArr[5 - i10] = "0123456789ABCDEF".charAt(i4 & 15);
            i4 >>= 4;
        }
        String copyValueOf = String.copyValueOf(cArr);
        StringBuilder sb = new StringBuilder(String.valueOf(copyValueOf).length() + 18);
        sb.append("CharMatcher.is('");
        sb.append(copyValueOf);
        sb.append("')");
        return sb.toString();
    }
}
