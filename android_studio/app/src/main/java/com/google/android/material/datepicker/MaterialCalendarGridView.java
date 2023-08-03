package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import java.util.Calendar;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class MaterialCalendarGridView extends GridView {
    private final Calendar dayCompute;
    private final boolean nestedScrollable;

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    private void gainFocus(int i4, Rect rect) {
        if (i4 == 33) {
            setSelection(getAdapter2().lastPositionInMonth());
        } else if (i4 == 130) {
            setSelection(getAdapter2().firstPositionInMonth());
        } else {
            super.onFocusChanged(true, i4, rect);
        }
    }

    private static int horizontalMidPoint(@NonNull View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    private static boolean skipMonth(@Nullable Long l10, @Nullable Long l11, @Nullable Long l12, @Nullable Long l13) {
        return l10 == null || l11 == null || l12 == null || l13 == null || l12.longValue() > l11.longValue() || l13.longValue() < l10.longValue();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter2().notifyDataSetChanged();
    }

    @Override // android.view.View
    protected final void onDraw(@NonNull Canvas canvas) {
        int dayToPosition;
        int horizontalMidPoint;
        int dayToPosition2;
        int horizontalMidPoint2;
        int width;
        int i4;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        MonthAdapter adapter2 = getAdapter2();
        DateSelector<?> dateSelector = adapter2.dateSelector;
        CalendarStyle calendarStyle = adapter2.calendarStyle;
        Long item = adapter2.getItem(adapter2.firstPositionInMonth());
        Long item2 = adapter2.getItem(adapter2.lastPositionInMonth());
        for (Pair<Long, Long> pair : dateSelector.getSelectedRanges()) {
            Long l10 = pair.first;
            if (l10 != null) {
                if (pair.second != null) {
                    long longValue = l10.longValue();
                    long longValue2 = pair.second.longValue();
                    if (!skipMonth(item, item2, Long.valueOf(longValue), Long.valueOf(longValue2))) {
                        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
                        if (longValue < item.longValue()) {
                            dayToPosition = adapter2.firstPositionInMonth();
                            if (adapter2.isFirstInRow(dayToPosition)) {
                                horizontalMidPoint = 0;
                            } else if (!isLayoutRtl) {
                                horizontalMidPoint = materialCalendarGridView.getChildAt(dayToPosition - 1).getRight();
                            } else {
                                horizontalMidPoint = materialCalendarGridView.getChildAt(dayToPosition - 1).getLeft();
                            }
                        } else {
                            materialCalendarGridView.dayCompute.setTimeInMillis(longValue);
                            dayToPosition = adapter2.dayToPosition(materialCalendarGridView.dayCompute.get(5));
                            horizontalMidPoint = horizontalMidPoint(materialCalendarGridView.getChildAt(dayToPosition));
                        }
                        if (longValue2 > item2.longValue()) {
                            dayToPosition2 = Math.min(adapter2.lastPositionInMonth(), getChildCount() - 1);
                            if (adapter2.isLastInRow(dayToPosition2)) {
                                horizontalMidPoint2 = getWidth();
                            } else if (!isLayoutRtl) {
                                horizontalMidPoint2 = materialCalendarGridView.getChildAt(dayToPosition2).getRight();
                            } else {
                                horizontalMidPoint2 = materialCalendarGridView.getChildAt(dayToPosition2).getLeft();
                            }
                        } else {
                            materialCalendarGridView.dayCompute.setTimeInMillis(longValue2);
                            dayToPosition2 = adapter2.dayToPosition(materialCalendarGridView.dayCompute.get(5));
                            horizontalMidPoint2 = horizontalMidPoint(materialCalendarGridView.getChildAt(dayToPosition2));
                        }
                        int itemId = (int) adapter2.getItemId(dayToPosition);
                        int itemId2 = (int) adapter2.getItemId(dayToPosition2);
                        while (itemId <= itemId2) {
                            int numColumns = getNumColumns() * itemId;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View childAt = materialCalendarGridView.getChildAt(numColumns);
                            int top = childAt.getTop() + calendarStyle.day.getTopInset();
                            int bottom = childAt.getBottom() - calendarStyle.day.getBottomInset();
                            if (!isLayoutRtl) {
                                i4 = numColumns > dayToPosition ? 0 : horizontalMidPoint;
                                width = dayToPosition2 > numColumns2 ? getWidth() : horizontalMidPoint2;
                            } else {
                                int i10 = dayToPosition2 > numColumns2 ? 0 : horizontalMidPoint2;
                                width = numColumns > dayToPosition ? getWidth() : horizontalMidPoint;
                                i4 = i10;
                            }
                            canvas.drawRect(i4, top, width, bottom, calendarStyle.rangeFill);
                            itemId++;
                            materialCalendarGridView = this;
                            adapter2 = adapter2;
                        }
                    }
                }
            }
            materialCalendarGridView = this;
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z9, int i4, Rect rect) {
        if (z9) {
            gainFocus(i4, rect);
        } else {
            super.onFocusChanged(false, i4, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (super.onKeyDown(i4, keyEvent)) {
            if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter2().firstPositionInMonth()) {
                return true;
            }
            if (19 == i4) {
                setSelection(getAdapter2().firstPositionInMonth());
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i4, int i10) {
        if (this.nestedScrollable) {
            super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
            getLayoutParams().height = getMeasuredHeight();
            return;
        }
        super.onMeasure(i4, i10);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i4) {
        if (i4 < getAdapter2().firstPositionInMonth()) {
            super.setSelection(getAdapter2().firstPositionInMonth());
        } else {
            super.setSelection(i4);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof MonthAdapter) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), MonthAdapter.class.getCanonicalName()));
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.dayCompute = UtcDates.getUtcCalendar();
        if (MaterialDatePicker.isFullscreen(getContext())) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.nestedScrollable = MaterialDatePicker.isNestedScrollable(getContext());
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegateCompat() { // from class: com.google.android.material.datepicker.MaterialCalendarGridView.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCollectionInfo(null);
            }
        });
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    @NonNull
    /* renamed from: getAdapter */
    public ListAdapter getAdapter2() {
        return (MonthAdapter) super.getAdapter();
    }
}
