package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Arrays;
import java.util.Objects;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class d3 {

    /* renamed from: a  reason: collision with root package name */
    private final String f30420a;

    /* renamed from: b  reason: collision with root package name */
    private final c2 f30421b;

    /* renamed from: c  reason: collision with root package name */
    private c2 f30422c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ d3(String str, a0 a0Var) {
        c2 c2Var = new c2(null);
        this.f30421b = c2Var;
        this.f30422c = c2Var;
        Objects.requireNonNull(str);
        this.f30420a = str;
    }

    public final d3 a(String str, float f10) {
        String valueOf = String.valueOf(f10);
        b1 b1Var = new b1(null);
        this.f30422c.f30367c = b1Var;
        this.f30422c = b1Var;
        b1Var.f30366b = valueOf;
        b1Var.f30365a = "confidence";
        return this;
    }

    public final d3 b(String str, @r7.a Object obj) {
        c2 c2Var = new c2(null);
        this.f30422c.f30367c = c2Var;
        this.f30422c = c2Var;
        c2Var.f30366b = obj;
        c2Var.f30365a = "languageTag";
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f30420a);
        sb.append('{');
        c2 c2Var = this.f30421b.f30367c;
        String str = "";
        while (c2Var != null) {
            Object obj = c2Var.f30366b;
            sb.append(str);
            String str2 = c2Var.f30365a;
            if (str2 != null) {
                sb.append(str2);
                sb.append('=');
            }
            if (obj != null && obj.getClass().isArray()) {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            } else {
                sb.append(obj);
            }
            c2Var = c2Var.f30367c;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
