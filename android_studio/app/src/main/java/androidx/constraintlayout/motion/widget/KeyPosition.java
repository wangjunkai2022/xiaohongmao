package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;

/* loaded from: classes.dex */
public class KeyPosition extends KeyPositionBase {
    public static final String DRAWPATH = "drawPath";
    static final int KEY_TYPE = 2;
    static final String NAME = "KeyPosition";
    public static final String PERCENT_HEIGHT = "percentHeight";
    public static final String PERCENT_WIDTH = "percentWidth";
    public static final String PERCENT_X = "percentX";
    public static final String PERCENT_Y = "percentY";
    public static final String SIZE_PERCENT = "sizePercent";
    private static final String TAG = "KeyPosition";
    public static final String TRANSITION_EASING = "transitionEasing";
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;
    String mTransitionEasing = null;
    int mPathMotionArc = Key.UNSET;
    int mDrawPath = 0;
    float mPercentWidth = Float.NaN;
    float mPercentHeight = Float.NaN;
    float mPercentX = Float.NaN;
    float mPercentY = Float.NaN;
    float mAltPercentX = Float.NaN;
    float mAltPercentY = Float.NaN;
    int mPositionType = 0;
    private float mCalculatedPositionX = Float.NaN;
    private float mCalculatedPositionY = Float.NaN;

