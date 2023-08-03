package androidx.constraintlayout.core.widgets;

/* loaded from: classes.dex */
public class Rectangle {
    public int height;
    public int width;

    /* renamed from: x  reason: collision with root package name */
    public int f431x;

    /* renamed from: y  reason: collision with root package name */
    public int f432y;

    public boolean contains(int i4, int i10) {
        int i11;
        int i12 = this.f431x;
        return i4 >= i12 && i4 < i12 + this.width && i10 >= (i11 = this.f432y) && i10 < i11 + this.height;
    }

    public int getCenterX() {
        return (this.f431x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f432y + this.height) / 2;
    }

    void grow(int i4, int i10) {
        this.f431x -= i4;
        this.f432y -= i10;
        this.width += i4 * 2;
        this.height += i10 * 2;
    }

    boolean intersects(Rectangle rectangle) {
        int i4;
        int i10;
        int i11 = this.f431x;
        int i12 = rectangle.f431x;
        return i11 >= i12 && i11 < i12 + rectangle.width && (i4 = this.f432y) >= (i10 = rectangle.f432y) && i4 < i10 + rectangle.height;
    }

    public void setBounds(int i4, int i10, int i11, int i12) {
        this.f431x = i4;
        this.f432y = i10;
        this.width = i11;
        this.height = i12;
    }
}
