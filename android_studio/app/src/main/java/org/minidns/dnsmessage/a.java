package org.minidns.dnsmessage;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;

/* compiled from: Question.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: f  reason: collision with root package name */
    static final /* synthetic */ boolean f92703f = false;

    /* renamed from: a  reason: collision with root package name */
    public final DnsName f92704a;

    /* renamed from: b  reason: collision with root package name */
    public final Record.TYPE f92705b;

    /* renamed from: c  reason: collision with root package name */
    public final Record.CLASS f92706c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f92707d;

    /* renamed from: e  reason: collision with root package name */
    private byte[] f92708e;

    public a(CharSequence charSequence, Record.TYPE type, Record.CLASS r32, boolean z9) {
        this(DnsName.from(charSequence), type, r32, z9);
    }

    public DnsMessage.b a() {
        DnsMessage.b e4 = DnsMessage.e();
        e4.L(this);
        return e4;
    }

    public DnsMessage b() {
        return a().w();
    }

    public byte[] c() {
        if (this.f92708e == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                this.f92704a.writeToStream(dataOutputStream);
                dataOutputStream.writeShort(this.f92705b.getValue());
                dataOutputStream.writeShort(this.f92706c.getValue() | (this.f92707d ? 32768 : 0));
                dataOutputStream.flush();
                this.f92708e = byteArrayOutputStream.toByteArray();
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }
        return this.f92708e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            return Arrays.equals(c(), ((a) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(c());
    }

    public String toString() {
        return this.f92704a.getRawAce() + ".\t" + this.f92706c + '\t' + this.f92705b;
    }

    public a(DnsName dnsName, Record.TYPE type, Record.CLASS r32, boolean z9) {
        this.f92704a = dnsName;
        this.f92705b = type;
        this.f92706c = r32;
        this.f92707d = z9;
    }

    public a(DnsName dnsName, Record.TYPE type, Record.CLASS r42) {
        this(dnsName, type, r42, false);
    }

    public a(DnsName dnsName, Record.TYPE type) {
        this(dnsName, type, Record.CLASS.IN);
    }

    public a(CharSequence charSequence, Record.TYPE type, Record.CLASS r32) {
        this(DnsName.from(charSequence), type, r32);
    }

    public a(CharSequence charSequence, Record.TYPE type) {
        this(DnsName.from(charSequence), type);
    }

    public a(DataInputStream dataInputStream, byte[] bArr) throws IOException {
        this.f92704a = DnsName.parse(dataInputStream, bArr);
        this.f92705b = Record.TYPE.getType(dataInputStream.readUnsignedShort());
        this.f92706c = Record.CLASS.getClass(dataInputStream.readUnsignedShort());
        this.f92707d = false;
    }
}
