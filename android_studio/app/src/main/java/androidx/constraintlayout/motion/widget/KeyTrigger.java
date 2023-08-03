package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes.dex */
public class KeyTrigger extends Key {
    public static final String CROSS = "CROSS";
    public static final int KEY_TYPE = 5;
    static final String NAME = "KeyTrigger";
    public static final String NEGATIVE_CROSS = "negativeCross";
    public static final String POSITIVE_CROSS = "positiveCross";
    public static final String POST_LAYOUT = "postLayout";
    private static final String TAG = "KeyTrigger";
    public static final String TRIGGER_COLLISION_ID = "triggerCollisionId";
    public static final String TRIGGER_COLLISION_VIEW = "triggerCollisionView";
    public static final String TRIGGER_ID = "triggerID";
    public static final String TRIGGER_RECEIVER = "triggerReceiver";
    public static final String TRIGGER_SLACK = "triggerSlack";
    public static final String VIEW_TRANSITION_ON_CROSS = "viewTransitionOnCross";
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = "viewTransitionOnNegativeCross";
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = "viewTransitionOnPositiveCross";
    RectF mCollisionRect;
    private boolean mFireCrossReset;
    private float mFireLastPos;
    private boolean mFireNegativeReset;
    private boolean mFirePositiveReset;
    private float mFireThreshold;
    HashMap<String, Method> mMethodHashMap;
    private String mNegativeCross;
    private String mPositiveCross;
    private boolean mPostLayout;
    RectF mTargetRect;
    private int mTriggerCollisionId;
    private View mTriggerCollisionView;
    private int mTriggerID;
    private int mTriggerReceiver;
    float mTriggerSlack;
    int mViewTransitionOnCross;
    int mViewTransitionOnNegativeCross;
    int mViewTransitionOnPositiveCross;
    private int mCurveFit = -1;
    private String mCross = null;

