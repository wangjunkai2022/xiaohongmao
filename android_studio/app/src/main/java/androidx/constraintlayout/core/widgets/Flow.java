package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class Flow extends VirtualLayout {
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_NONE = 0;
    private ConstraintWidget[] mDisplayedWidgets;
    private int mHorizontalStyle = -1;
    private int mVerticalStyle = -1;
    private int mFirstHorizontalStyle = -1;
    private int mFirstVerticalStyle = -1;
    private int mLastHorizontalStyle = -1;
    private int mLastVerticalStyle = -1;
    private float mHorizontalBias = 0.5f;
    private float mVerticalBias = 0.5f;
    private float mFirstHorizontalBias = 0.5f;
    private float mFirstVerticalBias = 0.5f;
    private float mLastHorizontalBias = 0.5f;
    private float mLastVerticalBias = 0.5f;
    private int mHorizontalGap = 0;
    private int mVerticalGap = 0;
    private int mHorizontalAlign = 2;
    private int mVerticalAlign = 2;
    private int mWrapMode = 0;
    private int mMaxElementsWrap = -1;
    private int mOrientation = 0;
    private ArrayList<WidgetsList> mChainList = new ArrayList<>();
    private ConstraintWidget[] mAlignedBiggestElementsInRows = null;
    private ConstraintWidget[] mAlignedBiggestElementsInCols = null;
    private int[] mAlignedDimensions = null;
    private int mDisplayedWidgetsCount = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class WidgetsList {
        private ConstraintAnchor mBottom;
        private ConstraintAnchor mLeft;
        private int mMax;
        private int mOrientation;
        private int mPaddingBottom;
        private int mPaddingLeft;
        private int mPaddingRight;
        private int mPaddingTop;
        private ConstraintAnchor mRight;
        private ConstraintAnchor mTop;
        private ConstraintWidget biggest = null;
        int biggestDimension = 0;
        private int mWidth = 0;
        private int mHeight = 0;
        private int mStartIndex = 0;
        private int mCount = 0;
        private int mNbMatchConstraintsWidgets = 0;

        public WidgetsList(int i4, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i10) {
            this.mPaddingLeft = 0;
            this.mPaddingTop = 0;
            this.mPaddingRight = 0;
            this.mPaddingBottom = 0;
            this.mMax = 0;
            this.mOrientation = i4;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = Flow.this.getPaddingLeft();
            this.mPaddingTop = Flow.this.getPaddingTop();
            this.mPaddingRight = Flow.this.getPaddingRight();
            this.mPaddingBottom = Flow.this.getPaddingBottom();
            this.mMax = i10;
        }

        private void recomputeDimensions() {
            this.mWidth = 0;
            this.mHeight = 0;
            this.biggest = null;
            this.biggestDimension = 0;
            int i4 = this.mCount;
            for (int i10 = 0; i10 < i4 && this.mStartIndex + i10 < Flow.this.mDisplayedWidgetsCount; i10++) {
                ConstraintWidget constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + i10];
                if (this.mOrientation == 0) {
                    int width = constraintWidget.getWidth();
                    int i11 = Flow.this.mHorizontalGap;
                    if (constraintWidget.getVisibility() == 8) {
                        i11 = 0;
                    }
                    this.mWidth += width + i11;
                    int widgetHeight = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                    if (this.biggest == null || this.biggestDimension < widgetHeight) {
                        this.biggest = constraintWidget;
                        this.biggestDimension = widgetHeight;
                        this.mHeight = widgetHeight;
                    }
                } else {
                    int widgetWidth = Flow.this.getWidgetWidth(constraintWidget, this.mMax);
                    int widgetHeight2 = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                    int i12 = Flow.this.mVerticalGap;
                    if (constraintWidget.getVisibility() == 8) {
                        i12 = 0;
                    }
                    this.mHeight += widgetHeight2 + i12;
                    if (this.biggest == null || this.biggestDimension < widgetWidth) {
                        this.biggest = constraintWidget;
                        this.biggestDimension = widgetWidth;
                        this.mWidth = widgetWidth;
                    }
                }
            }
        }

        public void add(ConstraintWidget constraintWidget) {
            if (this.mOrientation == 0) {
                int widgetWidth = Flow.this.getWidgetWidth(constraintWidget, this.mMax);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetWidth = 0;
                }
                this.mWidth += widgetWidth + (constraintWidget.getVisibility() != 8 ? Flow.this.mHorizontalGap : 0);
                int widgetHeight = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                if (this.biggest == null || this.biggestDimension < widgetHeight) {
                    this.biggest = constraintWidget;
                    this.biggestDimension = widgetHeight;
                    this.mHeight = widgetHeight;
                }
            } else {
                int widgetWidth2 = Flow.this.getWidgetWidth(constraintWidget, this.mMax);
                int widgetHeight2 = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetHeight2 = 0;
                }
                this.mHeight += widgetHeight2 + (constraintWidget.getVisibility() != 8 ? Flow.this.mVerticalGap : 0);
                if (this.biggest == null || this.biggestDimension < widgetWidth2) {
                    this.biggest = constraintWidget;
                    this.biggestDimension = widgetWidth2;
                    this.mWidth = widgetWidth2;
                }
            }
            this.mCount++;
        }

        public void clear() {
            this.biggestDimension = 0;
            this.biggest = null;
            this.mWidth = 0;
            this.mHeight = 0;
            this.mStartIndex = 0;
            this.mCount = 0;
            this.mNbMatchConstraintsWidgets = 0;
        }

        public void createConstraints(boolean z9, int i4, boolean z10) {
            ConstraintWidget constraintWidget;
            float f10;
            float f11;
            int i10 = this.mCount;
            for (int i11 = 0; i11 < i10 && this.mStartIndex + i11 < Flow.this.mDisplayedWidgetsCount; i11++) {
                ConstraintWidget constraintWidget2 = Flow.this.mDisplayedWidgets[this.mStartIndex + i11];
                if (constraintWidget2 != null) {
                    constraintWidget2.resetAnchors();
                }
            }
            if (i10 == 0 || this.biggest == null) {
                return;
            }
            boolean z11 = z10 && i4 == 0;
            int i12 = -1;
            int i13 = -1;
            for (int i14 = 0; i14 < i10; i14++) {
                int i15 = z9 ? (i10 - 1) - i14 : i14;
                if (this.mStartIndex + i15 >= Flow.this.mDisplayedWidgetsCount) {
                    break;
                }
                ConstraintWidget constraintWidget3 = Flow.this.mDisplayedWidgets[this.mStartIndex + i15];
                if (constraintWidget3 != null && constraintWidget3.getVisibility() == 0) {
                    if (i12 == -1) {
                        i12 = i14;
                    }
                    i13 = i14;
                }
            }
            ConstraintWidget constraintWidget4 = null;
            if (this.mOrientation == 0) {
                ConstraintWidget constraintWidget5 = this.biggest;
                constraintWidget5.setVerticalChainStyle(Flow.this.mVerticalStyle);
                int i16 = this.mPaddingTop;
                if (i4 > 0) {
                    i16 += Flow.this.mVerticalGap;
                }
                constraintWidget5.mTop.connect(this.mTop, i16);
                if (z10) {
                    constraintWidget5.mBottom.connect(this.mBottom, this.mPaddingBottom);
                }
                if (i4 > 0) {
                    this.mTop.mOwner.mBottom.connect(constraintWidget5.mTop, 0);
                }
                if (Flow.this.mVerticalAlign == 3 && !constraintWidget5.hasBaseline()) {
                    for (int i17 = 0; i17 < i10; i17++) {
                        int i18 = z9 ? (i10 - 1) - i17 : i17;
                        if (this.mStartIndex + i18 >= Flow.this.mDisplayedWidgetsCount) {
                            break;
                        }
                        constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + i18];
                        if (constraintWidget.hasBaseline()) {
                            break;
                        }
                    }
                }
                constraintWidget = constraintWidget5;
                int i19 = 0;
                while (i19 < i10) {
                    int i20 = z9 ? (i10 - 1) - i19 : i19;
                    if (this.mStartIndex + i20 >= Flow.this.mDisplayedWidgetsCount) {
                        return;
                    }
                    ConstraintWidget constraintWidget6 = Flow.this.mDisplayedWidgets[this.mStartIndex + i20];
                    if (constraintWidget6 == null) {
                        constraintWidget6 = constraintWidget4;
                    } else {
                        if (i19 == 0) {
                            constraintWidget6.connect(constraintWidget6.mLeft, this.mLeft, this.mPaddingLeft);
                        }
                        if (i20 == 0) {
                            int i21 = Flow.this.mHorizontalStyle;
                            float f12 = Flow.this.mHorizontalBias;
                            if (z9) {
                                f12 = 1.0f - f12;
                            }
                            if (this.mStartIndex == 0 && Flow.this.mFirstHorizontalStyle != -1) {
                                i21 = Flow.this.mFirstHorizontalStyle;
                                if (z9) {
                                    f11 = Flow.this.mFirstHorizontalBias;
                                    f10 = 1.0f - f11;
                                    f12 = f10;
                                } else {
                                    f10 = Flow.this.mFirstHorizontalBias;
                                    f12 = f10;
                                }
                            } else if (z10 && Flow.this.mLastHorizontalStyle != -1) {
                                i21 = Flow.this.mLastHorizontalStyle;
                                if (z9) {
                                    f11 = Flow.this.mLastHorizontalBias;
                                    f10 = 1.0f - f11;
                                    f12 = f10;
                                } else {
                                    f10 = Flow.this.mLastHorizontalBias;
                                    f12 = f10;
                                }
                            }
                            constraintWidget6.setHorizontalChainStyle(i21);
                            constraintWidget6.setHorizontalBiasPercent(f12);
                        }
                        if (i19 == i10 - 1) {
                            constraintWidget6.connect(constraintWidget6.mRight, this.mRight, this.mPaddingRight);
                        }
                        if (constraintWidget4 != null) {
                            constraintWidget6.mLeft.connect(constraintWidget4.mRight, Flow.this.mHorizontalGap);
                            if (i19 == i12) {
                                constraintWidget6.mLeft.setGoneMargin(this.mPaddingLeft);
                            }
                            constraintWidget4.mRight.connect(constraintWidget6.mLeft, 0);
                            if (i19 == i13 + 1) {
                                constraintWidget4.mRight.setGoneMargin(this.mPaddingRight);
                            }
                        }
                        if (constraintWidget6 != constraintWidget5) {
                            if (Flow.this.mVerticalAlign == 3 && constraintWidget.hasBaseline() && constraintWidget6 != constraintWidget && constraintWidget6.hasBaseline()) {
                                constraintWidget6.mBaseline.connect(constraintWidget.mBaseline, 0);
                            } else {
                                int i22 = Flow.this.mVerticalAlign;
                                if (i22 == 0) {
                                    constraintWidget6.mTop.connect(constraintWidget5.mTop, 0);
                                } else if (i22 == 1) {
                                    constraintWidget6.mBottom.connect(constraintWidget5.mBottom, 0);
                                } else if (z11) {
                                    constraintWidget6.mTop.connect(this.mTop, this.mPaddingTop);
                                    constraintWidget6.mBottom.connect(this.mBottom, this.mPaddingBottom);
                                } else {
                                    constraintWidget6.mTop.connect(constraintWidget5.mTop, 0);
                                    constraintWidget6.mBottom.connect(constraintWidget5.mBottom, 0);
                                }
                            }
                            i19++;
                            constraintWidget4 = constraintWidget6;
                        }
                    }
                    i19++;
                    constraintWidget4 = constraintWidget6;
                }
                return;
            }
            ConstraintWidget constraintWidget7 = this.biggest;
            constraintWidget7.setHorizontalChainStyle(Flow.this.mHorizontalStyle);
            int i23 = this.mPaddingLeft;
            if (i4 > 0) {
                i23 += Flow.this.mHorizontalGap;
            }
            if (z9) {
                constraintWidget7.mRight.connect(this.mRight, i23);
                if (z10) {
                    constraintWidget7.mLeft.connect(this.mLeft, this.mPaddingRight);
                }
                if (i4 > 0) {
                    this.mRight.mOwner.mLeft.connect(constraintWidget7.mRight, 0);
                }
            } else {
                constraintWidget7.mLeft.connect(this.mLeft, i23);
                if (z10) {
                    constraintWidget7.mRight.connect(this.mRight, this.mPaddingRight);
                }
                if (i4 > 0) {
                    this.mLeft.mOwner.mRight.connect(constraintWidget7.mLeft, 0);
                }
            }
            for (int i24 = 0; i24 < i10 && this.mStartIndex + i24 < Flow.this.mDisplayedWidgetsCount; i24++) {
                ConstraintWidget constraintWidget8 = Flow.this.mDisplayedWidgets[this.mStartIndex + i24];
                if (constraintWidget8 != null) {
                    if (i24 == 0) {
                        constraintWidget8.connect(constraintWidget8.mTop, this.mTop, this.mPaddingTop);
                        int i25 = Flow.this.mVerticalStyle;
                        float f13 = Flow.this.mVerticalBias;
                        if (this.mStartIndex == 0 && Flow.this.mFirstVerticalStyle != -1) {
                            i25 = Flow.this.mFirstVerticalStyle;
                            f13 = Flow.this.mFirstVerticalBias;
                        } else if (z10 && Flow.this.mLastVerticalStyle != -1) {
                            i25 = Flow.this.mLastVerticalStyle;
                            f13 = Flow.this.mLastVerticalBias;
                        }
                        constraintWidget8.setVerticalChainStyle(i25);
                        constraintWidget8.setVerticalBiasPercent(f13);
                    }
                    if (i24 == i10 - 1) {
                        constraintWidget8.connect(constraintWidget8.mBottom, this.mBottom, this.mPaddingBottom);
                    }
                    if (constraintWidget4 != null) {
                        constraintWidget8.mTop.connect(constraintWidget4.mBottom, Flow.this.mVerticalGap);
                        if (i24 == i12) {
                            constraintWidget8.mTop.setGoneMargin(this.mPaddingTop);
                        }
                        constraintWidget4.mBottom.connect(constraintWidget8.mTop, 0);
                        if (i24 == i13 + 1) {
                            constraintWidget4.mBottom.setGoneMargin(this.mPaddingBottom);
                        }
                    }
                    if (constraintWidget8 != constraintWidget7) {
                        if (z9) {
                            int i26 = Flow.this.mHorizontalAlign;
                            if (i26 == 0) {
                                constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                            } else if (i26 == 1) {
                                constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                            } else if (i26 == 2) {
                                constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                                constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                            }
                        } else {
                            int i27 = Flow.this.mHorizontalAlign;
                            if (i27 == 0) {
                                constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                            } else if (i27 == 1) {
                                constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                            } else if (i27 == 2) {
                                if (z11) {
                                    constraintWidget8.mLeft.connect(this.mLeft, this.mPaddingLeft);
                                    constraintWidget8.mRight.connect(this.mRight, this.mPaddingRight);
                                } else {
                                    constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                                    constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                                }
                            }
                            constraintWidget4 = constraintWidget8;
                        }
                    }
                    constraintWidget4 = constraintWidget8;
                }
            }
        }

        public int getHeight() {
            if (this.mOrientation == 1) {
                return this.mHeight - Flow.this.mVerticalGap;
            }
            return this.mHeight;
        }

        public int getWidth() {
            if (this.mOrientation == 0) {
                return this.mWidth - Flow.this.mHorizontalGap;
            }
            return this.mWidth;
        }

        public void measureMatchConstraints(int i4) {
            int i10 = this.mNbMatchConstraintsWidgets;
            if (i10 == 0) {
                return;
            }
            int i11 = this.mCount;
            int i12 = i4 / i10;
            for (int i13 = 0; i13 < i11 && this.mStartIndex + i13 < Flow.this.mDisplayedWidgetsCount; i13++) {
                ConstraintWidget constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + i13];
                if (this.mOrientation == 0) {
                    if (constraintWidget != null && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                        Flow.this.measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i12, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                    }
                } else if (constraintWidget != null && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                    Flow.this.measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i12);
                }
            }
            recomputeDimensions();
        }

        public void setStartIndex(int i4) {
            this.mStartIndex = i4;
        }

        public void setup(int i4, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i10, int i11, int i12, int i13, int i14) {
            this.mOrientation = i4;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = i10;
            this.mPaddingTop = i11;
            this.mPaddingRight = i12;
            this.mPaddingBottom = i13;
            this.mMax = i14;
        }
    }

    private void createAlignedConstraints(boolean z9) {
        ConstraintWidget constraintWidget;
        float f10;
        int i4;
        if (this.mAlignedDimensions == null || this.mAlignedBiggestElementsInCols == null || this.mAlignedBiggestElementsInRows == null) {
            return;
        }
        for (int i10 = 0; i10 < this.mDisplayedWidgetsCount; i10++) {
            this.mDisplayedWidgets[i10].resetAnchors();
        }
        int[] iArr = this.mAlignedDimensions;
        int i11 = iArr[0];
        int i12 = iArr[1];
        ConstraintWidget constraintWidget2 = null;
        float f11 = this.mHorizontalBias;
        int i13 = 0;
        while (i13 < i11) {
            if (z9) {
                i4 = (i11 - i13) - 1;
                f10 = 1.0f - this.mHorizontalBias;
            } else {
                f10 = f11;
                i4 = i13;
            }
            ConstraintWidget constraintWidget3 = this.mAlignedBiggestElementsInCols[i4];
            if (constraintWidget3 != null && constraintWidget3.getVisibility() != 8) {
                if (i13 == 0) {
                    constraintWidget3.connect(constraintWidget3.mLeft, this.mLeft, getPaddingLeft());
                    constraintWidget3.setHorizontalChainStyle(this.mHorizontalStyle);
                    constraintWidget3.setHorizontalBiasPercent(f10);
                }
                if (i13 == i11 - 1) {
                    constraintWidget3.connect(constraintWidget3.mRight, this.mRight, getPaddingRight());
                }
                if (i13 > 0 && constraintWidget2 != null) {
                    constraintWidget3.connect(constraintWidget3.mLeft, constraintWidget2.mRight, this.mHorizontalGap);
                    constraintWidget2.connect(constraintWidget2.mRight, constraintWidget3.mLeft, 0);
                }
                constraintWidget2 = constraintWidget3;
            }
            i13++;
            f11 = f10;
        }
        for (int i14 = 0; i14 < i12; i14++) {
            ConstraintWidget constraintWidget4 = this.mAlignedBiggestElementsInRows[i14];
            if (constraintWidget4 != null && constraintWidget4.getVisibility() != 8) {
                if (i14 == 0) {
                    constraintWidget4.connect(constraintWidget4.mTop, this.mTop, getPaddingTop());
                    constraintWidget4.setVerticalChainStyle(this.mVerticalStyle);
                    constraintWidget4.setVerticalBiasPercent(this.mVerticalBias);
                }
                if (i14 == i12 - 1) {
                    constraintWidget4.connect(constraintWidget4.mBottom, this.mBottom, getPaddingBottom());
                }
                if (i14 > 0 && constraintWidget2 != null) {
                    constraintWidget4.connect(constraintWidget4.mTop, constraintWidget2.mBottom, this.mVerticalGap);
                    constraintWidget2.connect(constraintWidget2.mBottom, constraintWidget4.mTop, 0);
                }
                constraintWidget2 = constraintWidget4;
            }
        }
        for (int i15 = 0; i15 < i11; i15++) {
            for (int i16 = 0; i16 < i12; i16++) {
                int i17 = (i16 * i11) + i15;
                if (this.mOrientation == 1) {
                    i17 = (i15 * i12) + i16;
                }
                ConstraintWidget[] constraintWidgetArr = this.mDisplayedWidgets;
                if (i17 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i17]) != null && constraintWidget.getVisibility() != 8) {
                    ConstraintWidget constraintWidget5 = this.mAlignedBiggestElementsInCols[i15];
                    ConstraintWidget constraintWidget6 = this.mAlignedBiggestElementsInRows[i16];
                    if (constraintWidget != constraintWidget5) {
                        constraintWidget.connect(constraintWidget.mLeft, constraintWidget5.mLeft, 0);
                        constraintWidget.connect(constraintWidget.mRight, constraintWidget5.mRight, 0);
                    }
                    if (constraintWidget != constraintWidget6) {
                        constraintWidget.connect(constraintWidget.mTop, constraintWidget6.mTop, 0);
                        constraintWidget.connect(constraintWidget.mBottom, constraintWidget6.mBottom, 0);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getWidgetHeight(ConstraintWidget constraintWidget, int i4) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i10 = constraintWidget.mMatchConstraintDefaultHeight;
            if (i10 == 0) {
                return 0;
            }
            if (i10 == 2) {
                int i11 = (int) (constraintWidget.mMatchConstraintPercentHeight * i4);
                if (i11 != constraintWidget.getHeight()) {
                    constraintWidget.setMeasureRequested(true);
                    measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i11);
                }
                return i11;
            } else if (i10 == 1) {
                return constraintWidget.getHeight();
            } else {
                if (i10 == 3) {
                    return (int) ((constraintWidget.getWidth() * constraintWidget.mDimensionRatio) + 0.5f);
                }
            }
        }
        return constraintWidget.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getWidgetWidth(ConstraintWidget constraintWidget, int i4) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i10 = constraintWidget.mMatchConstraintDefaultWidth;
            if (i10 == 0) {
                return 0;
            }
            if (i10 == 2) {
                int i11 = (int) (constraintWidget.mMatchConstraintPercentWidth * i4);
                if (i11 != constraintWidget.getWidth()) {
                    constraintWidget.setMeasureRequested(true);
                    measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i11, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                }
                return i11;
            } else if (i10 == 1) {
                return constraintWidget.getWidth();
            } else {
                if (i10 == 3) {
                    return (int) ((constraintWidget.getHeight() * constraintWidget.mDimensionRatio) + 0.5f);
                }
            }
        }
        return constraintWidget.getWidth();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0068  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x011b -> B:42:0x0063). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x011d -> B:42:0x0063). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0123 -> B:42:0x0063). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x0125 -> B:42:0x0063). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void measureAligned(androidx.constraintlayout.core.widgets.ConstraintWidget[] r17, int r18, int r19, int r20, int[] r21) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Flow.measureAligned(androidx.constraintlayout.core.widgets.ConstraintWidget[], int, int, int, int[]):void");
    }

    private void measureChainWrap(ConstraintWidget[] constraintWidgetArr, int i4, int i10, int i11, int[] iArr) {
        int i12;
        int i13;
        int i14;
        ConstraintAnchor constraintAnchor;
        int paddingRight;
        ConstraintAnchor constraintAnchor2;
        int paddingBottom;
        int i15;
        if (i4 == 0) {
            return;
        }
        this.mChainList.clear();
        WidgetsList widgetsList = new WidgetsList(i10, this.mLeft, this.mTop, this.mRight, this.mBottom, i11);
        this.mChainList.add(widgetsList);
        if (i10 == 0) {
            i12 = 0;
            int i16 = 0;
            int i17 = 0;
            while (i17 < i4) {
                ConstraintWidget constraintWidget = constraintWidgetArr[i17];
                int widgetWidth = getWidgetWidth(constraintWidget, i11);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i12++;
                }
                int i18 = i12;
                boolean z9 = (i16 == i11 || (this.mHorizontalGap + i16) + widgetWidth > i11) && widgetsList.biggest != null;
                if (!z9 && i17 > 0 && (i15 = this.mMaxElementsWrap) > 0 && i17 % i15 == 0) {
                    z9 = true;
                }
                if (z9) {
                    widgetsList = new WidgetsList(i10, this.mLeft, this.mTop, this.mRight, this.mBottom, i11);
                    widgetsList.setStartIndex(i17);
                    this.mChainList.add(widgetsList);
                } else if (i17 > 0) {
                    i16 += this.mHorizontalGap + widgetWidth;
                    widgetsList.add(constraintWidget);
                    i17++;
                    i12 = i18;
                }
                i16 = widgetWidth;
                widgetsList.add(constraintWidget);
                i17++;
                i12 = i18;
            }
        } else {
            i12 = 0;
            int i19 = 0;
            int i20 = 0;
            while (i20 < i4) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i20];
                int widgetHeight = getWidgetHeight(constraintWidget2, i11);
                if (constraintWidget2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i12++;
                }
                int i21 = i12;
                boolean z10 = (i19 == i11 || (this.mVerticalGap + i19) + widgetHeight > i11) && widgetsList.biggest != null;
                if (!z10 && i20 > 0 && (i13 = this.mMaxElementsWrap) > 0 && i20 % i13 == 0) {
                    z10 = true;
                }
                if (z10) {
                    widgetsList = new WidgetsList(i10, this.mLeft, this.mTop, this.mRight, this.mBottom, i11);
                    widgetsList.setStartIndex(i20);
                    this.mChainList.add(widgetsList);
                } else if (i20 > 0) {
                    i19 += this.mVerticalGap + widgetHeight;
                    widgetsList.add(constraintWidget2);
                    i20++;
                    i12 = i21;
                }
                i19 = widgetHeight;
                widgetsList.add(constraintWidget2);
                i20++;
                i12 = i21;
            }
        }
        int size = this.mChainList.size();
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = this.mTop;
        ConstraintAnchor constraintAnchor5 = this.mRight;
        ConstraintAnchor constraintAnchor6 = this.mBottom;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight2 = getPaddingRight();
        int paddingBottom2 = getPaddingBottom();
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z11 = horizontalDimensionBehaviour == dimensionBehaviour || getVerticalDimensionBehaviour() == dimensionBehaviour;
        if (i12 > 0 && z11) {
            for (int i22 = 0; i22 < size; i22++) {
                WidgetsList widgetsList2 = this.mChainList.get(i22);
                if (i10 == 0) {
                    widgetsList2.measureMatchConstraints(i11 - widgetsList2.getWidth());
                } else {
                    widgetsList2.measureMatchConstraints(i11 - widgetsList2.getHeight());
                }
            }
        }
        int i23 = paddingTop;
        int i24 = paddingRight2;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = paddingLeft;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int i29 = paddingBottom2;
        while (i27 < size) {
            WidgetsList widgetsList3 = this.mChainList.get(i27);
            if (i10 == 0) {
                if (i27 < size - 1) {
                    constraintAnchor2 = this.mChainList.get(i27 + 1).biggest.mTop;
                    paddingBottom = 0;
                } else {
                    constraintAnchor2 = this.mBottom;
                    paddingBottom = getPaddingBottom();
                }
                ConstraintAnchor constraintAnchor9 = widgetsList3.biggest.mBottom;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int i30 = i25;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int i31 = i26;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                i14 = i27;
                widgetsList3.setup(i10, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, i28, i23, i24, paddingBottom, i11);
                int max = Math.max(i31, widgetsList3.getWidth());
                i25 = i30 + widgetsList3.getHeight();
                if (i14 > 0) {
                    i25 += this.mVerticalGap;
                }
                constraintAnchor8 = constraintAnchor11;
                i26 = max;
                constraintAnchor7 = constraintAnchor9;
                i23 = 0;
                constraintAnchor = constraintAnchor14;
                int i32 = paddingBottom;
                constraintAnchor6 = constraintAnchor2;
                i29 = i32;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int i33 = i25;
                int i34 = i26;
                i14 = i27;
                if (i14 < size - 1) {
                    constraintAnchor = this.mChainList.get(i14 + 1).biggest.mLeft;
                    paddingRight = 0;
                } else {
                    constraintAnchor = this.mRight;
                    paddingRight = getPaddingRight();
                }
                ConstraintAnchor constraintAnchor16 = widgetsList3.biggest.mRight;
                widgetsList3.setup(i10, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, i28, i23, paddingRight, i29, i11);
                i26 = i34 + widgetsList3.getWidth();
                int max2 = Math.max(i33, widgetsList3.getHeight());
                if (i14 > 0) {
                    i26 += this.mHorizontalGap;
                }
                i25 = max2;
                i24 = paddingRight;
                constraintAnchor8 = constraintAnchor16;
                i28 = 0;
            }
            i27 = i14 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        iArr[0] = i26;
        iArr[1] = i25;
    }

    private void measureNoWrap(ConstraintWidget[] constraintWidgetArr, int i4, int i10, int i11, int[] iArr) {
        WidgetsList widgetsList;
        if (i4 == 0) {
            return;
        }
        if (this.mChainList.size() == 0) {
            widgetsList = new WidgetsList(i10, this.mLeft, this.mTop, this.mRight, this.mBottom, i11);
            this.mChainList.add(widgetsList);
        } else {
            WidgetsList widgetsList2 = this.mChainList.get(0);
            widgetsList2.clear();
            widgetsList = widgetsList2;
            widgetsList.setup(i10, this.mLeft, this.mTop, this.mRight, this.mBottom, getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom(), i11);
        }
        for (int i12 = 0; i12 < i4; i12++) {
            widgetsList.add(constraintWidgetArr[i12]);
        }
        iArr[0] = widgetsList.getWidth();
        iArr[1] = widgetsList.getHeight();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z9) {
        super.addToSolver(linearSystem, z9);
        boolean z10 = getParent() != null && ((ConstraintWidgetContainer) getParent()).isRtl();
        int i4 = this.mWrapMode;
        if (i4 != 0) {
            if (i4 == 1) {
                int size = this.mChainList.size();
                int i10 = 0;
                while (i10 < size) {
                    this.mChainList.get(i10).createConstraints(z10, i10, i10 == size + (-1));
                    i10++;
                }
            } else if (i4 == 2) {
                createAlignedConstraints(z10);
            }
        } else if (this.mChainList.size() > 0) {
            this.mChainList.get(0).createConstraints(z10, 0, true);
        }
        needsCallbackFromSolver(false);
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.copy(constraintWidget, hashMap);
        Flow flow = (Flow) constraintWidget;
        this.mHorizontalStyle = flow.mHorizontalStyle;
        this.mVerticalStyle = flow.mVerticalStyle;
        this.mFirstHorizontalStyle = flow.mFirstHorizontalStyle;
        this.mFirstVerticalStyle = flow.mFirstVerticalStyle;
        this.mLastHorizontalStyle = flow.mLastHorizontalStyle;
        this.mLastVerticalStyle = flow.mLastVerticalStyle;
        this.mHorizontalBias = flow.mHorizontalBias;
        this.mVerticalBias = flow.mVerticalBias;
        this.mFirstHorizontalBias = flow.mFirstHorizontalBias;
        this.mFirstVerticalBias = flow.mFirstVerticalBias;
        this.mLastHorizontalBias = flow.mLastHorizontalBias;
        this.mLastVerticalBias = flow.mLastVerticalBias;
        this.mHorizontalGap = flow.mHorizontalGap;
        this.mVerticalGap = flow.mVerticalGap;
        this.mHorizontalAlign = flow.mHorizontalAlign;
        this.mVerticalAlign = flow.mVerticalAlign;
        this.mWrapMode = flow.mWrapMode;
        this.mMaxElementsWrap = flow.mMaxElementsWrap;
        this.mOrientation = flow.mOrientation;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0104  */
    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void measure(int r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Flow.measure(int, int, int, int):void");
    }

    public void setFirstHorizontalBias(float f10) {
        this.mFirstHorizontalBias = f10;
    }

    public void setFirstHorizontalStyle(int i4) {
        this.mFirstHorizontalStyle = i4;
    }

    public void setFirstVerticalBias(float f10) {
        this.mFirstVerticalBias = f10;
    }

    public void setFirstVerticalStyle(int i4) {
        this.mFirstVerticalStyle = i4;
    }

    public void setHorizontalAlign(int i4) {
        this.mHorizontalAlign = i4;
    }

    public void setHorizontalBias(float f10) {
        this.mHorizontalBias = f10;
    }

    public void setHorizontalGap(int i4) {
        this.mHorizontalGap = i4;
    }

    public void setHorizontalStyle(int i4) {
        this.mHorizontalStyle = i4;
    }

    public void setLastHorizontalBias(float f10) {
        this.mLastHorizontalBias = f10;
    }

    public void setLastHorizontalStyle(int i4) {
        this.mLastHorizontalStyle = i4;
    }

    public void setLastVerticalBias(float f10) {
        this.mLastVerticalBias = f10;
    }

    public void setLastVerticalStyle(int i4) {
        this.mLastVerticalStyle = i4;
    }

    public void setMaxElementsWrap(int i4) {
        this.mMaxElementsWrap = i4;
    }

    public void setOrientation(int i4) {
        this.mOrientation = i4;
    }

    public void setVerticalAlign(int i4) {
        this.mVerticalAlign = i4;
    }

    public void setVerticalBias(float f10) {
        this.mVerticalBias = f10;
    }

    public void setVerticalGap(int i4) {
        this.mVerticalGap = i4;
    }

    public void setVerticalStyle(int i4) {
        this.mVerticalStyle = i4;
    }

    public void setWrapMode(int i4) {
        this.mWrapMode = i4;
    }
}
