package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class ConstraintHelper extends View {
    protected int mCount;
    protected Helper mHelperWidget;
    protected int[] mIds;
    protected HashMap<Integer, String> mMap;
    protected String mReferenceIds;
    protected String mReferenceTags;
    protected boolean mUseViewMeasure;
    private View[] mViews;
    protected Context myContext;

    public ConstraintHelper(Context context) {
        super(context);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.mViews = null;
        this.mMap = new HashMap<>();
        this.myContext = context;
        init(null);
    }

    private void addID(String idString) {
        if (idString == null || idString.length() == 0 || this.myContext == null) {
            return;
        }
        String trim = idString.trim();
        if (getParent() instanceof ConstraintLayout) {
            ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
        }
        int findId = findId(trim);
        if (findId != 0) {
            this.mMap.put(Integer.valueOf(findId), trim);
            addRscID(findId);
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(trim).length() + 23);
        sb.append("Could not find id of \"");
        sb.append(trim);
        sb.append("\"");
        Log.w("ConstraintHelper", sb.toString());
    }

    private void addRscID(int id) {
        if (id == getId()) {
            return;
        }
        int i4 = this.mCount + 1;
        int[] iArr = this.mIds;
        if (i4 > iArr.length) {
            this.mIds = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.mIds;
        int i10 = this.mCount;
        iArr2[i10] = id;
        this.mCount = i10 + 1;
    }

    private void addTag(String tagString) {
        if (tagString == null || tagString.length() == 0 || this.myContext == null) {
            return;
        }
        String trim = tagString.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = constraintLayout.getChildAt(i4);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.LayoutParams) && trim.equals(((ConstraintLayout.LayoutParams) layoutParams).constraintTag)) {
                if (childAt.getId() == -1) {
                    String simpleName = childAt.getClass().getSimpleName();
                    StringBuilder sb = new StringBuilder(simpleName.length() + 42);
                    sb.append("to use ConstraintTag view ");
                    sb.append(simpleName);
                    sb.append(" must have an ID");
                    Log.w("ConstraintHelper", sb.toString());
                } else {
                    addRscID(childAt.getId());
                }
            }
        }
    }

    private int[] convertReferenceString(View view, String referenceIdString) {
        String[] split = referenceIdString.split(",");
        view.getContext();
        int[] iArr = new int[split.length];
        int i4 = 0;
        for (String str : split) {
            int findId = findId(str.trim());
            if (findId != 0) {
                iArr[i4] = findId;
                i4++;
            }
        }
        return i4 != split.length ? Arrays.copyOf(iArr, i4) : iArr;
    }

    private int findId(String referenceId) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i4 = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object designInformation = constraintLayout.getDesignInformation(0, referenceId);
            if (designInformation instanceof Integer) {
                i4 = ((Integer) designInformation).intValue();
            }
        }
        if (i4 == 0 && constraintLayout != null) {
            i4 = findId(constraintLayout, referenceId);
        }
        if (i4 == 0) {
            try {
                i4 = R.id.class.getField(referenceId).getInt(null);
            } catch (Exception unused) {
            }
        }
        return i4 == 0 ? this.myContext.getResources().getIdentifier(referenceId, "id", this.myContext.getPackageName()) : i4;
    }

    public void addView(View view) {
        if (view == this) {
            return;
        }
        if (view.getId() == -1) {
            Log.e("ConstraintHelper", "Views added to a ConstraintHelper need to have an id");
        } else if (view.getParent() == null) {
            Log.e("ConstraintHelper", "Views added to a ConstraintHelper need to have a parent");
        } else {
            this.mReferenceIds = null;
            addRscID(view.getId());
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void applyLayoutFeatures(ConstraintLayout container) {
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i4 = 0; i4 < this.mCount; i4++) {
            View viewById = container.getViewById(this.mIds[i4]);
            if (viewById != null) {
                viewById.setVisibility(visibility);
                if (elevation > 0.0f) {
                    viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void applyLayoutFeaturesInConstraintSet(ConstraintLayout container) {
    }

    public boolean containsId(final int id) {
        for (int i4 : this.mIds) {
            if (i4 == id) {
                return true;
            }
        }
        return false;
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.mIds, this.mCount);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View[] getViews(ConstraintLayout layout) {
        View[] viewArr = this.mViews;
        if (viewArr == null || viewArr.length != this.mCount) {
            this.mViews = new View[this.mCount];
        }
        for (int i4 = 0; i4 < this.mCount; i4++) {
            this.mViews[i4] = layout.getViewById(this.mIds[i4]);
        }
        return this.mViews;
    }

    public int indexFromId(final int id) {
        int i4 = -1;
        for (int i10 : this.mIds) {
            i4++;
            if (i10 == id) {
                return i4;
            }
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void init(AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i4 = 0; i4 < indexCount; i4++) {
                int index = obtainStyledAttributes.getIndex(i4);
                if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = obtainStyledAttributes.getString(index);
                    this.mReferenceIds = string;
                    setIds(string);
                } else if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.mReferenceTags = string2;
                    setReferenceTags(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void loadParameters(ConstraintSet.Constraint constraint, HelperWidget child, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> mapIdToWidget) {
        ConstraintSet.Layout layout = constraint.layout;
        int[] iArr = layout.mReferenceIds;
        if (iArr != null) {
            setReferencedIds(iArr);
        } else {
            String str = layout.mReferenceIdString;
            if (str != null) {
                if (str.length() > 0) {
                    ConstraintSet.Layout layout2 = constraint.layout;
                    layout2.mReferenceIds = convertReferenceString(this, layout2.mReferenceIdString);
                } else {
                    constraint.layout.mReferenceIds = null;
                }
            }
        }
        if (child == null) {
            return;
        }
        child.removeAllIds();
        if (constraint.layout.mReferenceIds == null) {
            return;
        }
        int i4 = 0;
        while (true) {
            int[] iArr2 = constraint.layout.mReferenceIds;
            if (i4 >= iArr2.length) {
                return;
            }
            ConstraintWidget constraintWidget = mapIdToWidget.get(iArr2[i4]);
            if (constraintWidget != null) {
                child.add(constraintWidget);
            }
            i4++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.mReferenceIds;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.mReferenceTags;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.mUseViewMeasure) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public int removeView(View view) {
        int i4;
        int id = view.getId();
        int i10 = -1;
        if (id == -1) {
            return -1;
        }
        this.mReferenceIds = null;
        int i11 = 0;
        while (true) {
            if (i11 >= this.mCount) {
                break;
            } else if (this.mIds[i11] == id) {
                int i12 = i11;
                while (true) {
                    i4 = this.mCount;
                    if (i12 >= i4 - 1) {
                        break;
                    }
                    int[] iArr = this.mIds;
                    int i13 = i12 + 1;
                    iArr[i12] = iArr[i13];
                    i12 = i13;
                }
                this.mIds[i4 - 1] = 0;
                this.mCount = i4 - 1;
                i10 = i11;
            } else {
                i11++;
            }
        }
        requestLayout();
        return i10;
    }

    public void resolveRtl(ConstraintWidget widget, boolean isRtl) {
    }

    protected void setIds(String idList) {
        this.mReferenceIds = idList;
        if (idList == null) {
            return;
        }
        int i4 = 0;
        this.mCount = 0;
        while (true) {
            int indexOf = idList.indexOf(44, i4);
            if (indexOf == -1) {
                addID(idList.substring(i4));
                return;
            } else {
                addID(idList.substring(i4, indexOf));
                i4 = indexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String tagList) {
        this.mReferenceTags = tagList;
        if (tagList == null) {
            return;
        }
        int i4 = 0;
        this.mCount = 0;
        while (true) {
            int indexOf = tagList.indexOf(44, i4);
            if (indexOf == -1) {
                addTag(tagList.substring(i4));
                return;
            } else {
                addTag(tagList.substring(i4, indexOf));
                i4 = indexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] ids) {
        this.mReferenceIds = null;
        this.mCount = 0;
        for (int i4 : ids) {
            addRscID(i4);
        }
    }

    @Override // android.view.View
    public void setTag(int key, Object tag) {
        super.setTag(key, tag);
        if (tag == null && this.mReferenceIds == null) {
            addRscID(key);
        }
    }

    public void updatePostConstraints(ConstraintLayout container) {
    }

    public void updatePostLayout(ConstraintLayout container) {
    }

    public void updatePostMeasure(ConstraintLayout container) {
    }

    public void updatePreDraw(ConstraintLayout container) {
    }

    public void updatePreLayout(ConstraintLayout container) {
        String str;
        int findId;
        if (isInEditMode()) {
            setIds(this.mReferenceIds);
        }
        Helper helper = this.mHelperWidget;
        if (helper == null) {
            return;
        }
        helper.removeAllIds();
        for (int i4 = 0; i4 < this.mCount; i4++) {
            int i10 = this.mIds[i4];
            View viewById = container.getViewById(i10);
            if (viewById == null && (findId = findId(container, (str = this.mMap.get(Integer.valueOf(i10))))) != 0) {
                this.mIds[i4] = findId;
                this.mMap.put(Integer.valueOf(findId), str);
                viewById = container.getViewById(findId);
            }
            if (viewById != null) {
                this.mHelperWidget.add(container.getViewWidget(viewById));
            }
        }
        this.mHelperWidget.updateConstraints(container.mLayoutWidget);
    }

    public void validateParams() {
        if (this.mHelperWidget == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).widget = (ConstraintWidget) this.mHelperWidget;
        }
    }

    public ConstraintHelper(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.mViews = null;
        this.mMap = new HashMap<>();
        this.myContext = context;
        init(attrs);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void applyLayoutFeatures() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        applyLayoutFeatures((ConstraintLayout) parent);
    }

    private int findId(ConstraintLayout container, String idString) {
        Resources resources;
        if (idString == null || container == null || (resources = this.myContext.getResources()) == null) {
            return 0;
        }
        int childCount = container.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = container.getChildAt(i4);
            if (childAt.getId() != -1) {
                String str = null;
                try {
                    str = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                }
                if (idString.equals(str)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    public ConstraintHelper(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.mViews = null;
        this.mMap = new HashMap<>();
        this.myContext = context;
        init(attrs);
    }

    public void updatePreLayout(ConstraintWidgetContainer container, Helper helper, SparseArray<ConstraintWidget> map) {
        helper.removeAllIds();
        for (int i4 = 0; i4 < this.mCount; i4++) {
            helper.add(map.get(this.mIds[i4]));
        }
    }
}
