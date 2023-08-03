package com.lljjcoder.style.citypickerview.widget.wheel.adapters;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* loaded from: classes3.dex */
public abstract class AbstractWheelTextAdapter extends AbstractWheelAdapter {
    public static final int DEFAULT_TEXT_COLOR = -10987432;
    public static final int DEFAULT_TEXT_SIZE = 18;
    public static final int LABEL_COLOR = -9437072;
    protected static final int NO_RESOURCE = 0;
    public static final int TEXT_VIEW_ITEM_RESOURCE = -1;
    protected Context context;
    protected int emptyItemResourceId;
    protected LayoutInflater inflater;
    protected int itemResourceId;
    protected int itemTextResourceId;
    private int padding;
    private int textColor;
    private int textSize;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractWheelTextAdapter(Context context) {
        this(context, -1);
    }

    private TextView getTextView(View view, int i4) {
        if (i4 == 0) {
            try {
                if (view instanceof TextView) {
                    return (TextView) view;
                }
            } catch (ClassCastException e4) {
                Log.e("AbstractWheelAdapter", "You must supply a resource ID for a TextView");
                throw new IllegalStateException("AbstractWheelAdapter requires the resource ID to be a TextView", e4);
            }
        }
        if (i4 != 0) {
            return (TextView) view.findViewById(i4);
        }
        return null;
    }

    private View getView(int i4, ViewGroup viewGroup) {
        if (i4 != -1) {
            if (i4 != 0) {
                return this.inflater.inflate(i4, viewGroup, false);
            }
            return null;
        }
        return new TextView(this.context);
    }

    protected void configureTextView(TextView textView) {
        textView.setTextColor(this.textColor);
        textView.setGravity(17);
        int i4 = this.padding;
        textView.setPadding(0, i4, 0, i4);
        textView.setTextSize(this.textSize);
    }

    @Override // com.lljjcoder.style.citypickerview.widget.wheel.adapters.AbstractWheelAdapter, com.lljjcoder.style.citypickerview.widget.wheel.adapters.WheelViewAdapter
    public View getEmptyItem(View view, ViewGroup viewGroup) {
        if (view == null) {
            view = getView(this.emptyItemResourceId, viewGroup);
        }
        if (this.emptyItemResourceId == -1 && (view instanceof TextView)) {
            configureTextView((TextView) view);
        }
        return view;
    }

    public int getEmptyItemResource() {
        return this.emptyItemResourceId;
    }

    @Override // com.lljjcoder.style.citypickerview.widget.wheel.adapters.WheelViewAdapter
    public View getItem(int i4, View view, ViewGroup viewGroup) {
        if (i4 < 0 || i4 >= getItemsCount()) {
            return null;
        }
        if (view == null) {
            view = getView(this.itemResourceId, viewGroup);
        }
        TextView textView = getTextView(view, this.itemTextResourceId);
        if (textView != null) {
            CharSequence itemText = getItemText(i4);
            if (itemText == null) {
                itemText = "";
            }
            textView.setText(itemText);
            if (this.itemResourceId == -1) {
                configureTextView(textView);
            }
        }
        return view;
    }

    public int getItemResource() {
        return this.itemResourceId;
    }

    protected abstract CharSequence getItemText(int i4);

    public int getItemTextResource() {
        return this.itemTextResourceId;
    }

    public int getPadding() {
        return this.padding;
    }

    public int getTextColor() {
        return this.textColor;
    }

    public int getTextSize() {
        return this.textSize;
    }

    public void setEmptyItemResource(int i4) {
        this.emptyItemResourceId = i4;
    }

    public void setItemResource(int i4) {
        this.itemResourceId = i4;
    }

    public void setItemTextResource(int i4) {
        this.itemTextResourceId = i4;
    }

    public void setPadding(int i4) {
        this.padding = i4;
    }

    public void setTextColor(int i4) {
        this.textColor = i4;
    }

    public void setTextSize(int i4) {
        this.textSize = i4;
    }

    protected AbstractWheelTextAdapter(Context context, int i4) {
        this(context, i4, 0);
    }

    protected AbstractWheelTextAdapter(Context context, int i4, int i10) {
        this.textColor = -10987432;
        this.textSize = 18;
        this.padding = 5;
        this.context = context;
        this.itemResourceId = i4;
        this.itemTextResourceId = i10;
        this.inflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }
}
