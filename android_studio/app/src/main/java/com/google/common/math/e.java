package com.google.common.math;

import com.google.common.base.a0;
import com.google.errorprone.annotations.concurrent.LazyInit;

/* compiled from: LinearTransformation.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public abstract class e {

    /* compiled from: LinearTransformation.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final double f34564a;

        /* renamed from: b  reason: collision with root package name */
        private final double f34565b;

        public e a(double d4, double d10) {
            a0.d(com.google.common.math.c.d(d4) && com.google.common.math.c.d(d10));
            double d11 = this.f34564a;
            if (d4 == d11) {
                a0.d(d10 != this.f34565b);
                return new C0257e(this.f34564a);
            }
            return b((d10 - this.f34565b) / (d4 - d11));
        }

        public e b(double d4) {
            a0.d(!Double.isNaN(d4));
            if (com.google.common.math.c.d(d4)) {
                return new d(d4, this.f34565b - (this.f34564a * d4));
            }
            return new C0257e(this.f34564a);
        }

        private b(double d4, double d10) {
            this.f34564a = d4;
            this.f34565b = d10;
        }
    }

    /* compiled from: LinearTransformation.java */
    /* loaded from: classes2.dex */
    private static final class c extends e {

        /* renamed from: a  reason: collision with root package name */
        static final c f34566a = new c();

        private c() {
        }

        @Override // com.google.common.math.e
        public e c() {
            return this;
        }

        @Override // com.google.common.math.e
        public boolean d() {
            return false;
        }

        @Override // com.google.common.math.e
        public boolean e() {
            return false;
        }

        @Override // com.google.common.math.e
        public double g() {
            return Double.NaN;
        }

        @Override // com.google.common.math.e
        public double h(double d4) {
            return Double.NaN;
        }

        public String toString() {
            return "NaN";
        }
    }

    public static e a() {
        return c.f34566a;
    }

    public static e b(double d4) {
        a0.d(com.google.common.math.c.d(d4));
        return new d(0.0d, d4);
    }

    public static b f(double d4, double d10) {
        a0.d(com.google.common.math.c.d(d4) && com.google.common.math.c.d(d10));
        return new b(d4, d10);
    }

    public static e i(double d4) {
        a0.d(com.google.common.math.c.d(d4));
        return new C0257e(d4);
    }

    public abstract e c();

    public abstract boolean d();

    public abstract boolean e();

    public abstract double g();

    public abstract double h(double d4);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LinearTransformation.java */
    /* renamed from: com.google.common.math.e$e  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0257e extends e {

        /* renamed from: a  reason: collision with root package name */
        final double f34570a;
        @LazyInit

        /* renamed from: b  reason: collision with root package name */
        e f34571b;

        C0257e(double d4) {
            this.f34570a = d4;
            this.f34571b = null;
        }

        private e j() {
            return new d(0.0d, this.f34570a, this);
        }

        @Override // com.google.common.math.e
        public e c() {
            e eVar = this.f34571b;
            if (eVar == null) {
                e j4 = j();
                this.f34571b = j4;
                return j4;
            }
            return eVar;
        }

        @Override // com.google.common.math.e
        public boolean d() {
            return false;
        }

        @Override // com.google.common.math.e
        public boolean e() {
            return true;
        }

        @Override // com.google.common.math.e
        public double g() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.math.e
        public double h(double d4) {
            throw new IllegalStateException();
        }

        public String toString() {
            return String.format("x = %g", Double.valueOf(this.f34570a));
        }

        C0257e(double d4, e eVar) {
            this.f34570a = d4;
            this.f34571b = eVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LinearTransformation.java */
    /* loaded from: classes2.dex */
    public static final class d extends e {

        /* renamed from: a  reason: collision with root package name */
        final double f34567a;

        /* renamed from: b  reason: collision with root package name */
        final double f34568b;
        @LazyInit

        /* renamed from: c  reason: collision with root package name */
        e f34569c;

        d(double d4, double d10) {
            this.f34567a = d4;
            this.f34568b = d10;
            this.f34569c = null;
        }

        private e j() {
            double d4 = this.f34567a;
            if (d4 != 0.0d) {
                return new d(1.0d / d4, (this.f34568b * (-1.0d)) / d4, this);
            }
            return new C0257e(this.f34568b, this);
        }

        @Override // com.google.common.math.e
        public e c() {
            e eVar = this.f34569c;
            if (eVar == null) {
                e j4 = j();
                this.f34569c = j4;
                return j4;
            }
            return eVar;
        }

        @Override // com.google.common.math.e
        public boolean d() {
            return this.f34567a == 0.0d;
        }

        @Override // com.google.common.math.e
        public boolean e() {
            return false;
        }

        @Override // com.google.common.math.e
        public double g() {
            return this.f34567a;
        }

        @Override // com.google.common.math.e
        public double h(double d4) {
            return (d4 * this.f34567a) + this.f34568b;
        }

        public String toString() {
            return String.format("y = %g * x + %g", Double.valueOf(this.f34567a), Double.valueOf(this.f34568b));
        }

        d(double d4, double d10, e eVar) {
            this.f34567a = d4;
            this.f34568b = d10;
            this.f34569c = eVar;
        }
    }
}
