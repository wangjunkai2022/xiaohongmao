.class Lcom/yalantis/ucrop/e$g;
.super Ljava/lang/Object;
.source "UCropFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yalantis/ucrop/e;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/e;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/e$g;->a:Lcom/yalantis/ucrop/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/e$g;->a:Lcom/yalantis/ucrop/e;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/e;->d0(Lcom/yalantis/ucrop/e;I)V

    :cond_0
    return-void
.end method
