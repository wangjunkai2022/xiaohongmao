.class final Lcom/giphy/sdk/ui/pagination/d$c;
.super Ljava/lang/Object;
.source "NetworkStateItemViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/pagination/d;->i(Lcom/giphy/sdk/ui/pagination/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/giphy/sdk/ui/pagination/NetworkStateItemViewHolder$bindTo$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/pagination/d;

.field final synthetic b:Lcom/giphy/sdk/ui/pagination/c;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/pagination/d;Lcom/giphy/sdk/ui/pagination/c;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/pagination/d$c;->a:Lcom/giphy/sdk/ui/pagination/d;

    iput-object p2, p0, Lcom/giphy/sdk/ui/pagination/d$c;->b:Lcom/giphy/sdk/ui/pagination/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/giphy/sdk/ui/pagination/d$c;->a:Lcom/giphy/sdk/ui/pagination/d;

    invoke-static {p1}, Lcom/giphy/sdk/ui/pagination/d;->f(Lcom/giphy/sdk/ui/pagination/d;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
