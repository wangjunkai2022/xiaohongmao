package org.minidns.record;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.logging.Logger;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;

/* compiled from: NSEC.java */
/* loaded from: classes5.dex */
public class n extends h {

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f92964f = Logger.getLogger(n.class.getName());

    /* renamed from: c  reason: collision with root package name */
    public final DnsName f92965c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f92966d;

    /* renamed from: e  reason: collision with root package name */
    public final Record.TYPE[] f92967e;

    public n(String str, Record.TYPE[] typeArr) {
        this(DnsName.from(str), typeArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] g(Record.TYPE[] typeArr) {
        ArrayList<Integer> arrayList = new ArrayList();
        for (Record.TYPE type : typeArr) {
            arrayList.add(Integer.valueOf(type.getValue()));
        }
        Collections.sort(arrayList);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        byte[] bArr = null;
        try {
            int i4 = -1;
            for (Integer num : arrayList) {
                if (i4 == -1 || (num.intValue() >> 8) != i4) {
                    if (i4 != -1) {
                        k(bArr, dataOutputStream);
                    }
                    i4 = num.intValue() >> 8;
                    dataOutputStream.writeByte(i4);
                    bArr = new byte[32];
                }
                int intValue = (num.intValue() >> 3) % 32;
                bArr[intValue] = (byte) ((128 >> (num.intValue() % 8)) | bArr[intValue]);
            }
            if (i4 != -1) {
                k(bArr, dataOutputStream);
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static n h(DataInputStream dataInputStream, byte[] bArr, int i4) throws IOException {
        DnsName parse = DnsName.parse(dataInputStream, bArr);
        int size = i4 - parse.size();
        byte[] bArr2 = new byte[size];
        if (dataInputStream.read(bArr2) == size) {
            return new n(parse, i(bArr2));
        }
        throw new IOException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Record.TYPE[] i(byte[] bArr) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (bArr.length > i4) {
            int readUnsignedByte = dataInputStream.readUnsignedByte();
            int readUnsignedByte2 = dataInputStream.readUnsignedByte();
            for (int i10 = 0; i10 < readUnsignedByte2; i10++) {
                int readUnsignedByte3 = dataInputStream.readUnsignedByte();
                for (int i11 = 0; i11 < 8; i11++) {
                    if (((readUnsignedByte3 >> i11) & 1) > 0) {
                        int i12 = (readUnsignedByte << 8) + (i10 * 8) + (7 - i11);
                        Record.TYPE type = Record.TYPE.getType(i12);
                        if (type == Record.TYPE.UNKNOWN) {
                            Logger logger = f92964f;
                            logger.warning("Skipping unknown type in type bitmap: " + i12);
                        } else {
                            arrayList.add(type);
                        }
                    }
                }
            }
            i4 += readUnsignedByte2 + 2;
        }
        return (Record.TYPE[]) arrayList.toArray(new Record.TYPE[arrayList.size()]);
    }

    private static void k(byte[] bArr, DataOutputStream dataOutputStream) throws IOException {
        int i4 = 0;
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if (bArr[i10] != 0) {
                i4 = i10 + 1;
            }
        }
        dataOutputStream.writeByte(i4);
        for (int i11 = 0; i11 < i4; i11++) {
            dataOutputStream.writeByte(bArr[i11]);
        }
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.NSEC;
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        this.f92965c.writeToStream(dataOutputStream);
        dataOutputStream.write(this.f92966d);
    }

    public String toString() {
        Record.TYPE[] typeArr;
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) this.f92965c);
        sb.append('.');
        for (Record.TYPE type : this.f92967e) {
            sb.append(' ');
            sb.append(type);
        }
        return sb.toString();
    }

    public n(DnsName dnsName, Record.TYPE[] typeArr) {
        this.f92965c = dnsName;
        this.f92967e = typeArr;
        this.f92966d = g(typeArr);
    }
}
