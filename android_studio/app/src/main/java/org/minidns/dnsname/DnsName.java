package org.minidns.dnsname;

import f9.c;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import org.minidns.dnslabel.DnsLabel;
import org.minidns.dnsname.InvalidDnsNameException;

/* loaded from: classes5.dex */
public class DnsName implements CharSequence, Serializable, Comparable<DnsName> {
    public static final int MAX_LABELS = 128;

    /* renamed from: k  reason: collision with root package name */
    private static final long f92709k = 1;

    /* renamed from: l  reason: collision with root package name */
    private static final String f92710l = "[.。．｡]";

    /* renamed from: m  reason: collision with root package name */
    static final int f92711m = 255;

    /* renamed from: n  reason: collision with root package name */
    static final /* synthetic */ boolean f92712n = false;

    /* renamed from: a  reason: collision with root package name */
    private final String f92713a;
    public final String ace;

    /* renamed from: b  reason: collision with root package name */
    private transient byte[] f92714b;

    /* renamed from: c  reason: collision with root package name */
    private transient byte[] f92715c;

    /* renamed from: d  reason: collision with root package name */
    private transient String f92716d;

    /* renamed from: e  reason: collision with root package name */
    private transient String f92717e;

    /* renamed from: f  reason: collision with root package name */
    private transient String f92718f;

    /* renamed from: g  reason: collision with root package name */
    private transient DnsLabel[] f92719g;

    /* renamed from: h  reason: collision with root package name */
    private transient DnsLabel[] f92720h;

    /* renamed from: i  reason: collision with root package name */
    private transient int f92721i;

    /* renamed from: j  reason: collision with root package name */
    private int f92722j;
    public static final DnsName ROOT = new DnsName(".");
    public static final DnsName IN_ADDR_ARPA = new DnsName("in-addr.arpa");
    public static final DnsName IP6_ARPA = new DnsName("ip6.arpa");
    public static boolean VALIDATE = true;

    private DnsName(String str) {
        this(str, true);
    }

    private static DnsLabel[] a(String str) {
        String[] split = str.split(f92710l, 128);
        for (int i4 = 0; i4 < split.length / 2; i4++) {
            String str2 = split[i4];
            int length = (split.length - i4) - 1;
            split[i4] = split[length];
            split[length] = str2;
        }
        try {
            return DnsLabel.c(split);
        } catch (DnsLabel.LabelToLongException e4) {
            throw new InvalidDnsNameException.LabelTooLongException(str, e4.label);
        }
    }

    private static String b(DnsLabel[] dnsLabelArr, int i4) {
        StringBuilder sb = new StringBuilder(i4);
        for (int length = dnsLabelArr.length - 1; length >= 0; length--) {
            sb.append((CharSequence) dnsLabelArr[length]);
            sb.append('.');
        }
        sb.setLength(sb.length() - 1);
        return sb.toString();
    }

    private static DnsName c(byte[] bArr, int i4, HashSet<Integer> hashSet) throws IllegalStateException {
        int i10 = bArr[i4] & 255;
        if ((i10 & 192) != 192) {
            if (i10 == 0) {
                return ROOT;
            }
            int i11 = i4 + 1;
            return from(new DnsName(new String(bArr, i11, i10)), c(bArr, i11 + i10, hashSet));
        }
        int i12 = ((i10 & 63) << 8) + (bArr[i4 + 1] & 255);
        if (!hashSet.contains(Integer.valueOf(i12))) {
            hashSet.add(Integer.valueOf(i12));
            return c(bArr, i12, hashSet);
        }
        throw new IllegalStateException("Cyclic offsets detected.");
    }

    private void d() {
        if (this.f92714b != null) {
            return;
        }
        h();
        this.f92714b = i(this.f92719g);
    }

    private void e() {
        if (this.f92718f != null) {
            return;
        }
        String[] split = this.ace.split(f92710l, 2);
        this.f92718f = split[0];
        if (split.length > 1) {
            this.f92717e = split[1];
        } else {
            this.f92717e = "";
        }
    }

    public static DnsName from(CharSequence charSequence) {
        return from(charSequence.toString());
    }

