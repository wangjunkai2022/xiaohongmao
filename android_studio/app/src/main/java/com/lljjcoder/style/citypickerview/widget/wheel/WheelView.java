package com.lljjcoder.style.citypickerview.widget.wheel;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.lljjcoder.style.citypickerview.R;
import com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller;
import com.lljjcoder.style.citypickerview.widget.wheel.adapters.WheelViewAdapter;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class WheelView extends View {
    private static final int DEF_VISIBLE_ITEMS = 5;
    private static final int ITEM_OFFSET_PERCENT = 0;
    private static final int PADDING = 5;
    private int[] SHADOWS_COLORS;
    private GradientDrawable bottomShadow;
    private Drawable centerDrawable;
    private List<OnWheelChangedListener> changingListeners;
    private List<OnWheelClickedListener> clickingListeners;
    private int currentItem;
    private DataSetObserver dataObserver;
    private boolean drawShadows;
    private int firstItem;
    boolean isCyclic;
    private boolean isScrollingPerformed;
    private int itemHeight;
    private LinearLayout itemsLayout;
    private String lineColorStr;
    private int lineWidth;
    private WheelRecycle recycle;
    private WheelScroller scroller;
    WheelScroller.ScrollingListener scrollingListener;
    private List<OnWheelScrollListener> scrollingListeners;
    private int scrollingOffset;
    private GradientDrawable topShadow;
    private WheelViewAdapter viewAdapter;
    private int visibleItems;
    private int wheelBackground;
    private int wheelForeground;

    public WheelView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.SHADOWS_COLORS = new int[]{-268830215, -805701127, 1073347065};
        this.currentItem = 0;
        this.visibleItems = 5;
        this.itemHeight = 0;
        this.wheelBackground = R.drawable.wheel_bg;
        this.wheelForeground = R.drawable.wheel_val;
        this.drawShadows = true;
        this.isCyclic = false;
        this.recycle = new WheelRecycle(this);
        this.changingListeners = new LinkedList();
        this.scrollingListeners = new LinkedList();
        this.clickingListeners = new LinkedList();
        this.lineColorStr = "#C7C7C7";
        this.lineWidth = 3;
        this.scrollingListener = new WheelScroller.ScrollingListener() { // from class: com.lljjcoder.style.citypickerview.widget.wheel.WheelView.1
            @Override // com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.ScrollingListener
            public void onFinished() {
                if (WheelView.this.isScrollingPerformed) {
                    WheelView.this.notifyScrollingListenersAboutEnd();
                    WheelView.this.isScrollingPerformed = false;
                }
                WheelView.this.scrollingOffset = 0;
                WheelView.this.invalidate();
            }

            @Override // com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.ScrollingListener
            public void onJustify() {
                if (Math.abs(WheelView.this.scrollingOffset) > 1) {
                    WheelView.this.scroller.scroll(WheelView.this.scrollingOffset, 0);
                }
            }

            @Override // com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.ScrollingListener
            public void onScroll(int i10) {
                WheelView.this.doScroll(i10);
                int height = WheelView.this.getHeight();
                if (WheelView.this.scrollingOffset > height) {
                    WheelView.this.scrollingOffset = height;
                    WheelView.this.scroller.stopScrolling();
                    return;
                }
                int i11 = -height;
                if (WheelView.this.scrollingOffset < i11) {
                    WheelView.this.scrollingOffset = i11;
                    WheelView.this.scroller.stopScrolling();
                }
            }

            @Override // com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.ScrollingListener
            public void onStarted() {
                WheelView.this.isScrollingPerformed = true;
                WheelView.this.notifyScrollingListenersAboutStart();
            }
        };
        this.dataObserver = new DataSetObserver() { // from class: com.lljjcoder.style.citypickerview.widget.wheel.WheelView.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                WheelView.this.invalidateWheel(false);
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                WheelView.this.invalidateWheel(true);
            }
        };
        initData(context);
    }

    private boolean addViewItem(int i4, boolean z9) {
        View itemView = getItemView(i4);
        if (itemView != null) {
            if (z9) {
                this.itemsLayout.addView(itemView, 0);
                return true;
            }
            this.itemsLayout.addView(itemView);
            return true;
        }
        return false;
    }

    private void buildViewForMeasuring() {
        LinearLayout linearLayout = this.itemsLayout;
        if (linearLayout != null) {
            this.recycle.recycleItems(linearLayout, this.firstItem, new ItemsRange());
        } else {
            createItemsLayout();
        }
        int i4 = this.visibleItems / 2;
        for (int i10 = this.currentItem + i4; i10 >= this.currentItem - i4; i10--) {
            if (addViewItem(i10, true)) {
                this.firstItem = i10;
            }
        }
    }

    private int calculateLayoutWidth(int i4, int i10) {
        initResourcesIfNecessary();
        this.itemsLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        this.itemsLayout.measure(View.MeasureSpec.makeMeasureSpec(i4, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = this.itemsLayout.getMeasuredWidth();
        if (i10 != 1073741824) {
            int max = Math.max(measuredWidth + 10, getSuggestedMinimumWidth());
            if (i10 != Integer.MIN_VALUE || i4 >= max) {
                i4 = max;
            }
        }
        this.itemsLayout.measure(View.MeasureSpec.makeMeasureSpec(i4 - 10, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        return i4;
    }

    private void createItemsLayout() {
        if (this.itemsLayout == null) {
            LinearLayout linearLayout = new LinearLayout(getContext());
            this.itemsLayout = linearLayout;
            linearLayout.setOrientation(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doScroll(int i4) {
        this.scrollingOffset += i4;
        int itemHeight = getItemHeight();
        int i10 = this.scrollingOffset / itemHeight;
        int i11 = this.currentItem - i10;
        int itemsCount = this.viewAdapter.getItemsCount();
        int i12 = this.scrollingOffset % itemHeight;
        if (Math.abs(i12) <= itemHeight / 2) {
            i12 = 0;
        }
        if (this.isCyclic && itemsCount > 0) {
            if (i12 > 0) {
                i11--;
                i10++;
            } else if (i12 < 0) {
                i11++;
                i10--;
            }
            while (i11 < 0) {
                i11 += itemsCount;
            }
            i11 %= itemsCount;
        } else if (i11 < 0) {
            i10 = this.currentItem;
            i11 = 0;
        } else if (i11 >= itemsCount) {
            i10 = (this.currentItem - itemsCount) + 1;
            i11 = itemsCount - 1;
        } else if (i11 > 0 && i12 > 0) {
            i11--;
            i10++;
        } else if (i11 < itemsCount - 1 && i12 < 0) {
            i11++;
            i10--;
        }
        int i13 = this.scrollingOffset;
        if (i11 != this.currentItem) {
            setCurrentItem(i11, false);
        } else {
            invalidate();
        }
        int i14 = i13 - (i10 * itemHeight);
        this.scrollingOffset = i14;
        if (i14 > getHeight()) {
            this.scrollingOffset = (this.scrollingOffset % getHeight()) + getHeight();
        }
    }

    private void drawCenterRect(Canvas canvas) {
        int height = getHeight() / 2;
        int itemHeight = (int) ((getItemHeight() / 2) * 1.2d);
        Paint paint = new Paint();
        if (getLineColorStr().startsWith("#")) {
            paint.setColor(Color.parseColor(getLineColorStr()));
        } else {
            paint.setColor(Color.parseColor("#" + getLineColorStr()));
        }
        if (getLineWidth() > 3) {
            paint.setStrokeWidth(getLineWidth());
        } else {
            paint.setStrokeWidth(3.0f);
        }
        float f10 = height - itemHeight;
        canvas.drawLine(0.0f, f10, getWidth(), f10, paint);
        float f11 = height + itemHeight;
        canvas.drawLine(0.0f, f11, getWidth(), f11, paint);
    }

    private void drawItems(Canvas canvas) {
        canvas.save();
        canvas.translate(5.0f, (-(((this.currentItem - this.firstItem) * getItemHeight()) + ((getItemHeight() - getHeight()) / 2))) + this.scrollingOffset);
        this.itemsLayout.draw(canvas);
        canvas.restore();
    }

    private int getDesiredHeight(LinearLayout linearLayout) {
        if (linearLayout != null && linearLayout.getChildAt(0) != null) {
            this.itemHeight = linearLayout.getChildAt(0).getMeasuredHeight();
        }
        int i4 = this.itemHeight;
        return Math.max((this.visibleItems * i4) - ((i4 * 0) / 50), getSuggestedMinimumHeight());
    }

    private int getItemHeight() {
        int i4 = this.itemHeight;
        if (i4 != 0) {
            return i4;
        }
        LinearLayout linearLayout = this.itemsLayout;
        if (linearLayout != null && linearLayout.getChildAt(0) != null) {
            int height = this.itemsLayout.getChildAt(0).getHeight();
            this.itemHeight = height;
            return height;
        }
        return getHeight() / this.visibleItems;
    }

    private View getItemView(int i4) {
        WheelViewAdapter wheelViewAdapter = this.viewAdapter;
        if (wheelViewAdapter == null || wheelViewAdapter.getItemsCount() == 0) {
            return null;
        }
        int itemsCount = this.viewAdapter.getItemsCount();
        if (!isValidItemIndex(i4)) {
            return this.viewAdapter.getEmptyItem(this.recycle.getEmptyItem(), this.itemsLayout);
        }
        while (i4 < 0) {
            i4 += itemsCount;
        }
        return this.viewAdapter.getItem(i4 % itemsCount, this.recycle.getItem(), this.itemsLayout);
    }

    private ItemsRange getItemsRange() {
        if (getItemHeight() == 0) {
            return null;
        }
        int i4 = this.currentItem;
        int i10 = 1;
        while (getItemHeight() * i10 < getHeight()) {
            i4--;
            i10 += 2;
        }
        int i11 = this.scrollingOffset;
        if (i11 != 0) {
            if (i11 > 0) {
                i4--;
            }
            int itemHeight = i11 / getItemHeight();
            i4 -= itemHeight;
            i10 = (int) (i10 + 1 + Math.asin(itemHeight));
        }
        return new ItemsRange(i4, i10);
    }

    private void initData(Context context) {
        this.scroller = new WheelScroller(getContext(), this.scrollingListener);
    }

    private void initResourcesIfNecessary() {
        if (this.centerDrawable == null) {
            this.centerDrawable = getContext().getResources().getDrawable(this.wheelForeground);
        }
        if (this.topShadow == null) {
            this.topShadow = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, this.SHADOWS_COLORS);
        }
        if (this.bottomShadow == null) {
            this.bottomShadow = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, this.SHADOWS_COLORS);
        }
        setBackgroundResource(this.wheelBackground);
    }

    private boolean isValidItemIndex(int i4) {
        WheelViewAdapter wheelViewAdapter = this.viewAdapter;
        return wheelViewAdapter != null && wheelViewAdapter.getItemsCount() > 0 && (this.isCyclic || (i4 >= 0 && i4 < this.viewAdapter.getItemsCount()));
    }

    private void layout(int i4, int i10) {
        this.itemsLayout.layout(0, 0, i4 - 10, i10);
    }

    private boolean rebuildItems() {
        boolean z9;
        ItemsRange itemsRange = getItemsRange();
        LinearLayout linearLayout = this.itemsLayout;
        if (linearLayout != null) {
            int recycleItems = this.recycle.recycleItems(linearLayout, this.firstItem, itemsRange);
            z9 = this.firstItem != recycleItems;
            this.firstItem = recycleItems;
        } else {
            createItemsLayout();
            z9 = true;
        }
        if (!z9) {
            z9 = (this.firstItem == itemsRange.getFirst() && this.itemsLayout.getChildCount() == itemsRange.getCount()) ? false : true;
        }
        if (this.firstItem > itemsRange.getFirst() && this.firstItem <= itemsRange.getLast()) {
            for (int i4 = this.firstItem - 1; i4 >= itemsRange.getFirst() && addViewItem(i4, true); i4--) {
                this.firstItem = i4;
            }
        } else {
            this.firstItem = itemsRange.getFirst();
        }
        int i10 = this.firstItem;
        for (int childCount = this.itemsLayout.getChildCount(); childCount < itemsRange.getCount(); childCount++) {
            if (!addViewItem(this.firstItem + childCount, false) && this.itemsLayout.getChildCount() == 0) {
                i10++;
            }
        }
        this.firstItem = i10;
        return z9;
    }

    private void updateView() {
        if (rebuildItems()) {
            calculateLayoutWidth(getWidth(), 1073741824);
            layout(getWidth(), getHeight());
        }
    }

    public void addChangingListener(OnWheelChangedListener onWheelChangedListener) {
        this.changingListeners.add(onWheelChangedListener);
    }

    public void addClickingListener(OnWheelClickedListener onWheelClickedListener) {
        this.clickingListeners.add(onWheelClickedListener);
    }

    public void addScrollingListener(OnWheelScrollListener onWheelScrollListener) {
        this.scrollingListeners.add(onWheelScrollListener);
    }

    public boolean drawShadows() {
        return this.drawShadows;
    }

    public int getCurrentItem() {
        return this.currentItem;
    }

    public String getLineColorStr() {
        String str = this.lineColorStr;
        return str == null ? "" : str;
    }

    public int getLineWidth() {
        return this.lineWidth;
    }

    public WheelViewAdapter getViewAdapter() {
        return this.viewAdapter;
    }

    public int getVisibleItems() {
        return this.visibleItems;
    }

    public void invalidateWheel(boolean z9) {
        if (z9) {
            this.recycle.clearAll();
            LinearLayout linearLayout = this.itemsLayout;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
            }
            this.scrollingOffset = 0;
        } else {
            LinearLayout linearLayout2 = this.itemsLayout;
            if (linearLayout2 != null) {
                this.recycle.recycleItems(linearLayout2, this.firstItem, new ItemsRange());
            }
        }
        invalidate();
    }

    public boolean isCyclic() {
        return this.isCyclic;
    }

    protected void notifyChangingListeners(int i4, int i10) {
        for (OnWheelChangedListener onWheelChangedListener : this.changingListeners) {
            onWheelChangedListener.onChanged(this, i4, i10);
        }
    }

    protected void notifyClickListenersAboutClick(int i4) {
        for (OnWheelClickedListener onWheelClickedListener : this.clickingListeners) {
            onWheelClickedListener.onItemClicked(this, i4);
        }
    }

    protected void notifyScrollingListenersAboutEnd() {
        for (OnWheelScrollListener onWheelScrollListener : this.scrollingListeners) {
            onWheelScrollListener.onScrollingFinished(this);
        }
    }

    protected void notifyScrollingListenersAboutStart() {
        for (OnWheelScrollListener onWheelScrollListener : this.scrollingListeners) {
            onWheelScrollListener.onScrollingStarted(this);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        WheelViewAdapter wheelViewAdapter = this.viewAdapter;
        if (wheelViewAdapter != null && wheelViewAdapter.getItemsCount() > 0) {
            updateView();
            drawItems(canvas);
            drawCenterRect(canvas);
        }
        if (this.drawShadows) {
            drawShadows(canvas);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        layout(i11 - i4, i12 - i10);
    }

    @Override // android.view.View
    protected void onMeasure(int i4, int i10) {
        int mode = View.MeasureSpec.getMode(i4);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i4);
        int size2 = View.MeasureSpec.getSize(i10);
        buildViewForMeasuring();
        int calculateLayoutWidth = calculateLayoutWidth(size, mode);
        if (mode2 != 1073741824) {
            int desiredHeight = getDesiredHeight(this.itemsLayout);
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(desiredHeight, size2) : desiredHeight;
        }
        setMeasuredDimension(calculateLayoutWidth, size2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int itemHeight;
        if (!isEnabled() || getViewAdapter() == null) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2 && getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
        } else if (!this.isScrollingPerformed) {
            int y9 = ((int) motionEvent.getY()) - (getHeight() / 2);
            if (y9 > 0) {
                itemHeight = y9 + (getItemHeight() / 2);
            } else {
                itemHeight = y9 - (getItemHeight() / 2);
            }
            int itemHeight2 = itemHeight / getItemHeight();
            if (itemHeight2 != 0 && isValidItemIndex(this.currentItem + itemHeight2)) {
                notifyClickListenersAboutClick(this.currentItem + itemHeight2);
            }
        }
        return this.scroller.onTouchEvent(motionEvent);
    }

    public void removeChangingListener(OnWheelChangedListener onWheelChangedListener) {
        this.changingListeners.remove(onWheelChangedListener);
    }

    public void removeClickingListener(OnWheelClickedListener onWheelClickedListener) {
        this.clickingListeners.remove(onWheelClickedListener);
    }

    public void removeScrollingListener(OnWheelScrollListener onWheelScrollListener) {
        this.scrollingListeners.remove(onWheelScrollListener);
    }

    public void scroll(int i4, int i10) {
        this.scroller.scroll((i4 * getItemHeight()) - this.scrollingOffset, i10);
    }

    public void setCurrentItem(int i4, boolean z9) {
        int min;
        WheelViewAdapter wheelViewAdapter = this.viewAdapter;
        if (wheelViewAdapter == null || wheelViewAdapter.getItemsCount() == 0) {
            return;
        }
        int itemsCount = this.viewAdapter.getItemsCount();
        if (i4 < 0 || i4 >= itemsCount) {
            if (!this.isCyclic) {
                return;
            }
            while (i4 < 0) {
                i4 += itemsCount;
            }
            i4 %= itemsCount;
        }
        int i10 = this.currentItem;
        if (i4 != i10) {
            if (z9) {
                int i11 = i4 - i10;
                if (this.isCyclic && (min = (itemsCount + Math.min(i4, i10)) - Math.max(i4, this.currentItem)) < Math.abs(i11)) {
                    i11 = i11 < 0 ? min : -min;
                }
                scroll(i11, 0);
                return;
            }
            this.scrollingOffset = 0;
            this.currentItem = i4;
            notifyChangingListeners(i10, i4);
            invalidate();
        }
    }

    public void setCyclic(boolean z9) {
        this.isCyclic = z9;
        invalidateWheel(false);
    }

    public void setDrawShadows(boolean z9) {
        this.drawShadows = z9;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.scroller.setInterpolator(interpolator);
    }

    public void setLineColorStr(String str) {
        this.lineColorStr = str;
    }

    public void setLineWidth(int i4) {
        this.lineWidth = i4;
    }

    public void setShadowColor(int i4, int i10, int i11) {
        this.SHADOWS_COLORS = new int[]{i4, i10, i11};
    }

    public void setViewAdapter(WheelViewAdapter wheelViewAdapter) {
        WheelViewAdapter wheelViewAdapter2 = this.viewAdapter;
        if (wheelViewAdapter2 != null) {
            wheelViewAdapter2.unregisterDataSetObserver(this.dataObserver);
        }
        this.viewAdapter = wheelViewAdapter;
        if (wheelViewAdapter != null) {
            wheelViewAdapter.registerDataSetObserver(this.dataObserver);
        }
        invalidateWheel(true);
    }

    public void setVisibleItems(int i4) {
        this.visibleItems = i4;
    }

    public void setWheelBackground(int i4) {
        this.wheelBackground = i4;
        setBackgroundResource(i4);
    }

    public void setWheelForeground(int i4) {
        this.wheelForeground = i4;
        this.centerDrawable = getContext().getResources().getDrawable(this.wheelForeground);
    }

    public void stopScrolling() {
        this.scroller.stopScrolling();
    }

    private void drawShadows(Canvas canvas) {
        int visibleItems = (getVisibleItems() == 2 ? 1 : getVisibleItems() / 2) * getItemHeight();
        this.topShadow.setBounds(0, 0, getWidth(), visibleItems);
        this.topShadow.draw(canvas);
        this.bottomShadow.setBounds(0, getHeight() - visibleItems, getWidth(), getHeight());
        this.bottomShadow.draw(canvas);
    }

    public void setCurrentItem(int i4) {
        setCurrentItem(i4, false);
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.SHADOWS_COLORS = new int[]{-268830215, -805701127, 1073347065};
        this.currentItem = 0;
        this.visibleItems = 5;
        this.itemHeight = 0;
        this.wheelBackground = R.drawable.wheel_bg;
        this.wheelForeground = R.drawable.wheel_val;
        this.drawShadows = true;
        this.isCyclic = false;
        this.recycle = new WheelRecycle(this);
        this.changingListeners = new LinkedList();
        this.scrollingListeners = new LinkedList();
        this.clickingListeners = new LinkedList();
        this.lineColorStr = "#C7C7C7";
        this.lineWidth = 3;
        this.scrollingListener = new WheelScroller.ScrollingListener() { // from class: com.lljjcoder.style.citypickerview.widget.wheel.WheelView.1
            @Override // com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.ScrollingListener
            public void onFinished() {
                if (WheelView.this.isScrollingPerformed) {
                    WheelView.this.notifyScrollingListenersAboutEnd();
                    WheelView.this.isScrollingPerformed = false;
                }
                WheelView.this.scrollingOffset = 0;
                WheelView.this.invalidate();
            }

            @Override // com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.ScrollingListener
            public void onJustify() {
                if (Math.abs(WheelView.this.scrollingOffset) > 1) {
                    WheelView.this.scroller.scroll(WheelView.this.scrollingOffset, 0);
                }
            }

            @Override // com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.ScrollingListener
            public void onScroll(int i10) {
                WheelView.this.doScroll(i10);
                int height = WheelView.this.getHeight();
                if (WheelView.this.scrollingOffset > height) {
                    WheelView.this.scrollingOffset = height;
                    WheelView.this.scroller.stopScrolling();
                    return;
                }
                int i11 = -height;
                if (WheelView.this.scrollingOffset < i11) {
                    WheelView.this.scrollingOffset = i11;
                    WheelView.this.scroller.stopScrolling();
                }
            }

            @Override // com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.ScrollingListener
            public void onStarted() {
                WheelView.this.isScrollingPerformed = true;
                WheelView.this.notifyScrollingListenersAboutStart();
            }
        };
        this.dataObserver = new DataSetObserver() { // from class: com.lljjcoder.style.citypickerview.widget.wheel.WheelView.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                WheelView.this.invalidateWheel(false);
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                WheelView.this.invalidateWheel(true);
            }
        };
        initData(context);
    }

    public WheelView(Context context) {
        super(context);
        this.SHADOWS_COLORS = new int[]{-268830215, -805701127, 1073347065};
        this.currentItem = 0;
        this.visibleItems = 5;
        this.itemHeight = 0;
        this.wheelBackground = R.drawable.wheel_bg;
        this.wheelForeground = R.drawable.wheel_val;
        this.drawShadows = true;
        this.isCyclic = false;
        this.recycle = new WheelRecycle(this);
        this.changingListeners = new LinkedList();
        this.scrollingListeners = new LinkedList();
        this.clickingListeners = new LinkedList();
        this.lineColorStr = "#C7C7C7";
        this.lineWidth = 3;
        this.scrollingListener = new WheelScroller.ScrollingListener() { // from class: com.lljjcoder.style.citypickerview.widget.wheel.WheelView.1
            @Override // com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.ScrollingListener
            public void onFinished() {
                if (WheelView.this.isScrollingPerformed) {
                    WheelView.this.notifyScrollingListenersAboutEnd();
                    WheelView.this.isScrollingPerformed = false;
                }
                WheelView.this.scrollingOffset = 0;
                WheelView.this.invalidate();
            }

            @Override // com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.ScrollingListener
            public void onJustify() {
                if (Math.abs(WheelView.this.scrollingOffset) > 1) {
                    WheelView.this.scroller.scroll(WheelView.this.scrollingOffset, 0);
                }
            }

            @Override // com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.ScrollingListener
            public void onScroll(int i10) {
                WheelView.this.doScroll(i10);
                int height = WheelView.this.getHeight();
                if (WheelView.this.scrollingOffset > height) {
                    WheelView.this.scrollingOffset = height;
                    WheelView.this.scroller.stopScrolling();
                    return;
                }
                int i11 = -height;
                if (WheelView.this.scrollingOffset < i11) {
                    WheelView.this.scrollingOffset = i11;
                    WheelView.this.scroller.stopScrolling();
                }
            }

            @Override // com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.ScrollingListener
            public void onStarted() {
                WheelView.this.isScrollingPerformed = true;
                WheelView.this.notifyScrollingListenersAboutStart();
            }
        };
        this.dataObserver = new DataSetObserver() { // from class: com.lljjcoder.style.citypickerview.widget.wheel.WheelView.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                WheelView.this.invalidateWheel(false);
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                WheelView.this.invalidateWheel(true);
            }
        };
        initData(context);
    }
}
