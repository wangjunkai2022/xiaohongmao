package org.minidns.dnssec;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.minidns.dnsname.DnsName;
import org.minidns.dnssec.e;
import org.minidns.record.NSEC3;
import org.minidns.record.Record;
import org.minidns.record.h;
import org.minidns.record.i;
import org.minidns.record.n;
import org.minidns.record.r;

/* compiled from: Verifier.java */
/* loaded from: classes5.dex */
class f {

    /* renamed from: a  reason: collision with root package name */
    private org.minidns.dnssec.algorithms.a f92777a = org.minidns.dnssec.algorithms.a.f92733e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Verifier.java */
    /* loaded from: classes5.dex */
    public static class a implements Comparator<byte[]> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f92778a;

        a(int i4) {
            this.f92778a = i4;
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(byte[] bArr, byte[] bArr2) {
            int length;
            int length2;
            for (int i4 = this.f92778a; i4 < bArr.length && i4 < bArr2.length; i4++) {
                if (bArr[i4] != bArr2[i4]) {
                    length = bArr[i4] & 255;
                    length2 = bArr2[i4] & 255;
                    break;
                }
            }
            length = bArr.length;
            length2 = bArr2.length;
            return length - length2;
        }
    }

    static byte[] a(r rVar, List<Record<? extends h>> list) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            rVar.h(dataOutputStream);
            DnsName dnsName = list.get(0).f92893a;
            if (!dnsName.isRootLabel()) {
                if (dnsName.getLabelCount() >= rVar.f92976f) {
                    if (dnsName.getLabelCount() > rVar.f92976f) {
                        dnsName = DnsName.from("*." + ((Object) dnsName.stripToLabels(rVar.f92976f)));
                    }
                } else {
                    throw new DnssecValidationFailedException("Invalid RRsig record");
                }
            }
            DnsName dnsName2 = dnsName;
            ArrayList<byte[]> arrayList = new ArrayList();
            for (Record<? extends h> record : list) {
                arrayList.add(new Record(dnsName2, record.f92894b, record.f92896d, rVar.f92977g, record.f92898f).k());
            }
            Collections.sort(arrayList, new a(dnsName2.size() + 10));
            for (byte[] bArr : arrayList) {
                dataOutputStream.write(bArr);
            }
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    static byte[] b(org.minidns.dnssec.a aVar, byte[] bArr, byte[] bArr2, int i4) {
        while (true) {
            int i10 = i4 - 1;
            if (i4 < 0) {
                return bArr2;
            }
            byte[] bArr3 = new byte[bArr2.length + bArr.length];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            System.arraycopy(bArr, 0, bArr3, bArr2.length, bArr.length);
            bArr2 = aVar.a(bArr3);
            i4 = i10;
        }
    }

    static boolean c(String str, String str2, String str3) {
        return d(DnsName.from(str), DnsName.from(str2), DnsName.from(str3));
    }

    static boolean d(DnsName dnsName, DnsName dnsName2, DnsName dnsName3) {
        int labelCount = dnsName2.getLabelCount();
        int labelCount2 = dnsName3.getLabelCount();
        int labelCount3 = dnsName.getLabelCount();
        if (labelCount3 <= labelCount || dnsName.isChildOf(dnsName2) || dnsName.stripToLabels(labelCount).compareTo(dnsName2) >= 0) {
            if (labelCount3 > labelCount || dnsName.compareTo(dnsName2.stripToLabels(labelCount3)) >= 0) {
                if (labelCount3 <= labelCount2 || dnsName.isChildOf(dnsName3) || dnsName.stripToLabels(labelCount2).compareTo(dnsName3) <= 0) {
                    return labelCount3 > labelCount2 || dnsName.compareTo(dnsName3.stripToLabels(labelCount3)) < 0;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    static String e(String str, int i4) {
        if (str.isEmpty() && i4 == 0) {
            return str;
        }
        if (!str.isEmpty()) {
            String[] split = str.split("\\.");
            if (split.length == i4) {
                return str;
            }
            if (split.length >= i4) {
                StringBuilder sb = new StringBuilder();
                for (int length = split.length - i4; length < split.length; length++) {
                    sb.append(split[length]);
                    if (length != split.length - 1) {
                        sb.append('.');
                    }
                }
                return sb.toString();
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }

    public e f(List<Record<? extends h>> list, r rVar, org.minidns.record.f fVar) {
        d c10 = this.f92777a.c(rVar.f92974d);
        if (c10 == null) {
            return new e.b(rVar.f92975e, rVar.a(), list.get(0));
        }
        if (c10.a(a(rVar, list), rVar.f92982l, fVar.g())) {
            return null;
        }
        throw new DnssecValidationFailedException(list, "Signature is invalid.");
    }

    public e g(Record<org.minidns.record.f> record, i iVar) {
        org.minidns.record.f fVar = record.f92898f;
        org.minidns.dnssec.a a10 = this.f92777a.a(iVar.f92944f);
        if (a10 == null) {
            return new e.b(iVar.f92945g, iVar.a(), record);
        }
        byte[] e4 = fVar.e();
        byte[] bytes = record.f92893a.getBytes();
        byte[] bArr = new byte[bytes.length + e4.length];
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        System.arraycopy(e4, 0, bArr, bytes.length, e4.length);
        try {
            if (iVar.g(a10.a(bArr))) {
                return null;
            }
            throw new DnssecValidationFailedException(record, "SEP is not properly signed by parent DS!");
        } catch (Exception e10) {
            return new e.a(iVar.f92944f, "DS", record, e10);
        }
    }

    public e h(Record<? extends h> record, org.minidns.dnsmessage.a aVar) {
        n nVar = (n) record.f92898f;
        if ((!record.f92893a.equals(aVar.f92704a) || Arrays.asList(nVar.f92967e).contains(aVar.f92705b)) && !d(aVar.f92704a, record.f92893a, nVar.f92965c)) {
            return new e.d(aVar, record);
        }
        return null;
    }

    public e i(CharSequence charSequence, Record<? extends h> record, org.minidns.dnsmessage.a aVar) {
        return j(DnsName.from(charSequence), record, aVar);
    }

    public e j(DnsName dnsName, Record<? extends h> record, org.minidns.dnsmessage.a aVar) {
        NSEC3 nsec3 = (NSEC3) record.f92898f;
        org.minidns.dnssec.a b10 = this.f92777a.b(nsec3.f92884c);
        if (b10 == null) {
            return new e.b(nsec3.f92885d, nsec3.a(), record);
        }
        String a10 = org.minidns.util.a.a(b(b10, nsec3.f92888g, aVar.f92704a.getBytes(), nsec3.f92887f));
        if (record.f92893a.equals(DnsName.from(a10 + "." + ((Object) dnsName)))) {
            for (Record.TYPE type : nsec3.f92891j) {
                if (type.equals(aVar.f92705b)) {
                    return new e.d(aVar, record);
                }
            }
            return null;
        } else if (c(a10, record.f92893a.getHostpart(), org.minidns.util.a.a(nsec3.f92889h))) {
            return null;
        } else {
            return new e.d(aVar, record);
        }
    }
}
