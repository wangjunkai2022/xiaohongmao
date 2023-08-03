package com.mp4parser.iso23001.part7;

import java.math.BigInteger;
import java.util.Arrays;

/* compiled from: CencSampleAuxiliaryDataFormat.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f47090a = new byte[0];

    /* renamed from: b  reason: collision with root package name */
    public k[] f47091b = null;

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    private abstract class b implements k {
        private b() {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            k kVar = (k) obj;
            return clear() == kVar.clear() && a() == kVar.a();
        }

        public String toString() {
            return "P(" + clear() + "|" + a() + ")";
        }

        /* synthetic */ b(a aVar, b bVar) {
            this();
        }
    }

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    private class c extends b {

        /* renamed from: b  reason: collision with root package name */
        private byte f47093b;

        /* renamed from: c  reason: collision with root package name */
        private byte f47094c;

        public c(int i4, long j4) {
            super(a.this, null);
            this.f47093b = (byte) i4;
            this.f47094c = (byte) j4;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f47094c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f47093b;
        }
    }

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    private class d extends b {

        /* renamed from: b  reason: collision with root package name */
        private byte f47096b;

        /* renamed from: c  reason: collision with root package name */
        private int f47097c;

        public d(int i4, long j4) {
            super(a.this, null);
            this.f47096b = (byte) i4;
            this.f47097c = (int) j4;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f47097c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f47096b;
        }
    }

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    private class e extends b {

        /* renamed from: b  reason: collision with root package name */
        private byte f47099b;

        /* renamed from: c  reason: collision with root package name */
        private long f47100c;

        public e(int i4, long j4) {
            super(a.this, null);
            this.f47099b = (byte) i4;
            this.f47100c = j4;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f47100c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f47099b;
        }
    }

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    private class f extends b {

        /* renamed from: b  reason: collision with root package name */
        private byte f47102b;

        /* renamed from: c  reason: collision with root package name */
        private short f47103c;

        public f(int i4, long j4) {
            super(a.this, null);
            this.f47102b = (byte) i4;
            this.f47103c = (short) j4;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f47103c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f47102b;
        }
    }

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    private class g extends b {

        /* renamed from: b  reason: collision with root package name */
        private int f47105b;

        /* renamed from: c  reason: collision with root package name */
        private byte f47106c;

        public g(int i4, long j4) {
            super(a.this, null);
            this.f47105b = i4;
            this.f47106c = (byte) j4;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f47106c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f47105b;
        }
    }

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    private class h extends b {

        /* renamed from: b  reason: collision with root package name */
        private int f47108b;

        /* renamed from: c  reason: collision with root package name */
        private int f47109c;

        public h(int i4, long j4) {
            super(a.this, null);
            this.f47108b = i4;
            this.f47109c = (int) j4;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f47109c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f47108b;
        }
    }

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    private class i extends b {

        /* renamed from: b  reason: collision with root package name */
        private int f47111b;

        /* renamed from: c  reason: collision with root package name */
        private long f47112c;

        public i(int i4, long j4) {
            super(a.this, null);
            this.f47111b = i4;
            this.f47112c = j4;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f47112c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f47111b;
        }
    }

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    private class j extends b {

        /* renamed from: b  reason: collision with root package name */
        private int f47114b;

        /* renamed from: c  reason: collision with root package name */
        private short f47115c;

        public j(int i4, long j4) {
            super(a.this, null);
            this.f47114b = i4;
            this.f47115c = (short) j4;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f47115c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f47114b;
        }
    }

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    public interface k {
        long a();

        int clear();
    }

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    private class l extends b {

        /* renamed from: b  reason: collision with root package name */
        private short f47117b;

        /* renamed from: c  reason: collision with root package name */
        private byte f47118c;

        public l(int i4, long j4) {
            super(a.this, null);
            this.f47117b = (short) i4;
            this.f47118c = (byte) j4;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f47118c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f47117b;
        }
    }

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    private class m extends b {

        /* renamed from: b  reason: collision with root package name */
        private short f47120b;

        /* renamed from: c  reason: collision with root package name */
        private int f47121c;

        public m(int i4, long j4) {
            super(a.this, null);
            this.f47120b = (short) i4;
            this.f47121c = (int) j4;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f47121c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f47120b;
        }
    }

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    private class n extends b {

        /* renamed from: b  reason: collision with root package name */
        private short f47123b;

        /* renamed from: c  reason: collision with root package name */
        private long f47124c;

        public n(int i4, long j4) {
            super(a.this, null);
            this.f47123b = (short) i4;
            this.f47124c = j4;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f47124c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f47123b;
        }
    }

    /* compiled from: CencSampleAuxiliaryDataFormat.java */
    /* loaded from: classes3.dex */
    private class o extends b {

        /* renamed from: b  reason: collision with root package name */
        private short f47126b;

        /* renamed from: c  reason: collision with root package name */
        private short f47127c;

        public o(int i4, long j4) {
            super(a.this, null);
            this.f47126b = (short) i4;
            this.f47127c = (short) j4;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public long a() {
            return this.f47127c;
        }

        @Override // com.mp4parser.iso23001.part7.a.k
        public int clear() {
            return this.f47126b;
        }
    }

    public k a(int i4, long j4) {
        if (i4 <= 127) {
            if (j4 <= 127) {
                return new c(i4, j4);
            }
            if (j4 <= 32767) {
                return new f(i4, j4);
            }
            if (j4 <= 2147483647L) {
                return new d(i4, j4);
            }
            return new e(i4, j4);
        } else if (i4 <= 32767) {
            if (j4 <= 127) {
                return new l(i4, j4);
            }
            if (j4 <= 32767) {
                return new o(i4, j4);
            }
            if (j4 <= 2147483647L) {
                return new m(i4, j4);
            }
            return new n(i4, j4);
        } else if (j4 <= 127) {
            return new g(i4, j4);
        } else {
            if (j4 <= 32767) {
                return new j(i4, j4);
            }
            if (j4 <= 2147483647L) {
                return new h(i4, j4);
            }
            return new i(i4, j4);
        }
    }

    public int b() {
        int length = this.f47090a.length;
        k[] kVarArr = this.f47091b;
        return (kVarArr == null || kVarArr.length <= 0) ? length : length + 2 + (kVarArr.length * 6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (new BigInteger(this.f47090a).equals(new BigInteger(aVar.f47090a))) {
            k[] kVarArr = this.f47091b;
            k[] kVarArr2 = aVar.f47091b;
            return kVarArr == null ? kVarArr2 == null : Arrays.equals(kVarArr, kVarArr2);
        }
        return false;
    }

    public int hashCode() {
        byte[] bArr = this.f47090a;
        int hashCode = (bArr != null ? Arrays.hashCode(bArr) : 0) * 31;
        k[] kVarArr = this.f47091b;
        return hashCode + (kVarArr != null ? Arrays.hashCode(kVarArr) : 0);
    }

    public String toString() {
        return "Entry{iv=" + com.coremedia.iso.e.b(this.f47090a) + ", pairs=" + Arrays.toString(this.f47091b) + '}';
    }
}
