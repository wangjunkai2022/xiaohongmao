.class Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState$a;
.super Ljava/lang/Object;
.source "AutoScrollTextView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;-><init>(Landroid/os/Parcel;Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$a;)V

    return-object v0
.end method

.method public b(I)[Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;
    .locals 0

    new-array p1, p1, [Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState$a;->a(Landroid/os/Parcel;)Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState$a;->b(I)[Lcom/qennnsad/aknkaksd/presentation/ui/room/view/AutoScrollTextView$SavedState;

    move-result-object p1

    return-object p1
.end method