    /* loaded from: classes.dex */
    private static class Loader {
        private static final int CURVE_FIT = 4;
        private static final int DRAW_PATH = 5;
        private static final int FRAME_POSITION = 2;
        private static final int PATH_MOTION_ARC = 10;
        private static final int PERCENT_HEIGHT = 12;
        private static final int PERCENT_WIDTH = 11;
        private static final int PERCENT_X = 6;
        private static final int PERCENT_Y = 7;
        private static final int SIZE_PERCENT = 8;
        private static final int TARGET_ID = 1;
        private static final int TRANSITION_EASING = 3;
        private static final int TYPE = 9;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyPosition_motionTarget, 1);
            mAttrMap.append(R.styleable.KeyPosition_framePosition, 2);
            mAttrMap.append(R.styleable.KeyPosition_transitionEasing, 3);
            mAttrMap.append(R.styleable.KeyPosition_curveFit, 4);
            mAttrMap.append(R.styleable.KeyPosition_drawPath, 5);
            mAttrMap.append(R.styleable.KeyPosition_percentX, 6);
            mAttrMap.append(R.styleable.KeyPosition_percentY, 7);
            mAttrMap.append(R.styleable.KeyPosition_keyPositionType, 9);
            mAttrMap.append(R.styleable.KeyPosition_sizePercent, 8);
            mAttrMap.append(R.styleable.KeyPosition_percentWidth, 11);
            mAttrMap.append(R.styleable.KeyPosition_percentHeight, 12);
            mAttrMap.append(R.styleable.KeyPosition_pathMotionArc, 10);
        }

        private Loader() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void read(KeyPosition c10, TypedArray a10) {
            int indexCount = a10.getIndexCount();
            for (int i4 = 0; i4 < indexCount; i4++) {
                int index = a10.getIndex(i4);
                switch (mAttrMap.get(index)) {
                    case 1:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = a10.getResourceId(index, c10.mTargetId);
                            c10.mTargetId = resourceId;
                            if (resourceId == -1) {
                                c10.mTargetString = a10.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (a10.peekValue(index).type == 3) {
                            c10.mTargetString = a10.getString(index);
                            break;
                        } else {
                            c10.mTargetId = a10.getResourceId(index, c10.mTargetId);
                            break;
                        }
                    case 2:
                        c10.mFramePosition = a10.getInt(index, c10.mFramePosition);
                        break;
                    case 3:
                        if (a10.peekValue(index).type == 3) {
                            c10.mTransitionEasing = a10.getString(index);
                            break;
                        } else {
                            c10.mTransitionEasing = Easing.NAMED_EASING[a10.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        c10.mCurveFit = a10.getInteger(index, c10.mCurveFit);
                        break;
                    case 5:
                        c10.mDrawPath = a10.getInt(index, c10.mDrawPath);
                        break;
                    case 6:
                        c10.mPercentX = a10.getFloat(index, c10.mPercentX);
                        break;
                    case 7:
                        c10.mPercentY = a10.getFloat(index, c10.mPercentY);
                        break;
                    case 8:
                        float f10 = a10.getFloat(index, c10.mPercentHeight);
                        c10.mPercentWidth = f10;
                        c10.mPercentHeight = f10;
                        break;
                    case 9:
                        c10.mPositionType = a10.getInt(index, c10.mPositionType);
                        break;
                    case 10:
                        c10.mPathMotionArc = a10.getInt(index, c10.mPathMotionArc);
                        break;
                    case 11:
                        c10.mPercentWidth = a10.getFloat(index, c10.mPercentWidth);
                        break;
                    case 12:
                        c10.mPercentHeight = a10.getFloat(index, c10.mPercentHeight);
                        break;
                    default:
                        String hexString = Integer.toHexString(index);
                        int i10 = mAttrMap.get(index);
                        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 33);
                        sb.append("unused attribute 0x");
                        sb.append(hexString);
                        sb.append("   ");
                        sb.append(i10);
                        Log.e(TypedValues.Position.NAME, sb.toString());
                        break;
                }
            }
            if (c10.mFramePosition == -1) {
                Log.e(TypedValues.Position.NAME, "no frame position");
            }
        }
    }

    public KeyPosition() {
        this.mType = 2;
    }

    private void calcCartesianPosition(float start_x, float start_y, float end_x, float end_y) {
        float f10 = end_x - start_x;
        float f11 = end_y - start_y;
        float f12 = Float.isNaN(this.mPercentX) ? 0.0f : this.mPercentX;
        float f13 = Float.isNaN(this.mAltPercentY) ? 0.0f : this.mAltPercentY;
        float f14 = Float.isNaN(this.mPercentY) ? 0.0f : this.mPercentY;
        this.mCalculatedPositionX = (int) (start_x + (f12 * f10) + ((Float.isNaN(this.mAltPercentX) ? 0.0f : this.mAltPercentX) * f11));
        this.mCalculatedPositionY = (int) (start_y + (f10 * f13) + (f11 * f14));
    }

    private void calcPathPosition(float start_x, float start_y, float end_x, float end_y) {
        float f10 = end_x - start_x;
        float f11 = end_y - start_y;
        float f12 = this.mPercentX;
        float f13 = this.mPercentY;
        this.mCalculatedPositionX = start_x + (f10 * f12) + ((-f11) * f13);
        this.mCalculatedPositionY = start_y + (f11 * f12) + (f10 * f13);
    }

    private void calcScreenPosition(int layoutWidth, int layoutHeight) {
        float f10 = this.mPercentX;
        float f11 = 0;
        this.mCalculatedPositionX = ((layoutWidth - 0) * f10) + f11;
        this.mCalculatedPositionY = ((layoutHeight - 0) * f10) + f11;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> splines) {
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    void calcPosition(int layoutWidth, int layoutHeight, float start_x, float start_y, float end_x, float end_y) {
        int i4 = this.mPositionType;
        if (i4 == 1) {
            calcPathPosition(start_x, start_y, end_x, end_y);
        } else if (i4 != 2) {
            calcCartesianPosition(start_x, start_y, end_x, end_y);
        } else {
            calcScreenPosition(layoutWidth, layoutHeight);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key src) {
        super.copy(src);
        KeyPosition keyPosition = (KeyPosition) src;
        this.mTransitionEasing = keyPosition.mTransitionEasing;
        this.mPathMotionArc = keyPosition.mPathMotionArc;
        this.mDrawPath = keyPosition.mDrawPath;
        this.mPercentWidth = keyPosition.mPercentWidth;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = keyPosition.mPercentX;
        this.mPercentY = keyPosition.mPercentY;
        this.mAltPercentX = keyPosition.mAltPercentX;
        this.mAltPercentY = keyPosition.mAltPercentY;
        this.mCalculatedPositionX = keyPosition.mCalculatedPositionX;
        this.mCalculatedPositionY = keyPosition.mCalculatedPositionY;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    float getPositionX() {
        return this.mCalculatedPositionX;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    float getPositionY() {
        return this.mCalculatedPositionY;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public boolean intersects(int layoutWidth, int layoutHeight, RectF start, RectF end, float x9, float y9) {
        calcPosition(layoutWidth, layoutHeight, start.centerX(), start.centerY(), end.centerX(), end.centerY());
        return Math.abs(x9 - this.mCalculatedPositionX) < 20.0f && Math.abs(y9 - this.mCalculatedPositionY) < 20.0f;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attrs) {
        Loader.read(this, context.obtainStyledAttributes(attrs, R.styleable.KeyPosition));
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public void positionAttributes(View view, RectF start, RectF end, float x9, float y9, String[] attribute, float[] value) {
        int i4 = this.mPositionType;
        if (i4 == 1) {
            positionPathAttributes(start, end, x9, y9, attribute, value);
        } else if (i4 != 2) {
            positionCartAttributes(start, end, x9, y9, attribute, value);
        } else {
            positionScreenAttributes(view, start, end, x9, y9, attribute, value);
        }
    }

    void positionCartAttributes(RectF start, RectF end, float x9, float y9, String[] attribute, float[] value) {
        float centerX = start.centerX();
        float centerY = start.centerY();
        float centerX2 = end.centerX() - centerX;
        float centerY2 = end.centerY() - centerY;
        if (attribute[0] != null) {
            if ("percentX".equals(attribute[0])) {
                value[0] = (x9 - centerX) / centerX2;
                value[1] = (y9 - centerY) / centerY2;
                return;
            }
            value[1] = (x9 - centerX) / centerX2;
            value[0] = (y9 - centerY) / centerY2;
            return;
        }
        attribute[0] = "percentX";
        value[0] = (x9 - centerX) / centerX2;
        attribute[1] = "percentY";
        value[1] = (y9 - centerY) / centerY2;
    }

    void positionPathAttributes(RectF start, RectF end, float x9, float y9, String[] attribute, float[] value) {
        float centerX = start.centerX();
        float centerY = start.centerY();
        float centerX2 = end.centerX() - centerX;
        float centerY2 = end.centerY() - centerY;
        float hypot = (float) Math.hypot(centerX2, centerY2);
        if (hypot < 1.0E-4d) {
            System.out.println("distance ~ 0");
            value[0] = 0.0f;
            value[1] = 0.0f;
            return;
        }
        float f10 = centerX2 / hypot;
        float f11 = centerY2 / hypot;
        float f12 = y9 - centerY;
        float f13 = x9 - centerX;
        float f14 = ((f10 * f12) - (f13 * f11)) / hypot;
        float f15 = ((f10 * f13) + (f11 * f12)) / hypot;
        if (attribute[0] != null) {
            if ("percentX".equals(attribute[0])) {
                value[0] = f15;
                value[1] = f14;
                return;
            }
            return;
        }
        attribute[0] = "percentX";
        attribute[1] = "percentY";
        value[0] = f15;
        value[1] = f14;
    }

    void positionScreenAttributes(View view, RectF start, RectF end, float x9, float y9, String[] attribute, float[] value) {
        start.centerX();
        start.centerY();
        end.centerX();
        end.centerY();
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int width = viewGroup.getWidth();
        int height = viewGroup.getHeight();
        if (attribute[0] != null) {
            if ("percentX".equals(attribute[0])) {
                value[0] = x9 / width;
                value[1] = y9 / height;
                return;
            }
            value[1] = x9 / width;
            value[0] = y9 / height;
            return;
        }
        attribute[0] = "percentX";
        value[0] = x9 / width;
        attribute[1] = "percentY";
        value[1] = y9 / height;
    }

    public void setType(int type) {
        this.mPositionType = type;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String tag, Object value) {
        tag.hashCode();
        char c10 = 65535;
        switch (tag.hashCode()) {
            case -1812823328:
                if (tag.equals("transitionEasing")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1127236479:
                if (tag.equals("percentWidth")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1017587252:
                if (tag.equals("percentHeight")) {
                    c10 = 2;
                    break;
                }
                break;
            case -827014263:
                if (tag.equals("drawPath")) {
                    c10 = 3;
                    break;
                }
                break;
            case -200259324:
                if (tag.equals("sizePercent")) {
                    c10 = 4;
                    break;
                }
                break;
            case 428090547:
                if (tag.equals("percentX")) {
                    c10 = 5;
                    break;
                }
                break;
            case 428090548:
                if (tag.equals("percentY")) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.mTransitionEasing = value.toString();
                return;
            case 1:
                this.mPercentWidth = toFloat(value);
                return;
            case 2:
                this.mPercentHeight = toFloat(value);
                return;
            case 3:
                this.mDrawPath = toInt(value);
                return;
            case 4:
                float f10 = toFloat(value);
                this.mPercentWidth = f10;
                this.mPercentHeight = f10;
                return;
            case 5:
                this.mPercentX = toFloat(value);
                return;
            case 6:
                this.mPercentY = toFloat(value);
                return;
            default:
                return;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key clone() {
        return new KeyPosition().copy(this);
    }
}
