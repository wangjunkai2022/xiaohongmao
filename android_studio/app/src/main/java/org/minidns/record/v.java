package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.minidns.record.Record;

/* compiled from: TXT.java */
/* loaded from: classes5.dex */
public class v extends h {

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f92997c;

    public v(byte[] bArr) {
        this.f92997c = bArr;
    }

    public static v k(DataInputStream dataInputStream, int i4) throws IOException {
        byte[] bArr = new byte[i4];
        dataInputStream.readFully(bArr);
        return new v(bArr);
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.TXT;
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.write(this.f92997c);
    }

    public byte[] g() {
        return (byte[]) this.f92997c.clone();
    }

    public List<byte[]> h() {
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (true) {
            byte[] bArr = this.f92997c;
            if (i4 >= bArr.length) {
                return arrayList;
            }
            int i10 = i4 + 1;
            int i11 = (bArr[i4] & 255) + i10;
            arrayList.add(Arrays.copyOfRange(bArr, i10, i11));
            i4 = i11;
        }
    }

    public String i() {
        List<byte[]> h4 = h();
        StringBuilder sb = new StringBuilder();
        int i4 = 0;
        while (i4 < h4.size() - 1) {
            sb.append(new String(h4.get(i4)));
            sb.append(" / ");
            i4++;
        }
        sb.append(new String(h4.get(i4)));
        return sb.toString();
    }

    public String toString() {
        return "\"" + i() + "\"";
    }
}
