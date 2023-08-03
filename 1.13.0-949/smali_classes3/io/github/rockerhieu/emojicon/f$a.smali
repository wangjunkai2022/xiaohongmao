.class Lio/github/rockerhieu/emojicon/f$a;
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
.field final synthetic a:I

.field final synthetic b:Lio/github/rockerhieu/emojicon/f;


# direct methods
.method constructor <init>(Lio/github/rockerhieu/emojicon/f;I)V
    .locals 0

    iput-object p1, p0, Lio/github/rockerhieu/emojicon/f$a;->b:Lio/github/rockerhieu/emojicon/f;

    iput p2, p0, Lio/github/rockerhieu/emojicon/f$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lio/github/rockerhieu/emojicon/f$a;->b:Lio/github/rockerhieu/emojicon/f;

    invoke-static {p1}, Lio/github/rockerhieu/emojicon/f;->U(Lio/github/rockerhieu/emojicon/f;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget v0, p0, Lio/github/rockerhieu/emojicon/f$a;->a:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
