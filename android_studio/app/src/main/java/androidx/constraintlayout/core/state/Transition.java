package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.Motion;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import com.facebook.common.statfs.StatFsHelper;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class Transition {
    static final int ANTICIPATE = 6;
    static final int BOUNCE = 4;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    public static final int END = 1;
    public static final int INTERPOLATED = 2;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    private static final int SPLINE_STRING = -1;
    public static final int START = 0;
    private HashMap<String, WidgetState> state = new HashMap<>();
    HashMap<Integer, HashMap<String, KeyPosition>> keyPositions = new HashMap<>();
    private int pathMotionArc = -1;
    private int mDefaultInterpolator = 0;
    private String mDefaultInterpolatorString = null;
    private int mAutoTransition = 0;
    private int mDuration = StatFsHelper.f11024h;
    private float mStagger = 0.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class KeyPosition {
        int frame;
        String target;
        int type;

        /* renamed from: x  reason: collision with root package name */
        float f421x;

        /* renamed from: y  reason: collision with root package name */
        float f422y;

        public KeyPosition(String str, int i4, int i10, float f10, float f11) {
            this.target = str;
            this.frame = i4;
            this.type = i10;
            this.f421x = f10;
            this.f422y = f11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class WidgetState {
        Motion motionControl;
        KeyCache myKeyCache = new KeyCache();
        int myParentHeight = -1;
        int myParentWidth = -1;
        WidgetFrame start = new WidgetFrame();
        WidgetFrame end = new WidgetFrame();
        WidgetFrame interpolated = new WidgetFrame();
        MotionWidget motionWidgetStart = new MotionWidget(this.start);
        MotionWidget motionWidgetEnd = new MotionWidget(this.end);
        MotionWidget motionWidgetInterpolated = new MotionWidget(this.interpolated);

        public WidgetState() {
            Motion motion = new Motion(this.motionWidgetStart);
            this.motionControl = motion;
            motion.setStart(this.motionWidgetStart);
            this.motionControl.setEnd(this.motionWidgetEnd);
        }

        public WidgetFrame getFrame(int i4) {
            if (i4 == 0) {
                return this.start;
            }
            if (i4 == 1) {
                return this.end;
            }
            return this.interpolated;
        }

        public void interpolate(int i4, int i10, float f10, Transition transition) {
            this.myParentHeight = i10;
            this.myParentWidth = i4;
            this.motionControl.setup(i4, i10, 1.0f, System.nanoTime());
            WidgetFrame.interpolate(i4, i10, this.interpolated, this.start, this.end, transition, f10);
            this.interpolated.interpolatedPos = f10;
            this.motionControl.interpolate(this.motionWidgetInterpolated, f10, System.nanoTime(), this.myKeyCache);
        }

        public void setKeyAttribute(TypedBundle typedBundle) {
            MotionKeyAttributes motionKeyAttributes = new MotionKeyAttributes();
            typedBundle.applyDelta(motionKeyAttributes);
            this.motionControl.addKey(motionKeyAttributes);
        }

        public void setKeyCycle(TypedBundle typedBundle) {
            MotionKeyCycle motionKeyCycle = new MotionKeyCycle();
            typedBundle.applyDelta(motionKeyCycle);
            this.motionControl.addKey(motionKeyCycle);
        }

        public void setKeyPosition(TypedBundle typedBundle) {
            MotionKeyPosition motionKeyPosition = new MotionKeyPosition();
            typedBundle.applyDelta(motionKeyPosition);
            this.motionControl.addKey(motionKeyPosition);
        }

        public void update(ConstraintWidget constraintWidget, int i4) {
            if (i4 == 0) {
                this.start.update(constraintWidget);
                this.motionControl.setStart(this.motionWidgetStart);
            } else if (i4 == 1) {
                this.end.update(constraintWidget);
                this.motionControl.setEnd(this.motionWidgetEnd);
            }
            this.myParentWidth = -1;
        }
    }

    private WidgetState getWidgetState(String str) {
        return this.state.get(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$0(String str, float f10) {
        return (float) Easing.getInterpolator(str).get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$1(float f10) {
        return (float) Easing.getInterpolator("standard").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$2(float f10) {
        return (float) Easing.getInterpolator("accelerate").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$3(float f10) {
        return (float) Easing.getInterpolator("decelerate").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$4(float f10) {
        return (float) Easing.getInterpolator("linear").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$5(float f10) {
        return (float) Easing.getInterpolator("anticipate").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$6(float f10) {
        return (float) Easing.getInterpolator("overshoot").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$7(float f10) {
        return (float) Easing.getInterpolator("spline(0.0, 0.2, 0.4, 0.6, 0.8 ,1.0, 0.8, 1.0, 0.9, 1.0)").get(f10);
    }

    public void addCustomColor(int i4, String str, String str2, int i10) {
        getWidgetState(str, null, i4).getFrame(i4).addCustomColor(str2, i10);
    }

    public void addCustomFloat(int i4, String str, String str2, float f10) {
        getWidgetState(str, null, i4).getFrame(i4).addCustomFloat(str2, f10);
    }

    public void addKeyAttribute(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyAttribute(typedBundle);
    }

    public void addKeyCycle(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyCycle(typedBundle);
    }

    public void addKeyPosition(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyPosition(typedBundle);
    }

    public void clear() {
        this.state.clear();
    }

    public boolean contains(String str) {
        return this.state.containsKey(str);
    }

    public void fillKeyPositions(WidgetFrame widgetFrame, float[] fArr, float[] fArr2, float[] fArr3) {
        KeyPosition keyPosition;
        int i4 = 0;
        for (int i10 = 0; i10 <= 100; i10++) {
            HashMap<String, KeyPosition> hashMap = this.keyPositions.get(Integer.valueOf(i10));
            if (hashMap != null && (keyPosition = hashMap.get(widgetFrame.widget.stringId)) != null) {
                fArr[i4] = keyPosition.f421x;
                fArr2[i4] = keyPosition.f422y;
                fArr3[i4] = keyPosition.frame;
                i4++;
            }
        }
    }

    public KeyPosition findNextPosition(String str, int i4) {
        KeyPosition keyPosition;
        while (i4 <= 100) {
            HashMap<String, KeyPosition> hashMap = this.keyPositions.get(Integer.valueOf(i4));
            if (hashMap != null && (keyPosition = hashMap.get(str)) != null) {
                return keyPosition;
            }
            i4++;
        }
        return null;
    }

    public KeyPosition findPreviousPosition(String str, int i4) {
        KeyPosition keyPosition;
        while (i4 >= 0) {
            HashMap<String, KeyPosition> hashMap = this.keyPositions.get(Integer.valueOf(i4));
            if (hashMap != null && (keyPosition = hashMap.get(str)) != null) {
                return keyPosition;
            }
            i4--;
        }
        return null;
    }

    public int getAutoTransition() {
        return this.mAutoTransition;
    }

    public WidgetFrame getEnd(String str) {
        WidgetState widgetState = this.state.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.end;
    }

    public WidgetFrame getInterpolated(String str) {
        WidgetState widgetState = this.state.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.interpolated;
    }

    public Interpolator getInterpolator() {
        return getInterpolator(this.mDefaultInterpolator, this.mDefaultInterpolatorString);
    }

    public int getKeyFrames(String str, float[] fArr, int[] iArr, int[] iArr2) {
        return this.state.get(str).motionControl.buildKeyFrames(fArr, iArr, iArr2);
    }

    public Motion getMotion(String str) {
        return getWidgetState(str, null, 0).motionControl;
    }

    public int getNumberKeyPositions(WidgetFrame widgetFrame) {
        int i4 = 0;
        for (int i10 = 0; i10 <= 100; i10++) {
            HashMap<String, KeyPosition> hashMap = this.keyPositions.get(Integer.valueOf(i10));
            if (hashMap != null && hashMap.get(widgetFrame.widget.stringId) != null) {
                i4++;
            }
        }
        return i4;
    }

    public float[] getPath(String str) {
        float[] fArr = new float[124];
        this.state.get(str).motionControl.buildPath(fArr, 62);
        return fArr;
    }

    public WidgetFrame getStart(String str) {
        WidgetState widgetState = this.state.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.start;
    }

    public boolean hasPositionKeyframes() {
        return this.keyPositions.size() > 0;
    }

    public void interpolate(int i4, int i10, float f10) {
        for (String str : this.state.keySet()) {
            this.state.get(str).interpolate(i4, i10, f10, this);
        }
    }

    public boolean isEmpty() {
        return this.state.isEmpty();
    }

    public void setTransitionProperties(TypedBundle typedBundle) {
        this.pathMotionArc = typedBundle.getInteger(509);
        this.mAutoTransition = typedBundle.getInteger(TypedValues.Transition.TYPE_AUTO_TRANSITION);
    }

    public void updateFrom(ConstraintWidgetContainer constraintWidgetContainer, int i4) {
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget = children.get(i10);
            getWidgetState(constraintWidget.stringId, null, i4).update(constraintWidget, i4);
        }
    }

    public static Interpolator getInterpolator(int i4, final String str) {
        switch (i4) {
            case -1:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.a
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$0;
                        lambda$getInterpolator$0 = Transition.lambda$getInterpolator$0(str, f10);
                        return lambda$getInterpolator$0;
                    }
                };
            case 0:
                return d.f426a;
            case 1:
                return e.f427a;
            case 2:
                return b.f424a;
            case 3:
                return c.f425a;
            case 4:
                return f.f428a;
            case 5:
                return h.f430a;
            case 6:
                return g.f429a;
            default:
                return null;
        }
    }

    private WidgetState getWidgetState(String str, ConstraintWidget constraintWidget, int i4) {
        WidgetState widgetState = this.state.get(str);
        if (widgetState == null) {
            widgetState = new WidgetState();
            int i10 = this.pathMotionArc;
            if (i10 != -1) {
                widgetState.motionControl.setPathMotionArc(i10);
            }
            this.state.put(str, widgetState);
            if (constraintWidget != null) {
                widgetState.update(constraintWidget, i4);
            }
        }
        return widgetState;
    }

    public void addKeyPosition(String str, int i4, int i10, float f10, float f11) {
        TypedBundle typedBundle = new TypedBundle();
        typedBundle.add(TypedValues.Position.TYPE_POSITION_TYPE, 2);
        typedBundle.add(100, i4);
        typedBundle.add(TypedValues.Position.TYPE_PERCENT_X, f10);
        typedBundle.add(TypedValues.Position.TYPE_PERCENT_Y, f11);
        getWidgetState(str, null, 0).setKeyPosition(typedBundle);
        KeyPosition keyPosition = new KeyPosition(str, i4, i10, f10, f11);
        HashMap<String, KeyPosition> hashMap = this.keyPositions.get(Integer.valueOf(i4));
        if (hashMap == null) {
            hashMap = new HashMap<>();
            this.keyPositions.put(Integer.valueOf(i4), hashMap);
        }
        hashMap.put(str, keyPosition);
    }

    public WidgetFrame getEnd(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 1).end;
    }

    public WidgetFrame getInterpolated(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 2).interpolated;
    }

    public WidgetFrame getStart(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 0).start;
    }
}
