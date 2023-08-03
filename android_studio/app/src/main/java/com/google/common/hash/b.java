package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: AbstractCompositeHashFunction.java */
@Immutable
/* loaded from: classes2.dex */
abstract class b extends c {

    /* renamed from: b  reason: collision with root package name */
    private static final long f34233b = 0;

    /* renamed from: a  reason: collision with root package name */
    final m[] f34234a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractCompositeHashFunction.java */
    /* loaded from: classes2.dex */
    public class a implements n {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n[] f34235a;

        a(n[] nVarArr) {
            this.f34235a = nVarArr;
        }

        @Override // com.google.common.hash.n
        public <T> n h(T t9, Funnel<? super T> funnel) {
            for (n nVar : this.f34235a) {
                nVar.h(t9, funnel);
            }
            return this;
        }

        @Override // com.google.common.hash.n
        public l i() {
            return b.this.o(this.f34235a);
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n a(byte[] bArr) {
            for (n nVar : this.f34235a) {
                nVar.a(bArr);
            }
            return this;
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n b(char c10) {
            for (n nVar : this.f34235a) {
                nVar.b(c10);
            }
            return this;
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n c(byte b10) {
            for (n nVar : this.f34235a) {
                nVar.c(b10);
            }
            return this;
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n d(CharSequence charSequence) {
            for (n nVar : this.f34235a) {
                nVar.d(charSequence);
            }
            return this;
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n e(byte[] bArr, int i4, int i10) {
            for (n nVar : this.f34235a) {
                nVar.e(bArr, i4, i10);
            }
            return this;
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n f(ByteBuffer byteBuffer) {
            n[] nVarArr;
            int position = byteBuffer.position();
            for (n nVar : this.f34235a) {
                byteBuffer.position(position);
                nVar.f(byteBuffer);
            }
            return this;
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n g(CharSequence charSequence, Charset charset) {
            for (n nVar : this.f34235a) {
                nVar.g(charSequence, charset);
            }
            return this;
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n putBoolean(boolean z9) {
            for (n nVar : this.f34235a) {
                nVar.putBoolean(z9);
            }
            return this;
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n putDouble(double d4) {
            for (n nVar : this.f34235a) {
                nVar.putDouble(d4);
            }
            return this;
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n putFloat(float f10) {
            for (n nVar : this.f34235a) {
                nVar.putFloat(f10);
            }
            return this;
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n putInt(int i4) {
            for (n nVar : this.f34235a) {
                nVar.putInt(i4);
            }
            return this;
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n putLong(long j4) {
            for (n nVar : this.f34235a) {
                nVar.putLong(j4);
            }
            return this;
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n putShort(short s9) {
            for (n nVar : this.f34235a) {
                nVar.putShort(s9);
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(m... mVarArr) {
        for (m mVar : mVarArr) {
            com.google.common.base.a0.E(mVar);
        }
        this.f34234a = mVarArr;
    }

    private n n(n[] nVarArr) {
        return new a(nVarArr);
    }

    @Override // com.google.common.hash.c, com.google.common.hash.m
    public n d(int i4) {
        com.google.common.base.a0.d(i4 >= 0);
        int length = this.f34234a.length;
        n[] nVarArr = new n[length];
        for (int i10 = 0; i10 < length; i10++) {
            nVarArr[i10] = this.f34234a[i10].d(i4);
        }
        return n(nVarArr);
    }

    @Override // com.google.common.hash.m
    public n h() {
        int length = this.f34234a.length;
        n[] nVarArr = new n[length];
        for (int i4 = 0; i4 < length; i4++) {
            nVarArr[i4] = this.f34234a[i4].h();
        }
        return n(nVarArr);
    }

    abstract l o(n[] nVarArr);
}
