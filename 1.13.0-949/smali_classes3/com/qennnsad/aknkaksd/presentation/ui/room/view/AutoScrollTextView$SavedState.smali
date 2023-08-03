.class public Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AutoScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isStarting:Z

.field public step:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState$a;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState$a;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;->isStarting:Z

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;->step:F

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;->step:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;->isStarting:Z

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;->step:F

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 p2, 0x1

    new-array p2, p2, [Z

    .line 2
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;->isStarting:Z

    const/4 v1, 0x0

    aput-boolean v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 3
    iget p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;->step:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
