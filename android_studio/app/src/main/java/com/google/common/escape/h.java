package com.google.common.escape;

/* compiled from: Platform.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<char[]> f34036a = new a();

    /* compiled from: Platform.java */
    /* loaded from: classes2.dex */
    static class a extends ThreadLocal<char[]> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public char[] initialValue() {
            return new char[1024];
        }
    }

    private h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static char[] a() {
        return f34036a.get();
    }
}