    /* loaded from: classes.dex */
    private static class Loader {
        private static final int COLLISION = 9;
        private static final int CROSS = 4;
        private static final int FRAME_POS = 8;
        private static final int NEGATIVE_CROSS = 1;
        private static final int POSITIVE_CROSS = 2;
        private static final int POST_LAYOUT = 10;
        private static final int TARGET_ID = 7;
        private static final int TRIGGER_ID = 6;
        private static final int TRIGGER_RECEIVER = 11;
        private static final int TRIGGER_SLACK = 5;
        private static final int VT_CROSS = 12;
        private static final int VT_NEGATIVE_CROSS = 13;
        private static final int VT_POSITIVE_CROSS = 14;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTrigger_framePosition, 8);
            mAttrMap.append(R.styleable.KeyTrigger_onCross, 4);
            mAttrMap.append(R.styleable.KeyTrigger_onNegativeCross, 1);
            mAttrMap.append(R.styleable.KeyTrigger_onPositiveCross, 2);
            mAttrMap.append(R.styleable.KeyTrigger_motionTarget, 7);
            mAttrMap.append(R.styleable.KeyTrigger_triggerId, 6);
            mAttrMap.append(R.styleable.KeyTrigger_triggerSlack, 5);
            mAttrMap.append(R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            mAttrMap.append(R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            mAttrMap.append(R.styleable.KeyTrigger_triggerReceiver, 11);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnCross, 12);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        private Loader() {
        }

        public static void read(KeyTrigger c10, TypedArray a10, Context context) {
            int indexCount = a10.getIndexCount();
            for (int i4 = 0; i4 < indexCount; i4++) {
                int index = a10.getIndex(i4);
                switch (mAttrMap.get(index)) {
                    case 1:
                        c10.mNegativeCross = a10.getString(index);
                        break;
                    case 2:
                        c10.mPositiveCross = a10.getString(index);
                        break;
                    case 3:
                    default:
                        String hexString = Integer.toHexString(index);
                        int i10 = mAttrMap.get(index);
                        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 33);
                        sb.append("unused attribute 0x");
                        sb.append(hexString);
                        sb.append("   ");
                        sb.append(i10);
                        Log.e(TypedValues.Trigger.NAME, sb.toString());
                        break;
                    case 4:
                        c10.mCross = a10.getString(index);
                        break;
                    case 5:
                        c10.mTriggerSlack = a10.getFloat(index, c10.mTriggerSlack);
                        break;
                    case 6:
                        c10.mTriggerID = a10.getResourceId(index, c10.mTriggerID);
                        break;
                    case 7:
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
                    case 8:
                        int integer = a10.getInteger(index, c10.mFramePosition);
                        c10.mFramePosition = integer;
                        c10.mFireThreshold = (integer + 0.5f) / 100.0f;
                        break;
                    case 9:
                        c10.mTriggerCollisionId = a10.getResourceId(index, c10.mTriggerCollisionId);
                        break;
                    case 10:
                        c10.mPostLayout = a10.getBoolean(index, c10.mPostLayout);
                        break;
                    case 11:
                        c10.mTriggerReceiver = a10.getResourceId(index, c10.mTriggerReceiver);
                        break;
                    case 12:
                        c10.mViewTransitionOnCross = a10.getResourceId(index, c10.mViewTransitionOnCross);
                        break;
                    case 13:
                        c10.mViewTransitionOnNegativeCross = a10.getResourceId(index, c10.mViewTransitionOnNegativeCross);
                        break;
                    case 14:
                        c10.mViewTransitionOnPositiveCross = a10.getResourceId(index, c10.mViewTransitionOnPositiveCross);
                        break;
                }
            }
        }
    }

    public KeyTrigger() {
        int i4 = Key.UNSET;
        this.mTriggerReceiver = i4;
        this.mNegativeCross = null;
        this.mPositiveCross = null;
        this.mTriggerID = i4;
        this.mTriggerCollisionId = i4;
        this.mTriggerCollisionView = null;
        this.mTriggerSlack = 0.1f;
        this.mFireCrossReset = true;
        this.mFireNegativeReset = true;
        this.mFirePositiveReset = true;
        this.mFireThreshold = Float.NaN;
        this.mPostLayout = false;
        this.mViewTransitionOnNegativeCross = i4;
        this.mViewTransitionOnPositiveCross = i4;
        this.mViewTransitionOnCross = i4;
        this.mCollisionRect = new RectF();
        this.mTargetRect = new RectF();
        this.mMethodHashMap = new HashMap<>();
        this.mType = 5;
        this.mCustomConstraints = new HashMap<>();
    }

    private void fire(String str, View call) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(".")) {
            fireCustom(str, call);
            return;
        }
        if (this.mMethodHashMap.containsKey(str)) {
            method = this.mMethodHashMap.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = call.getClass().getMethod(str, new Class[0]);
                this.mMethodHashMap.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.mMethodHashMap.put(str, null);
                String simpleName = call.getClass().getSimpleName();
                String name = Debug.getName(call);
                StringBuilder sb = new StringBuilder(str.length() + 34 + simpleName.length() + String.valueOf(name).length());
                sb.append("Could not find method \"");
                sb.append(str);
                sb.append("\"on class ");
                sb.append(simpleName);
                sb.append(" ");
                sb.append(name);
                Log.e(TypedValues.Trigger.NAME, sb.toString());
                return;
            }
        }
        try {
            method.invoke(call, new Object[0]);
        } catch (Exception unused2) {
            String str2 = this.mCross;
            String simpleName2 = call.getClass().getSimpleName();
            String name2 = Debug.getName(call);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 30 + simpleName2.length() + String.valueOf(name2).length());
            sb2.append("Exception in call \"");
            sb2.append(str2);
            sb2.append("\"on class ");
            sb2.append(simpleName2);
            sb2.append(" ");
            sb2.append(name2);
            Log.e(TypedValues.Trigger.NAME, sb2.toString());
        }
    }

    private void fireCustom(String str, View view) {
        boolean z9 = str.length() == 1;
        if (!z9) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.mCustomConstraints.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z9 || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.applyCustom(view);
                }
            }
        }
    }

    private void setUpRect(RectF rect, View child, boolean postLayout) {
        rect.top = child.getTop();
        rect.bottom = child.getBottom();
        rect.left = child.getLeft();
        rect.right = child.getRight();
        if (postLayout) {
            child.getMatrix().mapRect(rect);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> splines) {
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void conditionallyFire(float r10, android.view.View r11) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTrigger.conditionallyFire(float, android.view.View):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key src) {
        super.copy(src);
        KeyTrigger keyTrigger = (KeyTrigger) src;
        this.mCurveFit = keyTrigger.mCurveFit;
        this.mCross = keyTrigger.mCross;
        this.mTriggerReceiver = keyTrigger.mTriggerReceiver;
        this.mNegativeCross = keyTrigger.mNegativeCross;
        this.mPositiveCross = keyTrigger.mPositiveCross;
        this.mTriggerID = keyTrigger.mTriggerID;
        this.mTriggerCollisionId = keyTrigger.mTriggerCollisionId;
        this.mTriggerCollisionView = keyTrigger.mTriggerCollisionView;
        this.mTriggerSlack = keyTrigger.mTriggerSlack;
        this.mFireCrossReset = keyTrigger.mFireCrossReset;
        this.mFireNegativeReset = keyTrigger.mFireNegativeReset;
        this.mFirePositiveReset = keyTrigger.mFirePositiveReset;
        this.mFireThreshold = keyTrigger.mFireThreshold;
        this.mFireLastPos = keyTrigger.mFireLastPos;
        this.mPostLayout = keyTrigger.mPostLayout;
        this.mCollisionRect = keyTrigger.mCollisionRect;
        this.mTargetRect = keyTrigger.mTargetRect;
        this.mMethodHashMap = keyTrigger.mMethodHashMap;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> attributes) {
    }

    int getCurveFit() {
        return this.mCurveFit;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attrs) {
        Loader.read(this, context.obtainStyledAttributes(attrs, R.styleable.KeyTrigger), context);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String tag, Object value) {
        tag.hashCode();
        char c10 = 65535;
        switch (tag.hashCode()) {
            case -1594793529:
                if (tag.equals("positiveCross")) {
                    c10 = 0;
                    break;
                }
                break;
            case -966421266:
                if (tag.equals("viewTransitionOnPositiveCross")) {
                    c10 = 1;
                    break;
                }
                break;
            case -786670827:
                if (tag.equals("triggerCollisionId")) {
                    c10 = 2;
                    break;
                }
                break;
            case -648752941:
                if (tag.equals("triggerID")) {
                    c10 = 3;
                    break;
                }
                break;
            case -638126837:
                if (tag.equals("negativeCross")) {
                    c10 = 4;
                    break;
                }
                break;
            case -76025313:
                if (tag.equals("triggerCollisionView")) {
                    c10 = 5;
                    break;
                }
                break;
            case -9754574:
                if (tag.equals("viewTransitionOnNegativeCross")) {
                    c10 = 6;
                    break;
                }
                break;
            case 64397344:
                if (tag.equals("CROSS")) {
                    c10 = 7;
                    break;
                }
                break;
            case 364489912:
                if (tag.equals("triggerSlack")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1301930599:
                if (tag.equals("viewTransitionOnCross")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1401391082:
                if (tag.equals("postLayout")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1535404999:
                if (tag.equals("triggerReceiver")) {
                    c10 = 11;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.mPositiveCross = value.toString();
                return;
            case 1:
                this.mViewTransitionOnPositiveCross = toInt(value);
                return;
            case 2:
                this.mTriggerCollisionId = toInt(value);
                return;
            case 3:
                this.mTriggerID = toInt(value);
                return;
            case 4:
                this.mNegativeCross = value.toString();
                return;
            case 5:
                this.mTriggerCollisionView = (View) value;
                return;
            case 6:
                this.mViewTransitionOnNegativeCross = toInt(value);
                return;
            case 7:
                this.mCross = value.toString();
                return;
            case '\b':
                this.mTriggerSlack = toFloat(value);
                return;
            case '\t':
                this.mViewTransitionOnCross = toInt(value);
                return;
            case '\n':
                this.mPostLayout = toBoolean(value);
                return;
            case 11:
                this.mTriggerReceiver = toInt(value);
                return;
            default:
                return;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key clone() {
        return new KeyTrigger().copy(this);
    }
}
