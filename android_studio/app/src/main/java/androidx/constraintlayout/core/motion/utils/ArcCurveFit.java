package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* loaded from: classes.dex */
public class ArcCurveFit extends CurveFit {
    public static final int ARC_START_FLIP = 3;
    public static final int ARC_START_HORIZONTAL = 2;
    public static final int ARC_START_LINEAR = 0;
    public static final int ARC_START_VERTICAL = 1;
    private static final int START_HORIZONTAL = 2;
    private static final int START_LINEAR = 3;
    private static final int START_VERTICAL = 1;
    Arc[] mArcs;
    private boolean mExtrapolate = true;
    private final double[] mTime;

    /* loaded from: classes.dex */
    private static class Arc {
        private static final double EPSILON = 0.001d;
        private static final String TAG = "Arc";
        private static double[] ourPercent = new double[91];
        boolean linear;
        double mArcDistance;
        double mArcVelocity;
        double mEllipseA;
        double mEllipseB;
        double mEllipseCenterX;
        double mEllipseCenterY;
        double[] mLut;
        double mOneOverDeltaTime;
        double mTime1;
        double mTime2;
        double mTmpCosAngle;
        double mTmpSinAngle;
        boolean mVertical;
        double mX1;
        double mX2;
        double mY1;
        double mY2;

        Arc(int i4, double d4, double d10, double d11, double d12, double d13, double d14) {
            this.linear = false;
            this.mVertical = i4 == 1;
            this.mTime1 = d4;
            this.mTime2 = d10;
            this.mOneOverDeltaTime = 1.0d / (d10 - d4);
            if (3 == i4) {
                this.linear = true;
            }
            double d15 = d13 - d11;
            double d16 = d14 - d12;
            if (!this.linear && Math.abs(d15) >= EPSILON && Math.abs(d16) >= EPSILON) {
                this.mLut = new double[101];
                boolean z9 = this.mVertical;
                this.mEllipseA = d15 * (z9 ? -1 : 1);
                this.mEllipseB = d16 * (z9 ? 1 : -1);
                this.mEllipseCenterX = z9 ? d13 : d11;
                this.mEllipseCenterY = z9 ? d12 : d14;
                buildTable(d11, d12, d13, d14);
                this.mArcVelocity = this.mArcDistance * this.mOneOverDeltaTime;
                return;
            }
            this.linear = true;
            this.mX1 = d11;
            this.mX2 = d13;
            this.mY1 = d12;
            this.mY2 = d14;
            double hypot = Math.hypot(d16, d15);
            this.mArcDistance = hypot;
            this.mArcVelocity = hypot * this.mOneOverDeltaTime;
            double d17 = this.mTime2;
            double d18 = this.mTime1;
            this.mEllipseCenterX = d15 / (d17 - d18);
            this.mEllipseCenterY = d16 / (d17 - d18);
        }

        private void buildTable(double d4, double d10, double d11, double d12) {
            double[] dArr;
            double[] dArr2;
            double d13;
            double d14 = d11 - d4;
            double d15 = d10 - d12;
            int i4 = 0;
            double d16 = 0.0d;
            double d17 = 0.0d;
            double d18 = 0.0d;
            while (true) {
                if (i4 >= ourPercent.length) {
                    break;
                }
                double d19 = d16;
                double radians = Math.toRadians((i4 * 90.0d) / (dArr.length - 1));
                double sin = Math.sin(radians) * d14;
                double cos = Math.cos(radians) * d15;
                if (i4 > 0) {
                    d13 = Math.hypot(sin - d17, cos - d18) + d19;
                    ourPercent[i4] = d13;
                } else {
                    d13 = d19;
                }
                i4++;
                d18 = cos;
                d16 = d13;
                d17 = sin;
            }
            double d20 = d16;
            this.mArcDistance = d20;
            int i10 = 0;
            while (true) {
                double[] dArr3 = ourPercent;
                if (i10 >= dArr3.length) {
                    break;
                }
                dArr3[i10] = dArr3[i10] / d20;
                i10++;
            }
            int i11 = 0;
            while (true) {
                if (i11 >= this.mLut.length) {
                    return;
                }
                double length = i11 / (dArr2.length - 1);
                int binarySearch = Arrays.binarySearch(ourPercent, length);
                if (binarySearch >= 0) {
                    this.mLut[i11] = binarySearch / (ourPercent.length - 1);
                } else if (binarySearch == -1) {
                    this.mLut[i11] = 0.0d;
                } else {
                    int i12 = -binarySearch;
                    int i13 = i12 - 2;
                    double[] dArr4 = ourPercent;
                    this.mLut[i11] = (i13 + ((length - dArr4[i13]) / (dArr4[i12 - 1] - dArr4[i13]))) / (dArr4.length - 1);
                }
                i11++;
            }
        }

