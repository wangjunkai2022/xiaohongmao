package io.sentry;

import m8.a;

/* loaded from: classes4.dex */
public interface MeasurementUnit {
    @a.c

    /* renamed from: i2  reason: collision with root package name */
    public static final String f81818i2 = "none";

    /* loaded from: classes4.dex */
    public enum Duration implements MeasurementUnit {
        NANOSECOND,
        MICROSECOND,
        MILLISECOND,
        SECOND,
        MINUTE,
        HOUR,
        DAY,
        WEEK;

        @Override // io.sentry.MeasurementUnit
        public /* synthetic */ String a() {
            return q1.a(this);
        }
    }

    /* loaded from: classes4.dex */
    public enum Fraction implements MeasurementUnit {
        RATIO,
        PERCENT;

        @Override // io.sentry.MeasurementUnit
        public /* synthetic */ String a() {
            return q1.a(this);
        }
    }

    /* loaded from: classes4.dex */
    public enum Information implements MeasurementUnit {
        BIT,
        BYTE,
        KILOBYTE,
        KIBIBYTE,
        MEGABYTE,
        MEBIBYTE,
        GIGABYTE,
        GIBIBYTE,
        TERABYTE,
        TEBIBYTE,
        PETABYTE,
        PEBIBYTE,
        EXABYTE,
        EXBIBYTE;

        @Override // io.sentry.MeasurementUnit
        public /* synthetic */ String a() {
            return q1.a(this);
        }
    }

    /* loaded from: classes4.dex */
    public static final class a implements MeasurementUnit {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f81819a;

        public a(@m8.g String str) {
            this.f81819a = str;
        }

        @Override // io.sentry.MeasurementUnit
        public /* synthetic */ String a() {
            return q1.a(this);
        }

        @Override // io.sentry.MeasurementUnit
        @m8.g
        public String name() {
            return this.f81819a;
        }
    }

    @a.c
    @m8.g
    String a();

    @m8.g
    String name();
}
