package com.google.common.escape;

import com.google.common.base.a0;
import java.util.Map;
import kotlin.jvm.internal.CharCompanionObject;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ArrayBasedUnicodeEscaper.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
public abstract class c extends i {

    /* renamed from: c  reason: collision with root package name */
    private final char[][] f34015c;

    /* renamed from: d  reason: collision with root package name */
    private final int f34016d;

    /* renamed from: e  reason: collision with root package name */
    private final int f34017e;

    /* renamed from: f  reason: collision with root package name */
    private final int f34018f;

    /* renamed from: g  reason: collision with root package name */
    private final char f34019g;

    /* renamed from: h  reason: collision with root package name */
    private final char f34020h;

    protected c(Map<Character, String> map, int i4, int i10, @NullableDecl String str) {
        this(b.a(map), i4, i10, str);
    }

    @Override // com.google.common.escape.i, com.google.common.escape.f
    public final String b(String str) {
        a0.E(str);
        for (int i4 = 0; i4 < str.length(); i4++) {
            char charAt = str.charAt(i4);
            if ((charAt < this.f34016d && this.f34015c[charAt] != null) || charAt > this.f34020h || charAt < this.f34019g) {
                return e(str, i4);
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.escape.i
    public final char[] d(int i4) {
        char[] cArr;
        if (i4 >= this.f34016d || (cArr = this.f34015c[i4]) == null) {
            if (i4 < this.f34017e || i4 > this.f34018f) {
                return h(i4);
            }
            return null;
        }
        return cArr;
    }

    @Override // com.google.common.escape.i
    protected final int g(CharSequence charSequence, int i4, int i10) {
        while (i4 < i10) {
            char charAt = charSequence.charAt(i4);
            if ((charAt < this.f34016d && this.f34015c[charAt] != null) || charAt > this.f34020h || charAt < this.f34019g) {
                break;
            }
            i4++;
        }
        return i4;
    }

    protected abstract char[] h(int i4);

    protected c(b bVar, int i4, int i10, @NullableDecl String str) {
        a0.E(bVar);
        char[][] c10 = bVar.c();
        this.f34015c = c10;
        this.f34016d = c10.length;
        if (i10 < i4) {
            i10 = -1;
            i4 = Integer.MAX_VALUE;
        }
        this.f34017e = i4;
        this.f34018f = i10;
        if (i4 >= 55296) {
            this.f34019g = CharCompanionObject.MAX_VALUE;
            this.f34020h = (char) 0;
            return;
        }
        this.f34019g = (char) i4;
        this.f34020h = (char) Math.min(i10, 55295);
    }
}
