package com.fasterxml.jackson.databind.node;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;

/* compiled from: NodeSerialization.java */
/* loaded from: classes.dex */
class d implements Serializable, Externalizable {

    /* renamed from: b  reason: collision with root package name */
    protected static final int f15585b = 100000;

    /* renamed from: c  reason: collision with root package name */
    private static final long f15586c = 1;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f15587a;

    public d() {
    }

    private byte[] a(ObjectInput objectInput, int i4) throws IOException {
        if (i4 <= 100000) {
            byte[] bArr = new byte[i4];
            objectInput.readFully(bArr, 0, i4);
            return bArr;
        }
        com.fasterxml.jackson.core.util.c cVar = new com.fasterxml.jackson.core.util.c(100000);
        try {
            byte[] A = cVar.A();
            while (true) {
                int i10 = 0;
                do {
                    int min = Math.min(A.length - i10, i4);
                    objectInput.readFully(A, 0, min);
                    i4 -= min;
                    i10 += min;
                    if (i4 == 0) {
                        byte[] k10 = cVar.k(i10);
                        cVar.close();
                        return k10;
                    }
                } while (i10 != A.length);
                A = cVar.p();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    cVar.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static d b(Object obj) {
        try {
            return new d(a.d(obj));
        } catch (IOException e4) {
            throw new IllegalArgumentException("Failed to JDK serialize `" + obj.getClass().getSimpleName() + "` value: " + e4.getMessage(), e4);
        }
    }

    protected Object c() {
        try {
            return a.a(this.f15587a);
        } catch (IOException e4) {
            throw new IllegalArgumentException("Failed to JDK deserialize `JsonNode` value: " + e4.getMessage(), e4);
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        this.f15587a = a(objectInput, objectInput.readInt());
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.f15587a.length);
        objectOutput.write(this.f15587a);
    }

    public d(byte[] bArr) {
        this.f15587a = bArr;
    }
}
