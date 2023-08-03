package com.google.common.escape;

import com.google.common.base.a0;
import java.util.Map;
import kotlin.jvm.internal.CharCompanionObject;

/* compiled from: ArrayBasedCharEscaper.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
public abstract class a extends d {

    /* renamed from: c  reason: collision with root package name */
    private final char[][] f34009c;

    /* renamed from: d  reason: collision with root package name */
    private final int f34010d;

    /* renamed from: e  reason: collision with root package name */
    private final char f34011e;

    /* renamed from: f  reason: collision with root package name */
    private final char f34012f;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Map<Character, String> map, char c10, char c11) {
        this(b.a(map), c10, c11);
    }

    @Override // com.google.common.escape.d, com.google.common.escape.f
    public final String b(String str) {
        a0.E(str);
        for (int i4 = 0; i4 < str.length(); i4++) {
            char charAt = str.charAt(i4);
            if ((charAt < this.f34010d && this.f34009c[charAt] != null) || charAt > this.f34012f || charAt < this.f34011e) {
                return d(str, i4);
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.escape.d
    public final char[] c(char c10) {
        char[] cArr;
        if (c10 >= this.f34010d || (cArr = this.f34009c[c10]) == null) {
            if (c10 < this.f34011e || c10 > this.f34012f) {
                return f(c10);
            }
            return null;
        }
        return cArr;
    }

    protected abstract char[] f(char c10);

    protected a(b bVar, char c10, char c11) {
        a0.E(bVar);
        char[][] c12 = bVar.c();
        this.f34009c = c12;
        this.f34010d = c12.length;
        if (c11 < c10) {
            c11 = 0;
            c10 = CharCompanionObject.MAX_VALUE;
        }
        this.f34011e = c10;
        this.f34012f = c11;
    }
}
