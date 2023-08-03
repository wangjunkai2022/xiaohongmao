package org.minidns.edns;

import java.io.DataOutputStream;
import java.io.IOException;
import org.minidns.edns.Edns;

/* compiled from: EdnsOption.java */
/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f92813a;

    /* renamed from: b  reason: collision with root package name */
    public final int f92814b;

    /* renamed from: c  reason: collision with root package name */
    protected final byte[] f92815c;

    /* renamed from: d  reason: collision with root package name */
    private String f92816d;

    /* renamed from: e  reason: collision with root package name */
    private String f92817e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EdnsOption.java */
    /* renamed from: org.minidns.edns.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class C0826a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f92818a;

        static {
            int[] iArr = new int[Edns.OptionCode.values().length];
            f92818a = iArr;
            try {
                iArr[Edns.OptionCode.NSID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(int i4, byte[] bArr) {
        this.f92813a = i4;
        this.f92814b = bArr.length;
        this.f92815c = bArr;
    }

    public static a d(int i4, byte[] bArr) {
        if (C0826a.f92818a[Edns.OptionCode.from(i4).ordinal()] != 1) {
            return new c(i4, bArr);
        }
        return new b(bArr);
    }

    public final String a() {
        if (this.f92817e == null) {
            this.f92817e = b().toString();
        }
        return this.f92817e;
    }

    protected abstract CharSequence b();

    public abstract Edns.OptionCode c();

    protected abstract CharSequence e();

    public final void f(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f92813a);
        dataOutputStream.writeShort(this.f92814b);
        dataOutputStream.write(this.f92815c);
    }

    public final String toString() {
        if (this.f92816d == null) {
            this.f92816d = e().toString();
        }
        return this.f92816d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(byte[] bArr) {
        this.f92813a = c().asInt;
        this.f92814b = bArr.length;
        this.f92815c = bArr;
    }
}
