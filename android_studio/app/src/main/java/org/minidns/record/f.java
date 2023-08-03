package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;
import okhttp3.internal.ws.WebSocketProtocol;
import org.minidns.constants.DnssecConstants;
import org.minidns.record.Record;

/* compiled from: DNSKEY.java */
/* loaded from: classes5.dex */
public class f extends h {

    /* renamed from: j  reason: collision with root package name */
    public static final short f92926j = 1;

    /* renamed from: k  reason: collision with root package name */
    public static final short f92927k = 128;

    /* renamed from: l  reason: collision with root package name */
    public static final short f92928l = 256;

    /* renamed from: m  reason: collision with root package name */
    public static final byte f92929m = 3;

    /* renamed from: n  reason: collision with root package name */
    static final /* synthetic */ boolean f92930n = false;

    /* renamed from: c  reason: collision with root package name */
    public final short f92931c;

    /* renamed from: d  reason: collision with root package name */
    public final byte f92932d;

    /* renamed from: e  reason: collision with root package name */
    public final DnssecConstants.SignatureAlgorithm f92933e;

    /* renamed from: f  reason: collision with root package name */
    public final byte f92934f;

    /* renamed from: g  reason: collision with root package name */
    private final byte[] f92935g;

    /* renamed from: h  reason: collision with root package name */
    private Integer f92936h;

    /* renamed from: i  reason: collision with root package name */
    private String f92937i;

    private f(short s9, byte b10, DnssecConstants.SignatureAlgorithm signatureAlgorithm, byte b11, byte[] bArr) {
        this.f92931c = s9;
        this.f92932d = b10;
        this.f92934f = b11;
        this.f92933e = signatureAlgorithm == null ? DnssecConstants.SignatureAlgorithm.forByte(b11) : signatureAlgorithm;
        this.f92935g = bArr;
    }

    public static f n(DataInputStream dataInputStream, int i4) throws IOException {
        short readShort = dataInputStream.readShort();
        byte readByte = dataInputStream.readByte();
        byte readByte2 = dataInputStream.readByte();
        byte[] bArr = new byte[i4 - 4];
        dataInputStream.readFully(bArr);
        return new f(readShort, readByte, readByte2, bArr);
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.DNSKEY;
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f92931c);
        dataOutputStream.writeByte(this.f92932d);
        dataOutputStream.writeByte(this.f92933e.number);
        dataOutputStream.write(this.f92935g);
    }

    public byte[] g() {
        return (byte[]) this.f92935g.clone();
    }

    public String h() {
        if (this.f92937i == null) {
            this.f92937i = org.minidns.util.b.a(this.f92935g);
        }
        return this.f92937i;
    }

    public int i() {
        return this.f92935g.length;
    }

    public int k() {
        if (this.f92936h == null) {
            byte[] e4 = e();
            long j4 = 0;
            for (int i4 = 0; i4 < e4.length; i4++) {
                j4 += (i4 & 1) > 0 ? e4[i4] & 255 : (e4[i4] & 255) << 8;
            }
            this.f92936h = Integer.valueOf((int) ((j4 + ((j4 >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX)) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
        }
        return this.f92936h.intValue();
    }

    public boolean l() {
        return (this.f92931c & 1) == 1;
    }

    public boolean m(byte[] bArr) {
        return Arrays.equals(this.f92935g, bArr);
    }

    public String toString() {
        return ((int) this.f92931c) + ' ' + ((int) this.f92932d) + ' ' + this.f92933e + ' ' + org.minidns.util.b.a(this.f92935g);
    }

    public f(short s9, byte b10, byte b11, byte[] bArr) {
        this(s9, b10, DnssecConstants.SignatureAlgorithm.forByte(b11), bArr);
    }

    public f(short s9, byte b10, DnssecConstants.SignatureAlgorithm signatureAlgorithm, byte[] bArr) {
        this(s9, b10, signatureAlgorithm, signatureAlgorithm.number, bArr);
    }
}
