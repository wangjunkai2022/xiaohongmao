.class public Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "EmojiconGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/rockerhieu/emojicon/EmojiconGridView;
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
            "Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field data:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

.field scrollX:I

.field scrollY:I

.field type:I

.field useSystemDefaults:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState$a;

    invoke-direct {v0}, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState$a;-><init>()V

    sput-object v0, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->type:I

    .line 5
    const-class v0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    iput-object v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->data:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->useSystemDefaults:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->scrollX:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->scrollY:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lio/github/rockerhieu/emojicon/EmojiconGridView$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;-><init>(Landroid/os/Parcel;)V

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
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->data:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 4
    iget-boolean p2, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->useSystemDefaults:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->scrollX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->scrollY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