    private void h() {
        if (this.f92719g == null || this.f92720h == null) {
            if (isRootLabel()) {
                DnsLabel[] dnsLabelArr = new DnsLabel[0];
                this.f92719g = dnsLabelArr;
                this.f92720h = dnsLabelArr;
                return;
            }
            this.f92719g = a(this.ace);
            this.f92720h = a(this.f92713a);
        }
    }

    private static byte[] i(DnsLabel[] dnsLabelArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(64);
        for (int length = dnsLabelArr.length - 1; length >= 0; length--) {
            dnsLabelArr[length].i(byteArrayOutputStream);
        }
        byteArrayOutputStream.write(0);
        return byteArrayOutputStream.toByteArray();
    }

    private void k() {
        d();
        if (this.f92714b.length > 255) {
            throw new InvalidDnsNameException.DNSNameTooLongException(this.ace, this.f92714b);
        }
    }

    public static DnsName parse(DataInputStream dataInputStream, byte[] bArr) throws IOException {
        int readUnsignedByte = dataInputStream.readUnsignedByte();
        if ((readUnsignedByte & 192) == 192) {
            int readUnsignedByte2 = ((readUnsignedByte & 63) << 8) + dataInputStream.readUnsignedByte();
            HashSet hashSet = new HashSet();
            hashSet.add(Integer.valueOf(readUnsignedByte2));
            return c(bArr, readUnsignedByte2, hashSet);
        } else if (readUnsignedByte == 0) {
            return ROOT;
        } else {
            byte[] bArr2 = new byte[readUnsignedByte];
            dataInputStream.readFully(bArr2);
            return from(new DnsName(new String(bArr2)), parse(dataInputStream, bArr));
        }
    }

