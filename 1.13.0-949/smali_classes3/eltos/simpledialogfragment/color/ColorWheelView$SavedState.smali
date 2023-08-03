.class Leltos/simpledialogfragment/color/ColorWheelView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ColorWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/color/ColorWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Leltos/simpledialogfragment/color/ColorWheelView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field saveAlpha:I

.field saveColor:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/color/ColorWheelView$SavedState$a;

    invoke-direct {v0}, Leltos/simpledialogfragment/color/ColorWheelView$SavedState$a;-><init>()V

    sput-object v0, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;->saveColor:[F

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;->saveAlpha:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Leltos/simpledialogfragment/color/ColorWheelView$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;->saveColor:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 3
    iget p2, p0, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;->saveAlpha:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
