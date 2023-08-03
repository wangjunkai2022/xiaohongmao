.class Lio/github/rockerhieu/emojicon/b;
.super Landroid/widget/ArrayAdapter;
.source "EmojiconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/rockerhieu/emojicon/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lio/github/rockerhieu/emojicon/emoji/Emojicon;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/github/rockerhieu/emojicon/emoji/Emojicon;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lio/github/rockerhieu/emojicon/g$m;->E:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/github/rockerhieu/emojicon/b;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/github/rockerhieu/emojicon/emoji/Emojicon;",
            ">;Z)V"
        }
    .end annotation

    .line 3
    sget v0, Lio/github/rockerhieu/emojicon/g$m;->E:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4
    iput-boolean p3, p0, Lio/github/rockerhieu/emojicon/b;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lio/github/rockerhieu/emojicon/emoji/Emojicon;)V
    .locals 1

    .line 5
    sget v0, Lio/github/rockerhieu/emojicon/g$m;->E:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lio/github/rockerhieu/emojicon/b;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lio/github/rockerhieu/emojicon/emoji/Emojicon;Z)V
    .locals 1

    .line 7
    sget v0, Lio/github/rockerhieu/emojicon/g$m;->E:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 8
    iput-boolean p3, p0, Lio/github/rockerhieu/emojicon/b;->a:Z

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lio/github/rockerhieu/emojicon/g$m;->E:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lio/github/rockerhieu/emojicon/b$a;

    invoke-direct {p3}, Lio/github/rockerhieu/emojicon/b$a;-><init>()V

    .line 3
    sget v0, Lio/github/rockerhieu/emojicon/g$j;->v0:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/widget/EmojiTextView;

    iput-object v0, p3, Lio/github/rockerhieu/emojicon/b$a;->a:Landroidx/emoji2/widget/EmojiTextView;

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/github/rockerhieu/emojicon/b$a;

    .line 7
    iget-object p3, p3, Lio/github/rockerhieu/emojicon/b$a;->a:Landroidx/emoji2/widget/EmojiTextView;

    invoke-virtual {p1}, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->getEmoji()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
