package androidx.dynamicanimation.animation;

import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.dynamicanimation.animation.DynamicAnimation;

/* loaded from: classes.dex */
public final class SpringForce implements Force {
    public static final float DAMPING_RATIO_HIGH_BOUNCY = 0.2f;
    public static final float DAMPING_RATIO_LOW_BOUNCY = 0.75f;
    public static final float DAMPING_RATIO_MEDIUM_BOUNCY = 0.5f;
    public static final float DAMPING_RATIO_NO_BOUNCY = 1.0f;
    public static final float STIFFNESS_HIGH = 10000.0f;
    public static final float STIFFNESS_LOW = 200.0f;
    public static final float STIFFNESS_MEDIUM = 1500.0f;
    public static final float STIFFNESS_VERY_LOW = 50.0f;
    private static final double UNSET = Double.MAX_VALUE;
    private static final double VELOCITY_THRESHOLD_MULTIPLIER = 62.5d;
    private double mDampedFreq;
    double mDampingRatio;
    private double mFinalPosition;
    private double mGammaMinus;
    private double mGammaPlus;
    private boolean mInitialized;
    private final DynamicAnimation.MassState mMassState;
    double mNaturalFreq;
    private double mValueThreshold;
    private double mVelocityThreshold;

    public SpringForce() {
        this.mNaturalFreq = Math.sqrt(1500.0d);
        this.mDampingRatio = 0.5d;
        this.mInitialized = false;
        this.mFinalPosition = Double.MAX_VALUE;
        this.mMassState = new DynamicAnimation.MassState();
    }

    private void init() {
        if (this.mInitialized) {
            return;
        }
        if (this.mFinalPosition != Double.MAX_VALUE) {
            double d4 = this.mDampingRatio;
            if (d4 > 1.0d) {
                double d10 = this.mNaturalFreq;
                this.mGammaPlus = ((-d4) * d10) + (d10 * Math.sqrt((d4 * d4) - 1.0d));
                double d11 = this.mDampingRatio;
                double d12 = this.mNaturalFreq;
                this.mGammaMinus = ((-d11) * d12) - (d12 * Math.sqrt((d11 * d11) - 1.0d));
            } else if (d4 >= 0.0d && d4 < 1.0d) {
                this.mDampedFreq = this.mNaturalFreq * Math.sqrt(1.0d - (d4 * d4));
            }
            this.mInitialized = true;
            return;
        }
        throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
    }

    @Override // androidx.dynamicanimation.animation.Force
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public float getAcceleration(float f10, float f11) {
        float finalPosition = f10 - getFinalPosition();
        double d4 = this.mNaturalFreq;
        return (float) (((-(d4 * d4)) * finalPosition) - (((d4 * 2.0d) * this.mDampingRatio) * f11));
    }

    public float getDampingRatio() {
        return (float) this.mDampingRatio;
    }

    public float getFinalPosition() {
        return (float) this.mFinalPosition;
    }

    public float getStiffness() {
        double d4 = this.mNaturalFreq;
        return (float) (d4 * d4);
    }

    @Override // androidx.dynamicanimation.animation.Force
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean isAtEquilibrium(float f10, float f11) {
        return ((double) Math.abs(f11)) < this.mVelocityThreshold && ((double) Math.abs(f10 - getFinalPosition())) < this.mValueThreshold;
    }

    public SpringForce setDampingRatio(@FloatRange(from = 0.0d) float f10) {
        if (f10 >= 0.0f) {
            this.mDampingRatio = f10;
            this.mInitialized = false;
            return this;
        }
        throw new IllegalArgumentException("Damping ratio must be non-negative");
    }

    public SpringForce setFinalPosition(float f10) {
        this.mFinalPosition = f10;
        return this;
    }

    public SpringForce setStiffness(@FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        if (f10 > 0.0f) {
            this.mNaturalFreq = Math.sqrt(f10);
            this.mInitialized = false;
            return this;
        }
        throw new IllegalArgumentException("Spring stiffness constant must be positive.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValueThreshold(double d4) {
        double abs = Math.abs(d4);
        this.mValueThreshold = abs;
        this.mVelocityThreshold = abs * VELOCITY_THRESHOLD_MULTIPLIER;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DynamicAnimation.MassState updateValues(double d4, double d10, long j4) {
        double cos;
        double d11;
        init();
        double d12 = j4 / 1000.0d;
        double d13 = d4 - this.mFinalPosition;
        double d14 = this.mDampingRatio;
        if (d14 > 1.0d) {
            double d15 = this.mGammaMinus;
            double d16 = this.mGammaPlus;
            double d17 = d13 - (((d15 * d13) - d10) / (d15 - d16));
            double d18 = ((d13 * d15) - d10) / (d15 - d16);
            d11 = (Math.pow(2.718281828459045d, d15 * d12) * d17) + (Math.pow(2.718281828459045d, this.mGammaPlus * d12) * d18);
            double d19 = this.mGammaMinus;
            double pow = d17 * d19 * Math.pow(2.718281828459045d, d19 * d12);
            double d20 = this.mGammaPlus;
            cos = pow + (d18 * d20 * Math.pow(2.718281828459045d, d20 * d12));
        } else if (d14 == 1.0d) {
            double d21 = this.mNaturalFreq;
            double d22 = d10 + (d21 * d13);
            double d23 = d13 + (d22 * d12);
            d11 = Math.pow(2.718281828459045d, (-d21) * d12) * d23;
            double pow2 = d23 * Math.pow(2.718281828459045d, (-this.mNaturalFreq) * d12);
            double d24 = this.mNaturalFreq;
            cos = (d22 * Math.pow(2.718281828459045d, (-d24) * d12)) + (pow2 * (-d24));
        } else {
            double d25 = 1.0d / this.mDampedFreq;
            double d26 = this.mNaturalFreq;
            double d27 = d25 * ((d14 * d26 * d13) + d10);
            double pow3 = Math.pow(2.718281828459045d, (-d14) * d26 * d12) * ((Math.cos(this.mDampedFreq * d12) * d13) + (Math.sin(this.mDampedFreq * d12) * d27));
            double d28 = this.mNaturalFreq;
            double d29 = this.mDampingRatio;
            double d30 = (-d28) * pow3 * d29;
            double pow4 = Math.pow(2.718281828459045d, (-d29) * d28 * d12);
            double d31 = this.mDampedFreq;
            double sin = (-d31) * d13 * Math.sin(d31 * d12);
            double d32 = this.mDampedFreq;
            cos = d30 + (pow4 * (sin + (d27 * d32 * Math.cos(d32 * d12))));
            d11 = pow3;
        }
        DynamicAnimation.MassState massState = this.mMassState;
        massState.mValue = (float) (d11 + this.mFinalPosition);
        massState.mVelocity = (float) cos;
        return massState;
    }

    public SpringForce(float f10) {
        this.mNaturalFreq = Math.sqrt(1500.0d);
        this.mDampingRatio = 0.5d;
        this.mInitialized = false;
        this.mFinalPosition = Double.MAX_VALUE;
        this.mMassState = new DynamicAnimation.MassState();
        this.mFinalPosition = f10;
    }
}