        double getDX() {
            double d4 = this.mEllipseA * this.mTmpCosAngle;
            double hypot = this.mArcVelocity / Math.hypot(d4, (-this.mEllipseB) * this.mTmpSinAngle);
            if (this.mVertical) {
                d4 = -d4;
            }
            return d4 * hypot;
        }

        double getDY() {
            double d4 = this.mEllipseA * this.mTmpCosAngle;
            double d10 = (-this.mEllipseB) * this.mTmpSinAngle;
            double hypot = this.mArcVelocity / Math.hypot(d4, d10);
            return this.mVertical ? (-d10) * hypot : d10 * hypot;
        }

        public double getLinearDX(double d4) {
            return this.mEllipseCenterX;
        }

        public double getLinearDY(double d4) {
            return this.mEllipseCenterY;
        }

        public double getLinearX(double d4) {
            double d10 = (d4 - this.mTime1) * this.mOneOverDeltaTime;
            double d11 = this.mX1;
            return d11 + (d10 * (this.mX2 - d11));
        }

        public double getLinearY(double d4) {
            double d10 = (d4 - this.mTime1) * this.mOneOverDeltaTime;
            double d11 = this.mY1;
            return d11 + (d10 * (this.mY2 - d11));
        }

        double getX() {
            return this.mEllipseCenterX + (this.mEllipseA * this.mTmpSinAngle);
        }

        double getY() {
            return this.mEllipseCenterY + (this.mEllipseB * this.mTmpCosAngle);
        }

        double lookup(double d4) {
            if (d4 <= 0.0d) {
                return 0.0d;
            }
            if (d4 >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.mLut;
            double length = d4 * (dArr.length - 1);
            int i4 = (int) length;
            return dArr[i4] + ((length - i4) * (dArr[i4 + 1] - dArr[i4]));
        }

        void setPoint(double d4) {
            double lookup = lookup((this.mVertical ? this.mTime2 - d4 : d4 - this.mTime1) * this.mOneOverDeltaTime) * 1.5707963267948966d;
            this.mTmpSinAngle = Math.sin(lookup);
            this.mTmpCosAngle = Math.cos(lookup);
        }
    }

