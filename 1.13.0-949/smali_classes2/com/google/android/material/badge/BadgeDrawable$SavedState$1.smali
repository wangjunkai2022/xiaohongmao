.class final Lcom/google/android/material/badge/BadgeDrawable$SavedState$1;
.super Ljava/lang/Object;
.source "BadgeDrawable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/badge/BadgeDrawable$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/badge/BadgeDrawable$SavedState;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-direct {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-array p1, p1, [Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState$1;->newArray(I)[Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    move-result-object p1

    return-object p1
.end method
