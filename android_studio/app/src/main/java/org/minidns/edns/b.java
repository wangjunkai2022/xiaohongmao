package org.minidns.edns;

import org.minidns.edns.Edns;
import org.minidns.util.f;

/* compiled from: Nsid.java */
/* loaded from: classes5.dex */
public class b extends a {

    /* renamed from: f  reason: collision with root package name */
    public static final b f92819f = new b();

    private b() {
        this(new byte[0]);
    }

    @Override // org.minidns.edns.a
    protected CharSequence b() {
        return f.a(this.f92815c);
    }

    @Override // org.minidns.edns.a
    public Edns.OptionCode c() {
        return Edns.OptionCode.NSID;
    }

    @Override // org.minidns.edns.a
    protected CharSequence e() {
        return (Edns.OptionCode.NSID + ": ") + new String(this.f92815c);
    }

    public b(byte[] bArr) {
        super(bArr);
    }
}
