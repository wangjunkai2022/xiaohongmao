.class public Lio/github/rockerhieu/emojicon/e;
.super Lio/github/rockerhieu/emojicon/c;
.source "EmojiconRecentsGridFragment.java"

# interfaces
.implements Lio/github/rockerhieu/emojicon/d;


# static fields
.field private static final k:Ljava/lang/String; = "useSystemDefaults"


# instance fields
.field private i:Lio/github/rockerhieu/emojicon/b;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/github/rockerhieu/emojicon/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/github/rockerhieu/emojicon/e;->j:Z

    return-void
.end method

.method protected static Y()Lio/github/rockerhieu/emojicon/e;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lio/github/rockerhieu/emojicon/e;->Z(Z)Lio/github/rockerhieu/emojicon/e;

    move-result-object v0

    return-object v0
.end method

.method protected static Z(Z)Lio/github/rockerhieu/emojicon/e;
    .locals 3

    .line 1
    new-instance v0, Lio/github/rockerhieu/emojicon/e;

    invoke-direct {v0}, Lio/github/rockerhieu/emojicon/e;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "useSystemDefaults"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "useSystemDefaults"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/github/rockerhieu/emojicon/e;->j:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lio/github/rockerhieu/emojicon/e;->j:Z

    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/github/rockerhieu/emojicon/e;->i:Lio/github/rockerhieu/emojicon/b;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->getInstance(Landroid/content/Context;)Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;

    move-result-object p2

    .line 2
    new-instance v0, Lio/github/rockerhieu/emojicon/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lio/github/rockerhieu/emojicon/e;->j:Z

    invoke-direct {v0, v1, p2, v2}, Lio/github/rockerhieu/emojicon/b;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lio/github/rockerhieu/emojicon/e;->i:Lio/github/rockerhieu/emojicon/b;

    .line 3
    sget p2, Lio/github/rockerhieu/emojicon/g$j;->a:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    .line 4
    iget-object p2, p0, Lio/github/rockerhieu/emojicon/e;->i:Lio/github/rockerhieu/emojicon/b;

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public s(Landroid/content/Context;Lio/github/rockerhieu/emojicon/emoji/Emojicon;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->getInstance(Landroid/content/Context;)Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lio/github/rockerhieu/emojicon/EmojiconRecentsManager;->push(Lio/github/rockerhieu/emojicon/emoji/Emojicon;)V

    .line 3
    iget-object p1, p0, Lio/github/rockerhieu/emojicon/e;->i:Lio/github/rockerhieu/emojicon/b;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
