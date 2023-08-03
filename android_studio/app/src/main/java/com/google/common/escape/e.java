package com.google.common.escape;

import com.google.common.base.a0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.HashMap;
import java.util.Map;

/* compiled from: CharEscaperBuilder.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: b  reason: collision with root package name */
    private int f34023b = -1;

    /* renamed from: a  reason: collision with root package name */
    private final Map<Character, String> f34022a = new HashMap();

    /* compiled from: CharEscaperBuilder.java */
    /* loaded from: classes2.dex */
    private static class a extends d {

        /* renamed from: c  reason: collision with root package name */
        private final char[][] f34024c;

        /* renamed from: d  reason: collision with root package name */
        private final int f34025d;

        a(char[][] cArr) {
            this.f34024c = cArr;
            this.f34025d = cArr.length;
        }

        @Override // com.google.common.escape.d, com.google.common.escape.f
        public String b(String str) {
            int length = str.length();
            for (int i4 = 0; i4 < length; i4++) {
                char charAt = str.charAt(i4);
                char[][] cArr = this.f34024c;
                if (charAt < cArr.length && cArr[charAt] != null) {
                    return d(str, i4);
                }
            }
            return str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.escape.d
        public char[] c(char c10) {
            if (c10 < this.f34025d) {
                return this.f34024c[c10];
            }
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CanIgnoreReturnValue
    public e a(char c10, String str) {
        this.f34022a.put(Character.valueOf(c10), a0.E(str));
        if (c10 > this.f34023b) {
            this.f34023b = c10;
        }
        return this;
    }

    @CanIgnoreReturnValue
    public e b(char[] cArr, String str) {
        a0.E(str);
        for (char c10 : cArr) {
            a(c10, str);
        }
        return this;
    }

    public char[][] c() {
        char[][] cArr = new char[this.f34023b + 1];
        for (Map.Entry<Character, String> entry : this.f34022a.entrySet()) {
            cArr[entry.getKey().charValue()] = entry.getValue().toCharArray();
        }
        return cArr;
    }

    public f d() {
        return new a(c());
    }
}
