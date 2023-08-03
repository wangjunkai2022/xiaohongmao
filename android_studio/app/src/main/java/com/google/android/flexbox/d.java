package com.google.android.flexbox;

import android.view.View;
import java.util.List;

/* compiled from: FlexContainer.java */
/* loaded from: classes2.dex */
interface d {
    public static final int L0 = -1;

    void a(View view, int index, int indexInFlexLine, f flexLine);

    void addView(View view);

    void addView(View view, int index);

    int b(int widthSpec, int padding, int childDimension);

    View c(int index);

    int d(int heightSpec, int padding, int childDimension);

    int e(View view);

    void f(f flexLine);

    View g(int index);

    int getAlignContent();

    int getAlignItems();

    int getFlexDirection();

    int getFlexItemCount();

    List<f> getFlexLines();

    List<f> getFlexLinesInternal();

    int getFlexWrap();

    int getJustifyContent();

    int getLargestMainSize();

    int getMaxLine();

    int getPaddingBottom();

    int getPaddingEnd();

    int getPaddingLeft();

    int getPaddingRight();

    int getPaddingStart();

    int getPaddingTop();

    int getSumOfCrossSize();

    void h(int position, View view);

    int i(View view, int index, int indexInFlexLine);

    boolean j();

    void removeAllViews();

    void removeViewAt(int index);

    void setAlignContent(int alignContent);

    void setAlignItems(int alignItems);

    void setFlexDirection(int flexDirection);

    void setFlexLines(List<f> flexLines);

    void setFlexWrap(int flexWrap);

    void setJustifyContent(int justifyContent);

    void setMaxLine(int maxLine);
}
