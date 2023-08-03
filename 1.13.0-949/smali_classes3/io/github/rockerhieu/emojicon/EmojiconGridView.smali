.class public Lio/github/rockerhieu/emojicon/EmojiconGridView;
.super Landroid/widget/GridView;
.source "EmojiconGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;
    }
.end annotation


# instance fields
.field private a:I

.field private b:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

.field private c:Z

.field private d:Lio/github/rockerhieu/emojicon/c$a;

.field private e:Lio/github/rockerhieu/emojicon/b;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/rockerhieu/emojicon/emoji/Emojicon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lio/github/rockerhieu/emojicon/EmojiconGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Lio/github/rockerhieu/emojicon/g$d;->v1:I

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setSaveEnabled(Z)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->f:Ljava/util/List;

    .line 5
    new-instance p2, Lio/github/rockerhieu/emojicon/b;

    iget-object v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->f:Ljava/util/List;

    invoke-direct {p2, p1, v0}, Lio/github/rockerhieu/emojicon/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->e:Lio/github/rockerhieu/emojicon/b;

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public a(I[Lio/github/rockerhieu/emojicon/emoji/Emojicon;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->a:I

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->getEmojicons(I)[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    move-result-object p1

    iput-object p1, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->b:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p2, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->b:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    .line 4
    :goto_0
    iput-boolean p3, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->c:Z

    .line 5
    iget-object p1, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->b:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    iget-object p1, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->f:Ljava/util/List;

    iget-object p2, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->b:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 9
    :goto_1
    iget-object p1, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->e:Lio/github/rockerhieu/emojicon/b;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->d:Lio/github/rockerhieu/emojicon/c$a;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    invoke-interface {p2, p1}, Lio/github/rockerhieu/emojicon/c$a;->i(Lio/github/rockerhieu/emojicon/emoji/Emojicon;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p1, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->type:I

    iput v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->a:I

    .line 6
    iget-object v0, p1, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->data:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    iput-object v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->b:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    .line 7
    iget-boolean v0, p1, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->useSystemDefaults:Z

    iput-boolean v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->c:Z

    .line 8
    iget v0, p1, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->scrollX:I

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setScrollX(I)V

    .line 9
    iget p1, p1, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->scrollY:I

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setScrollY(I)V

    .line 10
    iget p1, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->a:I

    iget-object v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->b:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    iget-boolean v1, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->c:Z

    invoke-virtual {p0, p1, v0, v1}, Lio/github/rockerhieu/emojicon/EmojiconGridView;->a(I[Lio/github/rockerhieu/emojicon/emoji/Emojicon;Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;

    invoke-direct {v1, v0}, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->b:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    iput-object v0, v1, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->data:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    .line 4
    iget v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->a:I

    iput v0, v1, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->type:I

    .line 5
    iget-boolean v0, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->c:Z

    iput-boolean v0, v1, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->useSystemDefaults:Z

    .line 6
    invoke-virtual {p0}, Landroid/widget/GridView;->getScrollX()I

    move-result v0

    iput v0, v1, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->scrollX:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/GridView;->getScrollY()I

    move-result v0

    iput v0, v1, Lio/github/rockerhieu/emojicon/EmojiconGridView$SavedState;->scrollY:I

    return-object v1
.end method

.method public setOnEmojiconClickedListener(Lio/github/rockerhieu/emojicon/c$a;)V
    .locals 0

    iput-object p1, p0, Lio/github/rockerhieu/emojicon/EmojiconGridView;->d:Lio/github/rockerhieu/emojicon/c$a;

    return-void
.end method
