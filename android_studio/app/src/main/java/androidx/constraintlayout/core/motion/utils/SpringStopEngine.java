package androidx.constraintlayout.core.motion.utils;

import java.io.PrintStream;

/* loaded from: classes.dex */
public class SpringStopEngine implements StopEngine {
    private static final double UNSET = Double.MAX_VALUE;
    private float mLastTime;
    private double mLastVelocity;
    private float mMass;
    private float mPos;
    private double mStiffness;
    private float mStopThreshold;
    private double mTargetPos;
    private float mV;
    double mDamping = 0.5d;
    private boolean mInitialized = false;
    private int mBoundaryMode = 0;

    private void compute(double d4) {
        double d10 = this.mStiffness;
        double d11 = this.mDamping;
        int sqrt = (int) ((9.0d / ((Math.sqrt(d10 / this.mMass) * d4) * 4.0d)) + 1.0d);
        double d12 = d4 / sqrt;
        int i4 = 0;
        while (i4 < sqrt) {
            float f10 = this.mPos;
            double d13 = this.mTargetPos;
            float f11 = this.mV;
            double d14 = d10;
            float f12 = this.mMass;
            double d15 = d11;
            double d16 = f11 + ((((((-d10) * (f10 - d13)) - (f11 * d11)) / f12) * d12) / 2.0d);
            double d17 = ((((-((f10 + ((d12 * d16) / 2.0d)) - d13)) * d14) - (d16 * d15)) / f12) * d12;
            float f13 = (float) (f11 + d17);
            this.mV = f13;
            float f14 = (float) (f10 + ((f11 + (d17 / 2.0d)) * d12));
            this.mPos = f14;
            int i10 = this.mBoundaryMode;
            if (i10 > 0) {
                if (f14 < 0.0f && (i10 & 1) == 1) {
                    this.mPos = -f14;
                    this.mV = -f13;
                }
                float f15 = this.mPos;
                if (f15 > 1.0f && (i10 & 2) == 2) {
                    this.mPos = 2.0f - f15;
                    this.mV = -this.mV;
                }
            }
            i4++;
            d10 = d14;
            d11 = d15;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public String debug(String str, float f10) {
        return null;
    }

    public float getAcceleration() {
        double d4 = this.mStiffness;
        return ((float) (((-d4) * (this.mPos - this.mTargetPos)) - (this.mDamping * this.mV))) / this.mMass;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f10) {
        compute(f10 - this.mLastTime);
        this.mLastTime = f10;
        return this.mPos;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity() {
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity(float f10) {
        return this.mV;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean isStopped() {
        double d4 = this.mPos - this.mTargetPos;
        double d10 = this.mStiffness;
        double d11 = this.mV;
        return Math.sqrt((((d11 * d11) * ((double) this.mMass)) + ((d10 * d4) * d4)) / d10) <= ((double) this.mStopThreshold);
    }

    void log(String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        PrintStream printStream = System.out;
        printStream.println((".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "() ") + str);
    }

    public void springConfig(float f10, float f11, float f12, float f13, float f14, float f15, float f16, int i4) {
        this.mTargetPos = f11;
        this.mDamping = f15;
        this.mInitialized = false;
        this.mPos = f10;
        this.mLastVelocity = f12;
        this.mStiffness = f14;
        this.mMass = f13;
        this.mStopThreshold = f16;
        this.mBoundaryMode = i4;
        this.mLastTime = 0.0f;
    }
}
