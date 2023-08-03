.class Lio/github/rockerhieu/emojicon/f$b;
.super Ljava/lang/Object;
.source "EmojiconsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/rockerhieu/emojicon/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/github/rockerhieu/emojicon/f;


# direct methods
.method constructor <init>(Lio/github/rockerhieu/emojicon/f;)V
    .locals 0

    iput-object p1, p0, Lio/github/rockerhieu/emojicon/f$b;->a:Lio/github/rockerhieu/emojicon/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/rockerhieu/emojicon/f$b;->a:Lio/github/rockerhieu/emojicon/f;

    invoke-static {v0}, Lio/github/rockerhieu/emojicon/f;->V(Lio/github/rockerhieu/emojicon/f;)Lio/github/rockerhieu/emojicon/f$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/github/rockerhieu/emojicon/f$b;->a:Lio/github/rockerhieu/emojicon/f;

    invoke-static {v0}, Lio/github/rockerhieu/emojicon/f;->V(Lio/github/rockerhieu/emojicon/f;)Lio/github/rockerhieu/emojicon/f$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/github/rockerhieu/emojicon/f$d;->onEmojiconBackspaceClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method
