package com.google.android.gms.internal.mlkit_common;

import java.util.Arrays;
import java.util.Objects;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class jc {

    /* renamed from: a  reason: collision with root package name */
    private final String f29753a;

    /* renamed from: b  reason: collision with root package name */
    private final ic f29754b;

    /* renamed from: c  reason: collision with root package name */
    private ic f29755c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ jc(String str, gc gcVar) {
        ic icVar = new ic(null);
        this.f29754b = icVar;
        this.f29755c = icVar;
        Objects.requireNonNull(str);
        this.f29753a = str;
    }

    public final jc a(String str, @r7.a Object obj) {
        ic icVar = new ic(null);
        this.f29755c.f29727c = icVar;
        this.f29755c = icVar;
        icVar.f29726b = obj;
        icVar.f29725a = str;
        return this;
    }

    public final jc b(String str, boolean z9) {
        String valueOf = String.valueOf(z9);
        hc hcVar = new hc(null);
        this.f29755c.f29727c = hcVar;
        this.f29755c = hcVar;
        hcVar.f29726b = valueOf;
        hcVar.f29725a = "isManifestFile";
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f29753a);
        sb.append('{');
        ic icVar = this.f29754b.f29727c;
        String str = "";
        while (icVar != null) {
            Object obj = icVar.f29726b;
            sb.append(str);
            String str2 = icVar.f29725a;
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
            icVar = icVar.f29727c;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
