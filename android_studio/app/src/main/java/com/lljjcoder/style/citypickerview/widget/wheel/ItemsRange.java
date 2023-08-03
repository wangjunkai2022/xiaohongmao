package com.lljjcoder.style.citypickerview.widget.wheel;

/* loaded from: classes3.dex */
public class ItemsRange {
    private int count;
    private int first;

    public ItemsRange() {
        this(0, 0);
    }

    public boolean contains(int i4) {
        return i4 >= getFirst() && i4 <= getLast();
    }

    public int getCount() {
        return this.count;
    }

    public int getFirst() {
        return this.first;
    }

    public int getLast() {
        return (getFirst() + getCount()) - 1;
    }

    public ItemsRange(int i4, int i10) {
        this.first = i4;
        this.count = i10;
    }
}
