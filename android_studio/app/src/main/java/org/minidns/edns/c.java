package org.minidns.edns;

import org.minidns.edns.Edns;
import org.minidns.util.f;

/* compiled from: UnknownEdnsOption.java */
/* loaded from: classes5.dex */
public class c extends a {
    /* JADX INFO: Access modifiers changed from: protected */
    public c(int i4, byte[] bArr) {
        super(i4, bArr);
    }

    @Override // org.minidns.edns.a
    protected CharSequence b() {
        return f.a(this.f92815c);
    }

    @Override // org.minidns.edns.a
    public Edns.OptionCode c() {
        return Edns.OptionCode.UNKNOWN;
    }

    @Override // org.minidns.edns.a
    protected CharSequence e() {
        return b();
    }
}
