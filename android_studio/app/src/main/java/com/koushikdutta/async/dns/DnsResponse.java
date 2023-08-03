package com.koushikdutta.async.dns;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.http.Multimap;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class DnsResponse {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<InetAddress> f44360a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    public ArrayList<String> f44361b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    public Multimap f44362c = new Multimap();

    /* renamed from: d  reason: collision with root package name */
    public InetSocketAddress f44363d;

    public static DnsResponse a(ByteBufferList byteBufferList) {
        ByteBuffer n9 = byteBufferList.n();
        byteBufferList.b(n9.duplicate());
        byteBufferList.A(ByteOrder.BIG_ENDIAN);
        byteBufferList.v();
        byteBufferList.v();
        short v9 = byteBufferList.v();
        short v10 = byteBufferList.v();
        short v11 = byteBufferList.v();
        short v12 = byteBufferList.v();
        for (int i4 = 0; i4 < v9; i4++) {
            b(byteBufferList, n9);
            byteBufferList.v();
            byteBufferList.v();
        }
        DnsResponse dnsResponse = new DnsResponse();
        for (int i10 = 0; i10 < v10; i10++) {
            b(byteBufferList, n9);
            short v13 = byteBufferList.v();
            byteBufferList.v();
            byteBufferList.s();
            int v14 = byteBufferList.v();
            if (v13 == 1) {
                try {
                    byte[] bArr = new byte[v14];
                    byteBufferList.l(bArr);
                    dnsResponse.f44360a.add(InetAddress.getByAddress(bArr));
                } catch (Exception unused) {
                }
            } else if (v13 == 12) {
                dnsResponse.f44361b.add(b(byteBufferList, n9));
            } else if (v13 == 16) {
                ByteBufferList byteBufferList2 = new ByteBufferList();
                byteBufferList.k(byteBufferList2, v14);
                dnsResponse.c(byteBufferList2);
            } else {
                byteBufferList.l(new byte[v14]);
            }
        }
        for (int i11 = 0; i11 < v11; i11++) {
            b(byteBufferList, n9);
            byteBufferList.v();
            byteBufferList.v();
            byteBufferList.s();
            try {
                byteBufferList.l(new byte[byteBufferList.v()]);
            } catch (Exception unused2) {
            }
        }
        for (int i12 = 0; i12 < v12; i12++) {
            b(byteBufferList, n9);
            short v15 = byteBufferList.v();
            byteBufferList.v();
            byteBufferList.s();
            int v16 = byteBufferList.v();
            if (v15 == 16) {
                try {
                    ByteBufferList byteBufferList3 = new ByteBufferList();
                    byteBufferList.k(byteBufferList3, v16);
                    dnsResponse.c(byteBufferList3);
                } catch (Exception unused3) {
                }
            } else {
                byteBufferList.l(new byte[v16]);
            }
        }
        return dnsResponse;
    }

    private static String b(ByteBufferList byteBufferList, ByteBuffer byteBuffer) {
        byte[] bArr;
        byteBufferList.A(ByteOrder.BIG_ENDIAN);
        String str = "";
        while (true) {
            int h4 = byteBufferList.h() & 255;
            if (h4 == 0) {
                return str;
            }
            if ((h4 & 192) == 192) {
                int h10 = (byteBufferList.h() & 255) | ((h4 & 63) << 8);
                if (str.length() > 0) {
                    str = str + ".";
                }
                ByteBufferList byteBufferList2 = new ByteBufferList();
                ByteBuffer duplicate = byteBuffer.duplicate();
                duplicate.get(new byte[h10]);
                byteBufferList2.b(duplicate);
                return str + b(byteBufferList2, byteBuffer);
            }
            byteBufferList.l(new byte[h4]);
            if (str.length() > 0) {
                str = str + ".";
            }
            str = str + new String(bArr);
        }
    }

    void c(ByteBufferList byteBufferList) {
        while (byteBufferList.w()) {
            byte[] bArr = new byte[byteBufferList.h() & 255];
            byteBufferList.l(bArr);
            String[] split = new String(bArr).split("=");
            this.f44362c.add(split[0], split[1]);
        }
    }

    public String toString() {
        Iterator<InetAddress> it;
        Iterator<String> it2;
        String str = "addresses:\n";
        while (this.f44360a.iterator().hasNext()) {
            str = str + it.next().toString() + "\n";
        }
        String str2 = str + "names:\n";
        while (this.f44361b.iterator().hasNext()) {
            str2 = str2 + it2.next() + "\n";
        }
        return str2;
    }
}