    public String asIdn() {
        String str = this.f92716d;
        if (str != null) {
            return str;
        }
        String c10 = c.c(this.ace);
        this.f92716d = c10;
        return c10;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i4) {
        return this.ace.charAt(i4);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof DnsName)) {
            DnsName dnsName = (DnsName) obj;
            d();
            dnsName.d();
            return Arrays.equals(this.f92714b, dnsName.f92714b);
        }
        return false;
    }

    public byte[] getBytes() {
        d();
        return (byte[]) this.f92714b.clone();
    }

    public String getDomainpart() {
        e();
        return this.f92717e;
    }

    public String getHostpart() {
        e();
        return this.f92718f;
    }

    public int getLabelCount() {
        h();
        return this.f92719g.length;
    }

    public DnsLabel[] getLabels() {
        h();
        return (DnsLabel[]) this.f92719g.clone();
    }

    public DnsName getParent() {
        return isRootLabel() ? ROOT : stripToLabels(getLabelCount() - 1);
    }

    public String getRawAce() {
        return this.f92713a;
    }

    public byte[] getRawBytes() {
        if (this.f92715c == null) {
            h();
            this.f92715c = i(this.f92720h);
        }
        return (byte[]) this.f92715c.clone();
    }

    public DnsLabel[] getRawLabels() {
        h();
        return (DnsLabel[]) this.f92720h.clone();
    }

    public int hashCode() {
        if (this.f92721i == 0 && !isRootLabel()) {
            d();
            this.f92721i = Arrays.hashCode(this.f92714b);
        }
        return this.f92721i;
    }

    public boolean isChildOf(DnsName dnsName) {
        h();
        dnsName.h();
        if (this.f92719g.length < dnsName.f92719g.length) {
            return false;
        }
        int i4 = 0;
        while (true) {
            DnsLabel[] dnsLabelArr = dnsName.f92719g;
            if (i4 >= dnsLabelArr.length) {
                return true;
            }
            if (!this.f92719g[i4].equals(dnsLabelArr[i4])) {
                return false;
            }
            i4++;
        }
    }

    public boolean isDirectChildOf(DnsName dnsName) {
        h();
        dnsName.h();
        if (this.f92719g.length - 1 != dnsName.f92719g.length) {
            return false;
        }
        int i4 = 0;
        while (true) {
            DnsLabel[] dnsLabelArr = dnsName.f92719g;
            if (i4 >= dnsLabelArr.length) {
                return true;
            }
            if (!this.f92719g[i4].equals(dnsLabelArr[i4])) {
                return false;
            }
            i4++;
        }
    }

    public boolean isRootLabel() {
        return this.ace.isEmpty() || this.ace.equals(".");
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.ace.length();
    }

    public int size() {
        if (this.f92722j < 0) {
            if (isRootLabel()) {
                this.f92722j = 1;
            } else {
                this.f92722j = this.ace.length() + 2;
            }
        }
        return this.f92722j;
    }

    public DnsName stripToLabels(int i4) {
        h();
        DnsLabel[] dnsLabelArr = this.f92719g;
        if (i4 <= dnsLabelArr.length) {
            if (i4 == dnsLabelArr.length) {
                return this;
            }
            if (i4 == 0) {
                return ROOT;
            }
            return new DnsName((DnsLabel[]) Arrays.copyOfRange(this.f92720h, 0, i4), false);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i4, int i10) {
        return this.ace.subSequence(i4, i10);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.ace;
    }

    public void writeToStream(OutputStream outputStream) throws IOException {
        d();
        outputStream.write(this.f92714b);
    }

    private DnsName(String str, boolean z9) {
        this.f92722j = -1;
        if (str.isEmpty()) {
            this.f92713a = ROOT.f92713a;
        } else {
            int length = str.length();
            int i4 = length - 1;
            if (length >= 2 && str.charAt(i4) == '.') {
                str = str.subSequence(0, i4).toString();
            }
            if (z9) {
                this.f92713a = str;
            } else {
                this.f92713a = c.b(str);
            }
        }
        this.ace = this.f92713a.toLowerCase(Locale.US);
        if (VALIDATE) {
            k();
        }
    }

    public static DnsName from(String str) {
        return new DnsName(str, false);
    }

    @Override // java.lang.Comparable
    public int compareTo(DnsName dnsName) {
        return this.ace.compareTo(dnsName.ace);
    }

    public static DnsName from(DnsName dnsName, DnsName dnsName2) {
        dnsName.h();
        dnsName2.h();
        int length = dnsName.f92720h.length;
        DnsLabel[] dnsLabelArr = dnsName2.f92720h;
        DnsLabel[] dnsLabelArr2 = new DnsLabel[length + dnsLabelArr.length];
        System.arraycopy(dnsLabelArr, 0, dnsLabelArr2, 0, dnsLabelArr.length);
        DnsLabel[] dnsLabelArr3 = dnsName.f92720h;
        System.arraycopy(dnsLabelArr3, 0, dnsLabelArr2, dnsName2.f92720h.length, dnsLabelArr3.length);
        return new DnsName(dnsLabelArr2, true);
    }

    public static DnsName from(DnsName... dnsNameArr) {
        int i4 = 0;
        for (DnsName dnsName : dnsNameArr) {
            dnsName.h();
            i4 += dnsName.f92720h.length;
        }
        DnsLabel[] dnsLabelArr = new DnsLabel[i4];
        int i10 = 0;
        for (int length = dnsNameArr.length - 1; length >= 0; length--) {
            DnsName dnsName2 = dnsNameArr[length];
            DnsLabel[] dnsLabelArr2 = dnsName2.f92720h;
            System.arraycopy(dnsLabelArr2, 0, dnsLabelArr, i10, dnsLabelArr2.length);
            i10 += dnsName2.f92720h.length;
        }
        return new DnsName(dnsLabelArr, true);
    }

    private DnsName(DnsLabel[] dnsLabelArr, boolean z9) {
        this.f92722j = -1;
        this.f92720h = dnsLabelArr;
        this.f92719g = new DnsLabel[dnsLabelArr.length];
        int i4 = 0;
        for (int i10 = 0; i10 < dnsLabelArr.length; i10++) {
            i4 += dnsLabelArr[i10].length() + 1;
            this.f92719g[i10] = dnsLabelArr[i10].a();
        }
        this.f92713a = b(dnsLabelArr, i4);
        this.ace = b(this.f92719g, i4);
        if (z9 && VALIDATE) {
            k();
        }
    }

    public static DnsName from(String[] strArr) {
        return new DnsName(DnsLabel.c(strArr), true);
    }
}