    public ArcCurveFit(int[] iArr, double[] dArr, double[][] dArr2) {
        this.mTime = dArr;
        this.mArcs = new Arc[dArr.length - 1];
        int i4 = 0;
        int i10 = 1;
        int i11 = 1;
        while (true) {
            Arc[] arcArr = this.mArcs;
            if (i4 >= arcArr.length) {
                return;
            }
            int i12 = iArr[i4];
            if (i12 == 0) {
                i11 = 3;
            } else if (i12 == 1) {
                i10 = 1;
                i11 = 1;
            } else if (i12 == 2) {
                i10 = 2;
                i11 = 2;
            } else if (i12 == 3) {
                i10 = i10 == 1 ? 2 : 1;
                i11 = i10;
            }
            int i13 = i4 + 1;
            arcArr[i4] = new Arc(i11, dArr[i4], dArr[i13], dArr2[i4][0], dArr2[i4][1], dArr2[i13][0], dArr2[i13][1]);
            i4 = i13;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d4, double[] dArr) {
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            if (d4 < arcArr[0].mTime1) {
                double d10 = arcArr[0].mTime1;
                double d11 = d4 - arcArr[0].mTime1;
                if (arcArr[0].linear) {
                    dArr[0] = arcArr[0].getLinearX(d10) + (this.mArcs[0].getLinearDX(d10) * d11);
                    dArr[1] = this.mArcs[0].getLinearY(d10) + (d11 * this.mArcs[0].getLinearDY(d10));
                    return;
                }
                arcArr[0].setPoint(d10);
                dArr[0] = this.mArcs[0].getX() + (this.mArcs[0].getDX() * d11);
                dArr[1] = this.mArcs[0].getY() + (d11 * this.mArcs[0].getDY());
                return;
            } else if (d4 > arcArr[arcArr.length - 1].mTime2) {
                double d12 = arcArr[arcArr.length - 1].mTime2;
                double d13 = d4 - d12;
                int length = arcArr.length - 1;
                if (arcArr[length].linear) {
                    dArr[0] = arcArr[length].getLinearX(d12) + (this.mArcs[length].getLinearDX(d12) * d13);
                    dArr[1] = this.mArcs[length].getLinearY(d12) + (d13 * this.mArcs[length].getLinearDY(d12));
                    return;
                }
                arcArr[length].setPoint(d4);
                dArr[0] = this.mArcs[length].getX() + (this.mArcs[length].getDX() * d13);
                dArr[1] = this.mArcs[length].getY() + (d13 * this.mArcs[length].getDY());
                return;
            }
        } else {
            Arc[] arcArr2 = this.mArcs;
            if (d4 < arcArr2[0].mTime1) {
                d4 = arcArr2[0].mTime1;
            }
            if (d4 > arcArr2[arcArr2.length - 1].mTime2) {
                d4 = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        int i4 = 0;
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i4 >= arcArr3.length) {
                return;
            }
            if (d4 <= arcArr3[i4].mTime2) {
                if (arcArr3[i4].linear) {
                    dArr[0] = arcArr3[i4].getLinearX(d4);
                    dArr[1] = this.mArcs[i4].getLinearY(d4);
                    return;
                }
                arcArr3[i4].setPoint(d4);
                dArr[0] = this.mArcs[i4].getX();
                dArr[1] = this.mArcs[i4].getY();
                return;
            }
            i4++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d4, double[] dArr) {
        Arc[] arcArr = this.mArcs;
        if (d4 < arcArr[0].mTime1) {
            d4 = arcArr[0].mTime1;
        } else if (d4 > arcArr[arcArr.length - 1].mTime2) {
            d4 = arcArr[arcArr.length - 1].mTime2;
        }
        int i4 = 0;
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i4 >= arcArr2.length) {
                return;
            }
            if (d4 <= arcArr2[i4].mTime2) {
                if (arcArr2[i4].linear) {
                    dArr[0] = arcArr2[i4].getLinearDX(d4);
                    dArr[1] = this.mArcs[i4].getLinearDY(d4);
                    return;
                }
                arcArr2[i4].setPoint(d4);
                dArr[0] = this.mArcs[i4].getDX();
                dArr[1] = this.mArcs[i4].getDY();
                return;
            }
            i4++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mTime;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d4, int i4) {
        Arc[] arcArr = this.mArcs;
        int i10 = 0;
        if (d4 < arcArr[0].mTime1) {
            d4 = arcArr[0].mTime1;
        }
        if (d4 > arcArr[arcArr.length - 1].mTime2) {
            d4 = arcArr[arcArr.length - 1].mTime2;
        }
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i10 >= arcArr2.length) {
                return Double.NaN;
            }
            if (d4 <= arcArr2[i10].mTime2) {
                if (arcArr2[i10].linear) {
                    if (i4 == 0) {
                        return arcArr2[i10].getLinearDX(d4);
                    }
                    return arcArr2[i10].getLinearDY(d4);
                }
                arcArr2[i10].setPoint(d4);
                if (i4 == 0) {
                    return this.mArcs[i10].getDX();
                }
                return this.mArcs[i10].getDY();
            }
            i10++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d4, float[] fArr) {
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            if (d4 < arcArr[0].mTime1) {
                double d10 = arcArr[0].mTime1;
                double d11 = d4 - arcArr[0].mTime1;
                if (arcArr[0].linear) {
                    fArr[0] = (float) (arcArr[0].getLinearX(d10) + (this.mArcs[0].getLinearDX(d10) * d11));
                    fArr[1] = (float) (this.mArcs[0].getLinearY(d10) + (d11 * this.mArcs[0].getLinearDY(d10)));
                    return;
                }
                arcArr[0].setPoint(d10);
                fArr[0] = (float) (this.mArcs[0].getX() + (this.mArcs[0].getDX() * d11));
                fArr[1] = (float) (this.mArcs[0].getY() + (d11 * this.mArcs[0].getDY()));
                return;
            } else if (d4 > arcArr[arcArr.length - 1].mTime2) {
                double d12 = arcArr[arcArr.length - 1].mTime2;
                double d13 = d4 - d12;
                int length = arcArr.length - 1;
                if (arcArr[length].linear) {
                    fArr[0] = (float) (arcArr[length].getLinearX(d12) + (this.mArcs[length].getLinearDX(d12) * d13));
                    fArr[1] = (float) (this.mArcs[length].getLinearY(d12) + (d13 * this.mArcs[length].getLinearDY(d12)));
                    return;
                }
                arcArr[length].setPoint(d4);
                fArr[0] = (float) this.mArcs[length].getX();
                fArr[1] = (float) this.mArcs[length].getY();
                return;
            }
        } else {
            Arc[] arcArr2 = this.mArcs;
            if (d4 < arcArr2[0].mTime1) {
                d4 = arcArr2[0].mTime1;
            } else if (d4 > arcArr2[arcArr2.length - 1].mTime2) {
                d4 = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        int i4 = 0;
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i4 >= arcArr3.length) {
                return;
            }
            if (d4 <= arcArr3[i4].mTime2) {
                if (arcArr3[i4].linear) {
                    fArr[0] = (float) arcArr3[i4].getLinearX(d4);
                    fArr[1] = (float) this.mArcs[i4].getLinearY(d4);
                    return;
                }
                arcArr3[i4].setPoint(d4);
                fArr[0] = (float) this.mArcs[i4].getX();
                fArr[1] = (float) this.mArcs[i4].getY();
                return;
            }
            i4++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d4, int i4) {
        double d10;
        double linearY;
        double linearDY;
        double y9;
        double dy;
        int i10 = 0;
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            if (d4 < arcArr[0].mTime1) {
                double d11 = arcArr[0].mTime1;
                d10 = d4 - arcArr[0].mTime1;
                if (!arcArr[0].linear) {
                    arcArr[0].setPoint(d11);
                    if (i4 == 0) {
                        y9 = this.mArcs[0].getX();
                        dy = this.mArcs[0].getDX();
                    } else {
                        y9 = this.mArcs[0].getY();
                        dy = this.mArcs[0].getDY();
                    }
                    return y9 + (d10 * dy);
                } else if (i4 == 0) {
                    linearY = arcArr[0].getLinearX(d11);
                    linearDY = this.mArcs[0].getLinearDX(d11);
                } else {
                    linearY = arcArr[0].getLinearY(d11);
                    linearDY = this.mArcs[0].getLinearDY(d11);
                }
            } else if (d4 > arcArr[arcArr.length - 1].mTime2) {
                double d12 = arcArr[arcArr.length - 1].mTime2;
                d10 = d4 - d12;
                int length = arcArr.length - 1;
                if (i4 == 0) {
                    linearY = arcArr[length].getLinearX(d12);
                    linearDY = this.mArcs[length].getLinearDX(d12);
                } else {
                    linearY = arcArr[length].getLinearY(d12);
                    linearDY = this.mArcs[length].getLinearDY(d12);
                }
            }
            return linearY + (d10 * linearDY);
        }
        Arc[] arcArr2 = this.mArcs;
        if (d4 < arcArr2[0].mTime1) {
            d4 = arcArr2[0].mTime1;
        } else if (d4 > arcArr2[arcArr2.length - 1].mTime2) {
            d4 = arcArr2[arcArr2.length - 1].mTime2;
        }
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i10 >= arcArr3.length) {
                return Double.NaN;
            }
            if (d4 <= arcArr3[i10].mTime2) {
                if (arcArr3[i10].linear) {
                    if (i4 == 0) {
                        return arcArr3[i10].getLinearX(d4);
                    }
                    return arcArr3[i10].getLinearY(d4);
                }
                arcArr3[i10].setPoint(d4);
                if (i4 == 0) {
                    return this.mArcs[i10].getX();
                }
                return this.mArcs[i10].getY();
            }
            i10++;
        }
    }
}
