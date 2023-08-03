package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.minidns.record.Record;

/* compiled from: OPT.java */
/* loaded from: classes5.dex */
public class p extends h {

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f92970d = false;

    /* renamed from: c  reason: collision with root package name */
    public final List<org.minidns.edns.a> f92971c;

    public p() {
        this(Collections.emptyList());
    }

    public static p g(DataInputStream dataInputStream, int i4) throws IOException {
        List list;
        if (i4 == 0) {
            list = Collections.emptyList();
        } else {
            ArrayList arrayList = new ArrayList(4);
            while (i4 > 0) {
                int readUnsignedShort = dataInputStream.readUnsignedShort();
                int readUnsignedShort2 = dataInputStream.readUnsignedShort();
                byte[] bArr = new byte[readUnsignedShort2];
                dataInputStream.read(bArr);
                arrayList.add(org.minidns.edns.a.d(readUnsignedShort, bArr));
                i4 -= readUnsignedShort2 + 4;
            }
            list = arrayList;
        }
        return new p(list);
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.OPT;
    }

    @Override // org.minidns.record.h
    protected void c(DataOutputStream dataOutputStream) throws IOException {
        for (org.minidns.edns.a aVar : this.f92971c) {
            aVar.f(dataOutputStream);
        }
    }

    public p(List<org.minidns.edns.a> list) {
        this.f92971c = Collections.unmodifiableList(list);
    }
}
