package com.google.common.primitives;

/* compiled from: ParseRequest.java */
@h3.b
/* loaded from: classes2.dex */
final class h {

    /* renamed from: a  reason: collision with root package name */
    final String f34862a;

    /* renamed from: b  reason: collision with root package name */
    final int f34863b;

    private h(String str, int i4) {
        this.f34862a = str;
        this.f34863b = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h a(String str) {
        if (str.length() != 0) {
            char charAt = str.charAt(0);
            int i4 = 16;
            if (str.startsWith("0x") || str.startsWith("0X")) {
                str = str.substring(2);
            } else if (charAt == '#') {
                str = str.substring(1);
            } else if (charAt != '0' || str.length() <= 1) {
                i4 = 10;
            } else {
                str = str.substring(1);
                i4 = 8;
            }
            return new h(str, i4);
        }
        throw new NumberFormatException("empty string");
    }
}
